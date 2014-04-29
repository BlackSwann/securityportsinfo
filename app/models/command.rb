class Command < ActiveRecord::Base
belongs_to :vulnerability, class_name: "Vulnerability", foreign_key: "vulnerability_id"

belongs_to :tool, class_name: "Tool", foreign_key: "tool_id"

end
