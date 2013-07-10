require 'test_helper'

class CastingsControllerTest < ActionController::TestCase
  setup do
    @casting = castings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:castings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create casting" do
    assert_difference('Casting.count') do
      post :create, casting: { actor_id: @casting.actor_id, character_id: @casting.character_id, movie_id: @casting.movie_id }
    end

    assert_redirected_to casting_path(assigns(:casting))
  end

  test "should show casting" do
    get :show, id: @casting
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @casting
    assert_response :success
  end

  test "should update casting" do
    put :update, id: @casting, casting: { actor_id: @casting.actor_id, character_id: @casting.character_id, movie_id: @casting.movie_id }
    assert_redirected_to casting_path(assigns(:casting))
  end

  test "should destroy casting" do
    assert_difference('Casting.count', -1) do
      delete :destroy, id: @casting
    end

    assert_redirected_to castings_path
  end
end
