class ServiceVersionSo < ActiveRecord::Base

belongs_to :service, class_name: "Service", foreign_key: "service_id"
belongs_to :version_so, class_name: "VersionSo", foreign_key: "version_so_id"



end
