class VersionSo < ActiveRecord::Base

has_many :vulnerability_version_sos
has_many :vulnerabilities, :through => :vulnerability_version_sos

has_many :service_version_sos
has_many :services, :through => :service_version_sos

belongs_to :operative_system

end
