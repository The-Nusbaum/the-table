require 'test_helper'

class PlayersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @player = players(:one)
    host! "localhost"
  end

  test "should get index" do
    get players_url
    assert_response :success
  end

  test "should create player" do
    assert_difference('Player.count') do
      post players_url, params: { player: { thingy: 0 } }
    end

    assert_response :success
  end

  test "should show player" do
    get player_url(@player)
    assert_response :success
  end

  test "should update player" do
    patch player_url(@player), params: { player: { thingy: @player.thingy } }
    assert_response :success
  end

  test "should destroy player" do
    assert_difference('Player.count', -1) do
      delete player_url(@player)
    end

    assert_response :success
  end
end
