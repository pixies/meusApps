require 'test_helper'

class RegrasControllerTest < ActionController::TestCase
  setup do
    @regra = regras(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:regras)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create regra" do
    assert_difference('Regra.count') do
      post :create, regra: { descricao: @regra.descricao, regra: @regra.regra }
    end

    assert_redirected_to regra_path(assigns(:regra))
  end

  test "should show regra" do
    get :show, id: @regra
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @regra
    assert_response :success
  end

  test "should update regra" do
    patch :update, id: @regra, regra: { descricao: @regra.descricao, regra: @regra.regra }
    assert_redirected_to regra_path(assigns(:regra))
  end

  test "should destroy regra" do
    assert_difference('Regra.count', -1) do
      delete :destroy, id: @regra
    end

    assert_redirected_to regras_path
  end
end
