class TopController < ApplicationController
  def index
    @rooms = Room.search(params[:search])
  end
end