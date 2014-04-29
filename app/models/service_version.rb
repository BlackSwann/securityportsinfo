class ServiceVersion < ActiveRecord::Base

belongs_to :service, class_name: "Service", foreign_key: "service_id"
has_many :vulnerabilitys



end
