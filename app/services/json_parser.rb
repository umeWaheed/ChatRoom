class JsonParser
  attr_accessor :data

  def initialize(file_path)
    file = File.read(file_path)
    @data = JSON.parse(file)
  end

  def find_user(id)
    @data.find {|m| m["id"] == id.to_i}&.dig("username")
  end

  def msgs_by_chat_id(id)
    messages = []
    @data.each do |record|
     if record["chatid"] == id.to_i
        messages.push(record["message"])
     end
    end
    messages
  end

  def msg_by_id(id)
    @data.find {|m| m["id"] == id.to_i}&.dig("message")
  end
end
