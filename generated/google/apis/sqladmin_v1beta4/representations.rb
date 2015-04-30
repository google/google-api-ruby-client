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

require 'date'
require 'google/apis/core/base_service'
require 'google/apis/core/json_representation'
require 'google/apis/core/hashable'
require 'google/apis/errors'

module Google
  module Apis
    module SqladminV1beta4
      
      class AclEntry
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class BackupConfiguration
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class BackupRun
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ListResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class BinLogCoordinates
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class CloneContext
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class Database
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class DatabaseFlags
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class DatabaseInstance
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class DatabasesListResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ExportContext
        class Representation < Google::Apis::Core::JsonRepresentation; end
        
        class CsvExportOptions
          class Representation < Google::Apis::Core::JsonRepresentation; end
        end
        
        class SqlExportOptions
          class Representation < Google::Apis::Core::JsonRepresentation; end
        end
      end
      
      class Flag
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class FlagsListResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ImportContext
        class Representation < Google::Apis::Core::JsonRepresentation; end
        
        class CsvImportOptions
          class Representation < Google::Apis::Core::JsonRepresentation; end
        end
      end
      
      class CloneRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ExportRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ImportRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class InstancesListResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class RestoreBackupRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class IpConfiguration
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class IpMapping
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class LocationPreference
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class MySqlReplicaConfiguration
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class OnPremisesConfiguration
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class Operation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class OperationError
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class OperationErrors
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class OperationsListResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ReplicaConfiguration
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class RestoreBackupContext
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class Settings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class SslCert
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class SslCertDetail
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class InsertRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class InsertResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class SslCertsListResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class Tier
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class TiersListResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class User
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class UsersListResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      # @private
      class AclEntry
        class Representation < Google::Apis::Core::JsonRepresentation
          property :expiration_time, as: 'expirationTime', type: DateTime
      
          property :kind, as: 'kind'
          property :name, as: 'name'
          property :value, as: 'value'
        end
      end
      
      # @private
      class BackupConfiguration
        class Representation < Google::Apis::Core::JsonRepresentation
          property :binary_log_enabled, as: 'binaryLogEnabled'
          property :enabled, as: 'enabled'
          property :kind, as: 'kind'
          property :start_time, as: 'startTime'
        end
      end
      
      # @private
      class BackupRun
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_time, as: 'endTime', type: DateTime
      
          property :enqueued_time, as: 'enqueuedTime', type: DateTime
      
          property :error, as: 'error', class: Google::Apis::SqladminV1beta4::OperationError, decorator: Google::Apis::SqladminV1beta4::OperationError::Representation
      
          property :id, as: 'id'
          property :instance, as: 'instance'
          property :kind, as: 'kind'
          property :self_link, as: 'selfLink'
          property :start_time, as: 'startTime', type: DateTime
      
          property :status, as: 'status'
          property :window_start_time, as: 'windowStartTime', type: DateTime
      
        end
      end
      
      # @private
      class ListResponse
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :items, as: 'items', class: Google::Apis::SqladminV1beta4::BackupRun, decorator: Google::Apis::SqladminV1beta4::BackupRun::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      # @private
      class BinLogCoordinates
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bin_log_file_name, as: 'binLogFileName'
          property :bin_log_position, as: 'binLogPosition'
          property :kind, as: 'kind'
        end
      end
      
      # @private
      class CloneContext
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bin_log_coordinates, as: 'binLogCoordinates', class: Google::Apis::SqladminV1beta4::BinLogCoordinates, decorator: Google::Apis::SqladminV1beta4::BinLogCoordinates::Representation
      
          property :destination_instance_name, as: 'destinationInstanceName'
          property :kind, as: 'kind'
        end
      end
      
      # @private
      class Database
        class Representation < Google::Apis::Core::JsonRepresentation
          property :charset, as: 'charset'
          property :collation, as: 'collation'
          property :etag, as: 'etag'
          property :instance, as: 'instance'
          property :kind, as: 'kind'
          property :name, as: 'name'
          property :project, as: 'project'
          property :self_link, as: 'selfLink'
        end
      end
      
      # @private
      class DatabaseFlags
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :value, as: 'value'
        end
      end
      
      # @private
      class DatabaseInstance
        class Representation < Google::Apis::Core::JsonRepresentation
          property :current_disk_size, as: 'currentDiskSize'
          property :database_version, as: 'databaseVersion'
          property :etag, as: 'etag'
          property :instance_type, as: 'instanceType'
          collection :ip_addresses, as: 'ipAddresses', class: Google::Apis::SqladminV1beta4::IpMapping, decorator: Google::Apis::SqladminV1beta4::IpMapping::Representation
      
          property :ipv6_address, as: 'ipv6Address'
          property :kind, as: 'kind'
          property :master_instance_name, as: 'masterInstanceName'
          property :max_disk_size, as: 'maxDiskSize'
          property :name, as: 'name'
          property :on_premises_configuration, as: 'onPremisesConfiguration', class: Google::Apis::SqladminV1beta4::OnPremisesConfiguration, decorator: Google::Apis::SqladminV1beta4::OnPremisesConfiguration::Representation
      
          property :project, as: 'project'
          property :region, as: 'region'
          property :replica_configuration, as: 'replicaConfiguration', class: Google::Apis::SqladminV1beta4::ReplicaConfiguration, decorator: Google::Apis::SqladminV1beta4::ReplicaConfiguration::Representation
      
          collection :replica_names, as: 'replicaNames'
          property :self_link, as: 'selfLink'
          property :server_ca_cert, as: 'serverCaCert', class: Google::Apis::SqladminV1beta4::SslCert, decorator: Google::Apis::SqladminV1beta4::SslCert::Representation
      
          property :service_account_email_address, as: 'serviceAccountEmailAddress'
          property :settings, as: 'settings', class: Google::Apis::SqladminV1beta4::Settings, decorator: Google::Apis::SqladminV1beta4::Settings::Representation
      
          property :state, as: 'state'
        end
      end
      
      # @private
      class DatabasesListResponse
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :items, as: 'items', class: Google::Apis::SqladminV1beta4::Database, decorator: Google::Apis::SqladminV1beta4::Database::Representation
      
          property :kind, as: 'kind'
        end
      end
      
      # @private
      class ExportContext
        class Representation < Google::Apis::Core::JsonRepresentation
          property :csv_export_options, as: 'csvExportOptions', class: Google::Apis::SqladminV1beta4::ExportContext::CsvExportOptions, decorator: Google::Apis::SqladminV1beta4::ExportContext::CsvExportOptions::Representation
      
          collection :databases, as: 'databases'
          property :file_type, as: 'fileType'
          property :kind, as: 'kind'
          property :sql_export_options, as: 'sqlExportOptions', class: Google::Apis::SqladminV1beta4::ExportContext::SqlExportOptions, decorator: Google::Apis::SqladminV1beta4::ExportContext::SqlExportOptions::Representation
      
          property :uri, as: 'uri'
        end
        
        # @private
        class CsvExportOptions
          class Representation < Google::Apis::Core::JsonRepresentation
            property :select_query, as: 'selectQuery'
          end
        end
        
        # @private
        class SqlExportOptions
          class Representation < Google::Apis::Core::JsonRepresentation
            collection :tables, as: 'tables'
          end
        end
      end
      
      # @private
      class Flag
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :allowed_string_values, as: 'allowedStringValues'
          collection :applies_to, as: 'appliesTo'
          property :kind, as: 'kind'
          property :max_value, as: 'maxValue'
          property :min_value, as: 'minValue'
          property :name, as: 'name'
          property :type, as: 'type'
        end
      end
      
      # @private
      class FlagsListResponse
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :items, as: 'items', class: Google::Apis::SqladminV1beta4::Flag, decorator: Google::Apis::SqladminV1beta4::Flag::Representation
      
          property :kind, as: 'kind'
        end
      end
      
      # @private
      class ImportContext
        class Representation < Google::Apis::Core::JsonRepresentation
          property :csv_import_options, as: 'csvImportOptions', class: Google::Apis::SqladminV1beta4::ImportContext::CsvImportOptions, decorator: Google::Apis::SqladminV1beta4::ImportContext::CsvImportOptions::Representation
      
          property :database, as: 'database'
          property :file_type, as: 'fileType'
          property :kind, as: 'kind'
          property :uri, as: 'uri'
        end
        
        # @private
        class CsvImportOptions
          class Representation < Google::Apis::Core::JsonRepresentation
            collection :columns, as: 'columns'
            property :table, as: 'table'
          end
        end
      end
      
      # @private
      class CloneRequest
        class Representation < Google::Apis::Core::JsonRepresentation
          property :clone_context, as: 'cloneContext', class: Google::Apis::SqladminV1beta4::CloneContext, decorator: Google::Apis::SqladminV1beta4::CloneContext::Representation
      
        end
      end
      
      # @private
      class ExportRequest
        class Representation < Google::Apis::Core::JsonRepresentation
          property :export_context, as: 'exportContext', class: Google::Apis::SqladminV1beta4::ExportContext, decorator: Google::Apis::SqladminV1beta4::ExportContext::Representation
      
        end
      end
      
      # @private
      class ImportRequest
        class Representation < Google::Apis::Core::JsonRepresentation
          property :import_context, as: 'importContext', class: Google::Apis::SqladminV1beta4::ImportContext, decorator: Google::Apis::SqladminV1beta4::ImportContext::Representation
      
        end
      end
      
      # @private
      class InstancesListResponse
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :items, as: 'items', class: Google::Apis::SqladminV1beta4::DatabaseInstance, decorator: Google::Apis::SqladminV1beta4::DatabaseInstance::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      # @private
      class RestoreBackupRequest
        class Representation < Google::Apis::Core::JsonRepresentation
          property :restore_backup_context, as: 'restoreBackupContext', class: Google::Apis::SqladminV1beta4::RestoreBackupContext, decorator: Google::Apis::SqladminV1beta4::RestoreBackupContext::Representation
      
        end
      end
      
      # @private
      class IpConfiguration
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :authorized_networks, as: 'authorizedNetworks', class: Google::Apis::SqladminV1beta4::AclEntry, decorator: Google::Apis::SqladminV1beta4::AclEntry::Representation
      
          property :ipv4_enabled, as: 'ipv4Enabled'
          property :require_ssl, as: 'requireSsl'
        end
      end
      
      # @private
      class IpMapping
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ip_address, as: 'ipAddress'
          property :time_to_retire, as: 'timeToRetire', type: DateTime
      
        end
      end
      
      # @private
      class LocationPreference
        class Representation < Google::Apis::Core::JsonRepresentation
          property :follow_gae_application, as: 'followGaeApplication'
          property :kind, as: 'kind'
          property :zone, as: 'zone'
        end
      end
      
      # @private
      class MySqlReplicaConfiguration
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ca_certificate, as: 'caCertificate'
          property :client_certificate, as: 'clientCertificate'
          property :client_key, as: 'clientKey'
          property :connect_retry_interval, as: 'connectRetryInterval'
          property :dump_file_path, as: 'dumpFilePath'
          property :kind, as: 'kind'
          property :master_heartbeat_period, as: 'masterHeartbeatPeriod'
          property :password, as: 'password'
          property :ssl_cipher, as: 'sslCipher'
          property :username, as: 'username'
          property :verify_server_certificate, as: 'verifyServerCertificate'
        end
      end
      
      # @private
      class OnPremisesConfiguration
        class Representation < Google::Apis::Core::JsonRepresentation
          property :host_port, as: 'hostPort'
          property :kind, as: 'kind'
        end
      end
      
      # @private
      class Operation
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_time, as: 'endTime', type: DateTime
      
          property :error, as: 'error', class: Google::Apis::SqladminV1beta4::OperationErrors, decorator: Google::Apis::SqladminV1beta4::OperationErrors::Representation
      
          property :export_context, as: 'exportContext', class: Google::Apis::SqladminV1beta4::ExportContext, decorator: Google::Apis::SqladminV1beta4::ExportContext::Representation
      
          property :import_context, as: 'importContext', class: Google::Apis::SqladminV1beta4::ImportContext, decorator: Google::Apis::SqladminV1beta4::ImportContext::Representation
      
          property :insert_time, as: 'insertTime', type: DateTime
      
          property :kind, as: 'kind'
          property :name, as: 'name'
          property :operation_type, as: 'operationType'
          property :self_link, as: 'selfLink'
          property :start_time, as: 'startTime', type: DateTime
      
          property :status, as: 'status'
          property :target_id, as: 'targetId'
          property :target_link, as: 'targetLink'
          property :target_project, as: 'targetProject'
          property :user, as: 'user'
        end
      end
      
      # @private
      class OperationError
        class Representation < Google::Apis::Core::JsonRepresentation
          property :code, as: 'code'
          property :kind, as: 'kind'
          property :message, as: 'message'
        end
      end
      
      # @private
      class OperationErrors
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :errors, as: 'errors', class: Google::Apis::SqladminV1beta4::OperationError, decorator: Google::Apis::SqladminV1beta4::OperationError::Representation
      
          property :kind, as: 'kind'
        end
      end
      
      # @private
      class OperationsListResponse
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :items, as: 'items', class: Google::Apis::SqladminV1beta4::Operation, decorator: Google::Apis::SqladminV1beta4::Operation::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      # @private
      class ReplicaConfiguration
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kind, as: 'kind'
          property :mysql_replica_configuration, as: 'mysqlReplicaConfiguration', class: Google::Apis::SqladminV1beta4::MySqlReplicaConfiguration, decorator: Google::Apis::SqladminV1beta4::MySqlReplicaConfiguration::Representation
      
        end
      end
      
      # @private
      class RestoreBackupContext
        class Representation < Google::Apis::Core::JsonRepresentation
          property :backup_run_id, as: 'backupRunId'
          property :kind, as: 'kind'
        end
      end
      
      # @private
      class Settings
        class Representation < Google::Apis::Core::JsonRepresentation
          property :activation_policy, as: 'activationPolicy'
          collection :authorized_gae_applications, as: 'authorizedGaeApplications'
          property :backup_configuration, as: 'backupConfiguration', class: Google::Apis::SqladminV1beta4::BackupConfiguration, decorator: Google::Apis::SqladminV1beta4::BackupConfiguration::Representation
      
          property :crash_safe_replication_enabled, as: 'crashSafeReplicationEnabled'
          collection :database_flags, as: 'databaseFlags', class: Google::Apis::SqladminV1beta4::DatabaseFlags, decorator: Google::Apis::SqladminV1beta4::DatabaseFlags::Representation
      
          property :database_replication_enabled, as: 'databaseReplicationEnabled'
          property :ip_configuration, as: 'ipConfiguration', class: Google::Apis::SqladminV1beta4::IpConfiguration, decorator: Google::Apis::SqladminV1beta4::IpConfiguration::Representation
      
          property :kind, as: 'kind'
          property :location_preference, as: 'locationPreference', class: Google::Apis::SqladminV1beta4::LocationPreference, decorator: Google::Apis::SqladminV1beta4::LocationPreference::Representation
      
          property :pricing_plan, as: 'pricingPlan'
          property :replication_type, as: 'replicationType'
          property :settings_version, as: 'settingsVersion'
          property :tier, as: 'tier'
        end
      end
      
      # @private
      class SslCert
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cert, as: 'cert'
          property :cert_serial_number, as: 'certSerialNumber'
          property :common_name, as: 'commonName'
          property :create_time, as: 'createTime', type: DateTime
      
          property :expiration_time, as: 'expirationTime', type: DateTime
      
          property :instance, as: 'instance'
          property :kind, as: 'kind'
          property :self_link, as: 'selfLink'
          property :sha1_fingerprint, as: 'sha1Fingerprint'
        end
      end
      
      # @private
      class SslCertDetail
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cert_info, as: 'certInfo', class: Google::Apis::SqladminV1beta4::SslCert, decorator: Google::Apis::SqladminV1beta4::SslCert::Representation
      
          property :cert_private_key, as: 'certPrivateKey'
        end
      end
      
      # @private
      class InsertRequest
        class Representation < Google::Apis::Core::JsonRepresentation
          property :common_name, as: 'commonName'
        end
      end
      
      # @private
      class InsertResponse
        class Representation < Google::Apis::Core::JsonRepresentation
          property :client_cert, as: 'clientCert', class: Google::Apis::SqladminV1beta4::SslCertDetail, decorator: Google::Apis::SqladminV1beta4::SslCertDetail::Representation
      
          property :kind, as: 'kind'
          property :server_ca_cert, as: 'serverCaCert', class: Google::Apis::SqladminV1beta4::SslCert, decorator: Google::Apis::SqladminV1beta4::SslCert::Representation
      
        end
      end
      
      # @private
      class SslCertsListResponse
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :items, as: 'items', class: Google::Apis::SqladminV1beta4::SslCert, decorator: Google::Apis::SqladminV1beta4::SslCert::Representation
      
          property :kind, as: 'kind'
        end
      end
      
      # @private
      class Tier
        class Representation < Google::Apis::Core::JsonRepresentation
          property :disk_quota, as: 'DiskQuota'
          property :ram, as: 'RAM'
          property :kind, as: 'kind'
          collection :region, as: 'region'
          property :tier, as: 'tier'
        end
      end
      
      # @private
      class TiersListResponse
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :items, as: 'items', class: Google::Apis::SqladminV1beta4::Tier, decorator: Google::Apis::SqladminV1beta4::Tier::Representation
      
          property :kind, as: 'kind'
        end
      end
      
      # @private
      class User
        class Representation < Google::Apis::Core::JsonRepresentation
          property :etag, as: 'etag'
          property :host, as: 'host'
          property :instance, as: 'instance'
          property :kind, as: 'kind'
          property :name, as: 'name'
          property :password, as: 'password'
          property :project, as: 'project'
        end
      end
      
      # @private
      class UsersListResponse
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :items, as: 'items', class: Google::Apis::SqladminV1beta4::User, decorator: Google::Apis::SqladminV1beta4::User::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
        end
      end
    end
  end
end
