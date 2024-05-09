module Api
  class UsersController < ApplicationController
    FILE_PATH = "DevChallenge/data/users.json"

    def show
      parser = JsonParser.new(FILE_PATH)
      render json: {username: parser.find_user(params[:id])}
    end
  end
end
