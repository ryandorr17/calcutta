class AuctionParticipantsController < ApplicationController
  before_action :set_auction_participant, only: [:show, :edit, :update, :destroy]

  # GET /auction_participants
  # GET /auction_participants.json
  def index
    @auction_participants = AuctionParticipant.all
  end

  # GET /auction_participants/1
  # GET /auction_participants/1.json
  def show
  end

  # GET /auction_participants/new
  def new
    @auction_participant = AuctionParticipant.new
  end

  # GET /auction_participants/1/edit
  def edit
  end

  # POST /auction_participants
  # POST /auction_participants.json
  def create
    @auction_participant = AuctionParticipant.new(auction_participant_params)

    respond_to do |format|
      if @auction_participant.save
        format.html { redirect_to @auction_participant, notice: 'Auction participant was successfully created.' }
        format.json { render :show, status: :created, location: @auction_participant }
      else
        format.html { render :new }
        format.json { render json: @auction_participant.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /auction_participants/1
  # PATCH/PUT /auction_participants/1.json
  def update
    respond_to do |format|
      if @auction_participant.update(auction_participant_params)
        format.html { redirect_to @auction_participant, notice: 'Auction participant was successfully updated.' }
        format.json { render :show, status: :ok, location: @auction_participant }
      else
        format.html { render :edit }
        format.json { render json: @auction_participant.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /auction_participants/1
  # DELETE /auction_participants/1.json
  def destroy
    @auction_participant.destroy
    respond_to do |format|
      format.html { redirect_to auction_participants_url, notice: 'Auction participant was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_auction_participant
      @auction_participant = AuctionParticipant.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def auction_participant_params
      params[:auction_participant].permit(:auction_id, :user_id, :owner_flag)
    end
end
