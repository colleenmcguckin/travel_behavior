require 'test_helper'

class UpdatePageTest < ActionDispatch::IntegrationTest

  test 'update a page' do
    page = pages :basic

    get root_path
    assert_response :success

    get page_path page
    assert_response :success

    get edit_page_path page
    assert_response :success

    patch_via_redirect page_path(page), page: { content: "<p>hello this is <a href=\"http://www.google.com\"><strong>about</strong></a><strong>&nbsp;</strong>me page</p>"}
    assert_response :success
    assert_equal page_path(page), path
    assert assigns(:page), 'Expected page to be assigned'
    assert_equal page_path(page), path
  end
end
