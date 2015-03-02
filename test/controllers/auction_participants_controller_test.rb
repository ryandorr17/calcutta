require 'test_helper'

class AuctionParticipantsControllerTest < ActionController::TestCase
  setup do
    @auction_participant = auction_participants(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:auction_participants)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create auction_participant" do
    assert_difference('AuctionParticipant.count') do
      post :create, auction_participant: {  }
    end

    assert_redirected_to auction_participant_path(assigns(:auction_participant))
  end

  test "should show auction_participant" do
    get :show, id: @auction_participant
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @auction_participant
    assert_response :success
  end

  test "should update auction_participant" do
    patch :update, id: @auction_participant, auction_participant: {  }
    assert_redirected_to auction_participant_path(assigns(:auction_participant))
  end

  test "should destroy auction_participant" do
    assert_difference('AuctionParticipant.count', -1) do
      delete :destroy, id: @auction_participant
    end

    assert_redirected_to auction_participants_path
  end
end
