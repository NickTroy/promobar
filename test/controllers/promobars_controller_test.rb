require 'test_helper'

class PromobarsControllerTest < ActionController::TestCase
  setup do
    @promobar = promobars(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:promobars)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create promobar" do
    assert_difference('Promobar.count') do
      post :create, promobar: { bar_background_color: @promobar.bar_background_color, bar_background_opacity: @promobar.bar_background_opacity, bar_font: @promobar.bar_font, bar_font_size: @promobar.bar_font_size, bar_leading: @promobar.bar_leading, bar_text: @promobar.bar_text, bar_text_color: @promobar.bar_text_color, bar_text_formatting: @promobar.bar_text_formatting, bar_tracking: @promobar.bar_tracking, bar_type: @promobar.bar_type }
    end

    assert_redirected_to promobar_path(assigns(:promobar))
  end

  test "should show promobar" do
    get :show, id: @promobar
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @promobar
    assert_response :success
  end

  test "should update promobar" do
    patch :update, id: @promobar, promobar: { bar_background_color: @promobar.bar_background_color, bar_background_opacity: @promobar.bar_background_opacity, bar_font: @promobar.bar_font, bar_font_size: @promobar.bar_font_size, bar_leading: @promobar.bar_leading, bar_text: @promobar.bar_text, bar_text_color: @promobar.bar_text_color, bar_text_formatting: @promobar.bar_text_formatting, bar_tracking: @promobar.bar_tracking, bar_type: @promobar.bar_type }
    assert_redirected_to promobar_path(assigns(:promobar))
  end

  test "should destroy promobar" do
    assert_difference('Promobar.count', -1) do
      delete :destroy, id: @promobar
    end

    assert_redirected_to promobars_path
  end
end
