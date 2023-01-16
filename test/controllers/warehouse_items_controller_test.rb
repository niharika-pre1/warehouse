require "test_helper"

class WarehouseItemsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get warehouse_items_index_url
    assert_response :success
  end
end
