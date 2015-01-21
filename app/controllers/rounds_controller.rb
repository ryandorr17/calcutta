class RoundsController < ApplicationController

  def create
    @event = Event.find(params[:event_id])
    @round = @event.rounds.create(round_params)
    redirect_to event_path(@event)
  end

  def destroy
    @event = Event.find(params[:event_id])
    @round = @event.rounds.find(params[:id])
    @round.destroy
    redirect_to event_path(@event)
  end

  private
    def round_params
      params.require(:round).permit(:name, :order, :payout)
    end


end
