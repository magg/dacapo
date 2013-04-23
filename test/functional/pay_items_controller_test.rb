require 'test_helper'

class PayItemsControllerTest < ActionController::TestCase
  setup do
    @pay_item = pay_items(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pay_items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pay_item" do
    assert_difference('PayItem.count') do
      post :create, pay_item: { cant: @pay_item.cant, consec: @pay_item.consec, cost_id: @pay_item.cost_id, importe: @pay_item.importe, payment_id: @pay_item.payment_id }
    end

    assert_redirected_to pay_item_path(assigns(:pay_item))
  end

  test "should show pay_item" do
    get :show, id: @pay_item
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pay_item
    assert_response :success
  end

  test "should update pay_item" do
    put :update, id: @pay_item, pay_item: { cant: @pay_item.cant, consec: @pay_item.consec, cost_id: @pay_item.cost_id, importe: @pay_item.importe, payment_id: @pay_item.payment_id }
    assert_redirected_to pay_item_path(assigns(:pay_item))
  end

  test "should destroy pay_item" do
    assert_difference('PayItem.count', -1) do
      delete :destroy, id: @pay_item
    end

    assert_redirected_to pay_items_path
  end
end
