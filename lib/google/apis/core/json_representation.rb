# Copyright 2015 Google Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

require 'representable/json'
require 'representable/json/hash'
require 'representable/coercion'

module Google
  module Apis
    module Core

      # Support for serializing hashes + propery value/nil/unset tracking
      # To be included in representers as a feature.
      # @private
      module JsonRepresentationSupport
        def self.included(base)
          base.extend(JsonSupport)
        end

        # @private
        module JsonSupport
          # Returns a customized getter function for Representable. Allows
          # indifferent hash/attribute access.
          #
          # @param [String] name Property name
          # @return [Proc]
          def getter_fn(name)
            ivar_name = "@#{name}".to_sym
            lambda do |_|
              if respond_to?(:[])
                self[name] || instance_variable_get(ivar_name)
              else
                instance_variable_get(ivar_name)
              end
            end
          end

          # Returns a customized function for Representable that checks whether or not
          # an attribute should be serialized. Allows proper patch semantics by distinguishing
          # between nil & unset values
          #
          # @param [String] name Property name
          # @return [Proc]
          def if_fn(name)
            ivar_name = "@#{name}".to_sym
            lambda do |opts|
              if opts[:skip_undefined]
                if respond_to?(:key?)
                  self.key?(name) || instance_variable_defined?(ivar_name)
                else
                  instance_variable_defined?(ivar_name)
                end
              else
                true
              end
            end
          end

          def set_default_options(name, options)
            options[:render_nil] = true
            options[:getter] = getter_fn(name)
            options[:if] = if_fn(name)
          end

          # Define a single value property
          #
          # @param [String] name
          #  Property name
          # @param [Hash] options
          def property(name, options = {})
            set_default_options(name, options)
            super(name, options)
          end

          # Define a collection property
          #
          # @param [String] name
          #  Property name
          # @param [Hash] options
          def collection(name, options = {})
            set_default_options(name, options)
            super(name, options)
          end

          # Define a hash property
          #
          # @param [String] name
          #  Property name
          # @param [Hash] options
          def hash(name, options)
            set_default_options(name, options)
            super(name, options)
          end
        end
      end

      # Base decorator for JSON representers
      #
      # @see https://github.com/apotonick/representable
      class JsonRepresentation < Representable::Decorator
        include Representable::JSON
        include Representable::Coercion
        feature JsonRepresentationSupport
      end
    end
  end
end
