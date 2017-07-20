require 'test_helper'

class LeasesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @lease = leases(:one)
  end

  test "should get index" do
    get leases_url
    assert_response :success
  end

  test "should get new" do
    get new_lease_url
    assert_response :success
  end

  test "should create lease" do
    assert_difference('Lease.count') do
      post leases_url, params: { lease: { art_id: @lease.art_id, client_id: @lease.client_id, lease_end_date: @lease.lease_end_date, lease_id: @lease.lease_id, lease_start_date: @lease.lease_start_date, price: @lease.price, user_id: @lease.user_id } }
    end

    assert_redirected_to lease_url(Lease.last)
  end

  test "should show lease" do
    get lease_url(@lease)
    assert_response :success
  end

  test "should get edit" do
    get edit_lease_url(@lease)
    assert_response :success
  end

  test "should update lease" do
    patch lease_url(@lease), params: { lease: { art_id: @lease.art_id, client_id: @lease.client_id, lease_end_date: @lease.lease_end_date, lease_id: @lease.lease_id, lease_start_date: @lease.lease_start_date, price: @lease.price, user_id: @lease.user_id } }
    assert_redirected_to lease_url(@lease)
  end

  test "should destroy lease" do
    assert_difference('Lease.count', -1) do
      delete lease_url(@lease)
    end

    assert_redirected_to leases_url
  end
end
