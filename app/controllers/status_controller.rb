class StatusController < ApplicationController

  def index
    render json: {
      title: "ToDo API",
      status: :ok
    }
  end

end
