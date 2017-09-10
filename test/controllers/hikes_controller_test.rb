require 'test_helper'

class HikesControllerTest < ActionController::TestCase
  setup do
    @hike = hikes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hikes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hike" do
    assert_difference('Hike.count') do
      post :create, hike: { completed: @hike.completed, description: @hike.description, difficulty: @hike.difficulty, distance: @hike.distance, image: @hike.image, link: @hike.link, region: @hike.region, title: @hike.title }
    end

    assert_redirected_to hike_path(assigns(:hike))
  end

  test "should show hike" do
    get :show, id: @hike
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hike
    assert_response :success
  end

  test "should update hike" do
    patch :update, id: @hike, hike: { completed: @hike.completed, description: @hike.description, difficulty: @hike.difficulty, distance: @hike.distance, image: @hike.image, link: @hike.link, region: @hike.region, title: @hike.title }
    assert_redirected_to hike_path(assigns(:hike))
  end

  test "should destroy hike" do
    assert_difference('Hike.count', -1) do
      delete :destroy, id: @hike
    end

    assert_redirected_to hikes_path
  end
end
