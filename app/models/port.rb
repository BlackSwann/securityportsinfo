class Port < ActiveRecord::Base
#attr_accessible :number, :desciption

has_many :port_services
has_many :services, :through => :port_services


end
