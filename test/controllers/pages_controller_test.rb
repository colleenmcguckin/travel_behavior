require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  setup do
    @page = pages :basic
  end

  describe 'basic crud for pages' do
    test 'should get index' do
      get :index
      assert_response :success
    end

    test 'should get show' do
      get :show, id: @page
      assert_response :success
    end

    test 'should get edit' do
      get :edit, id: @page
      assert_response :success
    end

    test 'should update content of a page' do
      patch :update, id: @page, page: { content: 'hello <b> HI </b>' }
      assert_response :redirect
    end
  end


end
