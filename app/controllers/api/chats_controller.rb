module Api
  class ChatsController < ApplicationController
    FILE_PATH = "/Users/dev/Downloads/DevChallenge/data/messages.json"

    def show
      parser = JsonParser.new(FILE_PATH)
      render json: parser.msgs_by_chat_id(params[:id])
    end
  end
end
