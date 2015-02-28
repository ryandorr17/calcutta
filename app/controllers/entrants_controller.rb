class EntrantsController < ApplicationController
  def create
    @event = Event.find(params[:event_id])
    @entrant = @event.entrants.create(entrant_params)
    redirect_to event_path(@event)
  end

  def destroy
    @event = Event.find(params[:event_id])
    @entrant = @event.entrants.find(params[:id])
    @entrant.destroy
    redirect_to event_path(@event)
  end

  private
    def entrant_params
      params.require(:entrant).permit(:name, :order, :seed)
    end
end
