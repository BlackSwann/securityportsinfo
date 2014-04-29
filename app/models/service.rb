class Service < ActiveRecord::Base
#	attr_accessible :nombre, :descipcion

        belongs_to :type_of_service, class_name: "TypeOfService", foreign_key: "type_of_service_id"
        has_many :service_versions
        has_many :vulnerabilities
        has_many :port_services

	has_many :service_version_sos

        has_many :ports, :through => :port_services
        has_many :version_sos, :through => :service_version_sos




end
