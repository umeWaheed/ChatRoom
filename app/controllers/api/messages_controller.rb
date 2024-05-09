module Api
  class MessagesController < ApplicationController
    FILE_PATH = "/Users/dev/Downloads/DevChallenge/data/messages.json"

    def show
      parser = JsonParser.new(FILE_PATH)
      render json: {message: parser.msg_by_id(params[:id])}
    end
  end
end
