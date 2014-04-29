json.array!(@commands) do |command|
  json.extract! command, :id, :instruction, :description, :vulnerability_id, :tool_id
  json.url command_url(command, format: :json)
end
