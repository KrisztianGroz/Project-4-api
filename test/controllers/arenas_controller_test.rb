require 'test_helper'

class ArenasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @arena = arenas(:one)
  end

  test "should get index" do
    get arenas_url, as: :json
    assert_response :success
  end

  test "should create arena" do
    assert_difference('Arena.count') do
      post arenas_url, params: { arena: { event: @arena.event, image: @arena.image, intro: @arena.intro, location: @arena.location, name: @arena.name, user_id: @arena.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show arena" do
    get arena_url(@arena), as: :json
    assert_response :success
  end

  test "should update arena" do
    patch arena_url(@arena), params: { arena: { event: @arena.event, image: @arena.image, intro: @arena.intro, location: @arena.location, name: @arena.name, user_id: @arena.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy arena" do
    assert_difference('Arena.count', -1) do
      delete arena_url(@arena), as: :json
    end

    assert_response 204
  end
end
