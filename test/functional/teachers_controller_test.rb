require 'test_helper'

class TeachersControllerTest < ActionController::TestCase
  setup do
    @teacher = teachers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:teachers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create teacher" do
    assert_difference('Teacher.count') do
      post :create, teacher: { apmat: @teacher.apmat, appat: @teacher.appat, comentario: @teacher.comentario, direccion: @teacher.direccion, fecha_nac: @teacher.fecha_nac, nombre: @teacher.nombre, rfc_fis: @teacher.rfc_fis, tel_fis: @teacher.tel_fis, telefono1: @teacher.telefono1, telefono2: @teacher.telefono2, telefono3: @teacher.telefono3, user_id: @teacher.user_id }
    end

    assert_redirected_to teacher_path(assigns(:teacher))
  end

  test "should show teacher" do
    get :show, id: @teacher
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @teacher
    assert_response :success
  end

  test "should update teacher" do
    put :update, id: @teacher, teacher: { apmat: @teacher.apmat, appat: @teacher.appat, comentario: @teacher.comentario, direccion: @teacher.direccion, fecha_nac: @teacher.fecha_nac, nombre: @teacher.nombre, rfc_fis: @teacher.rfc_fis, tel_fis: @teacher.tel_fis, telefono1: @teacher.telefono1, telefono2: @teacher.telefono2, telefono3: @teacher.telefono3, user_id: @teacher.user_id }
    assert_redirected_to teacher_path(assigns(:teacher))
  end

  test "should destroy teacher" do
    assert_difference('Teacher.count', -1) do
      delete :destroy, id: @teacher
    end

    assert_redirected_to teachers_path
  end
end
