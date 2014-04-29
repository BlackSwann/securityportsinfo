class PortService < ActiveRecord::Base
#attr_accessible :port_id, :class_name "Port", :foreign_key "port_id"
#attr_accessible :service_id, :class_name "Service", :foreign_key "service_id"

belongs_to :port, class_name: "Port", foreign_key: "port_id"
belongs_to :service, class_name: "Service", foreign_key: "service_id"



end
