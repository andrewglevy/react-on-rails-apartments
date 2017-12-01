require 'test_helper'

class ListingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @listing = listings(:one)
  end

  test "should get index" do
    get listings_url
    assert_response :success
  end

  test "should get new" do
    get new_listing_url
    assert_response :success
  end

  test "should create listing" do
    assert_difference('Listing.count') do
      post listings_url, params: { listing: { address: @listing.address, building_manager_hours: @listing.building_manager_hours, building_manager_name: @listing.building_manager_name, building_manager_phone: @listing.building_manager_phone, city: @listing.city, contact_info: @listing.contact_info, country: @listing.country, postal: @listing.postal, state: @listing.state } }
    end

    assert_redirected_to listing_url(Listing.last)
  end

  test "should show listing" do
    get listing_url(@listing)
    assert_response :success
  end

  test "should get edit" do
    get edit_listing_url(@listing)
    assert_response :success
  end

  test "should update listing" do
    patch listing_url(@listing), params: { listing: { address: @listing.address, building_manager_hours: @listing.building_manager_hours, building_manager_name: @listing.building_manager_name, building_manager_phone: @listing.building_manager_phone, city: @listing.city, contact_info: @listing.contact_info, country: @listing.country, postal: @listing.postal, state: @listing.state } }
    assert_redirected_to listing_url(@listing)
  end

  test "should destroy listing" do
    assert_difference('Listing.count', -1) do
      delete listing_url(@listing)
    end

    assert_redirected_to listings_url
  end
end
