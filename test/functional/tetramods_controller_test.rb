require 'test_helper'

class TetramodsControllerTest < ActionController::TestCase
  setup do
    @tetramod = tetramods(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tetramods)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tetramod" do
    assert_difference('Tetramod.count') do
      post :create, tetramod: { clave: @tetramod.clave, descripcion: @tetramod.descripcion, orden_tetramod: @tetramod.orden_tetramod }
    end

    assert_redirected_to tetramod_path(assigns(:tetramod))
  end

  test "should show tetramod" do
    get :show, id: @tetramod
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tetramod
    assert_response :success
  end

  test "should update tetramod" do
    put :update, id: @tetramod, tetramod: { clave: @tetramod.clave, descripcion: @tetramod.descripcion, orden_tetramod: @tetramod.orden_tetramod }
    assert_redirected_to tetramod_path(assigns(:tetramod))
  end

  test "should destroy tetramod" do
    assert_difference('Tetramod.count', -1) do
      delete :destroy, id: @tetramod
    end

    assert_redirected_to tetramods_path
  end
end
