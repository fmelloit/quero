require 'test_helper'

class NovinhasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @novinha = novinhas(:one)
  end

  test "should get index" do
    get novinhas_url
    assert_response :success
  end

  test "should get new" do
    get new_novinha_url
    assert_response :success
  end

  test "should create novinha" do
    assert_difference('Novinha.count') do
      post novinhas_url, params: { novinha: { data_picote: @novinha.data_picote, nome: @novinha.nome, nota: @novinha.nota } }
    end

    assert_redirected_to novinha_url(Novinha.last)
  end

  test "should show novinha" do
    get novinha_url(@novinha)
    assert_response :success
  end

  test "should get edit" do
    get edit_novinha_url(@novinha)
    assert_response :success
  end

  test "should update novinha" do
    patch novinha_url(@novinha), params: { novinha: { data_picote: @novinha.data_picote, nome: @novinha.nome, nota: @novinha.nota } }
    assert_redirected_to novinha_url(@novinha)
  end

  test "should destroy novinha" do
    assert_difference('Novinha.count', -1) do
      delete novinha_url(@novinha)
    end

    assert_redirected_to novinhas_url
  end
end
