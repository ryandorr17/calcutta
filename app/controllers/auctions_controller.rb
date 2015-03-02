class AuctionsController < ApplicationController

  def new
    @auction = Auction.new
  end

  def show
    @auction = Auction.find(params[:id])
  end

  def create
    @auction = Auction.new(auction_params)
    if @auction.save
      flash[:success] = "Thanks for creating an auction"
      redirect_to @auction
    else
      render 'new'
    end
  end

  def index
    @auctions = Auction.all
  end


  private

  def auction_params
    params.require(:auction).permit(:name, :number_participants, :start, :event_id, :soft_cap)
  end



end
