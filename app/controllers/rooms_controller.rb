class RoomsController < ApplicationController
  before_action :set_room, only: [:show, :destroy]

  def new
    @room = Room.new
  end

  def create
    @room = Room.new(room_params)
    if @room.save
      redirect_to root_url
    else
      render "new"
    end
  end

  def show
  end

  def destroy
    if @room.destroy
      redirect_to root_url
    else
      render :show
    end
  end

  private
    def room_params
      params.require(:room).permit(:title).merge(user_id: current_user.id)
    end

    def set_room
      @room = Room.find_by(id: params[:id])
    end
end
