class TalksController < ApplicationController
  before_action :set_room, only: [:create, :destroy]

  def create
    @talk = Talk.new(talk_params)

    if @talk.save
      redirect_to @room
    else
      render :new
    end
  end

  def destroy
    @talk = Talk.find_by(id: params[:id])
    if @talk.destroy
      redirect_to @room
    else
      render template: "rooms/show"
    end
  end

  private

    def talk_params
      params.require(:talk).permit(:title, :room_id).merge(user_id: current_user.id)
    end

    def set_room
      @room = Room.find_by(id: params[:room_id])
    end
end
