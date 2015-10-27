require 'test_helper'

class ButtonsControllerTest < ActionController::TestCase
  setup do
    @button = buttons(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:buttons)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create button" do
    assert_difference('Button.count') do
      post :create, button: { bar_aligment: @button.bar_aligment, bar_position: @button.bar_position, bar_size: @button.bar_size, blank: @button.blank, color: @button.color, display_delay: @button.display_delay, enable_on_mobile: @button.enable_on_mobile, font: @button.font, font_bold: @button.font_bold, font_italic: @button.font_italic, font_regular: @button.font_regular, hover: @button.hover, leading: @button.leading, shape: @button.shape, size: @button.size, text: @button.text, text_animation: @button.text_animation, text_color: @button.text_color, tracking: @button.tracking, url_link: @button.url_link }
    end

    assert_redirected_to button_path(assigns(:button))
  end

  test "should show button" do
    get :show, id: @button
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @button
    assert_response :success
  end

  test "should update button" do
    patch :update, id: @button, button: { bar_aligment: @button.bar_aligment, bar_position: @button.bar_position, bar_size: @button.bar_size, blank: @button.blank, color: @button.color, display_delay: @button.display_delay, enable_on_mobile: @button.enable_on_mobile, font: @button.font, font_bold: @button.font_bold, font_italic: @button.font_italic, font_regular: @button.font_regular, hover: @button.hover, leading: @button.leading, shape: @button.shape, size: @button.size, text: @button.text, text_animation: @button.text_animation, text_color: @button.text_color, tracking: @button.tracking, url_link: @button.url_link }
    assert_redirected_to button_path(assigns(:button))
  end

  test "should destroy button" do
    assert_difference('Button.count', -1) do
      delete :destroy, id: @button
    end

    assert_redirected_to buttons_path
  end
end
