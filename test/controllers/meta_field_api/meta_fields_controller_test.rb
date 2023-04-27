require "test_helper"

module MetaFieldApi
  class MetaFieldsControllerTest < ActionDispatch::IntegrationTest
    include Engine.routes.url_helpers

    test "should get index" do
      get meta_fields_index_url
      assert_response :success
    end

    test "should get show" do
      get meta_fields_show_url
      assert_response :success
    end

    test "should get create" do
      get meta_fields_create_url
      assert_response :success
    end

    test "should get update" do
      get meta_fields_update_url
      assert_response :success
    end

    test "should get destroy" do
      get meta_fields_destroy_url
      assert_response :success
    end
  end
end
