# frozen_string_literal: true

require 'spec_helper'
require 'json'

# Unit tests for KeepItCool::ShippingMethodsApi
describe 'ShippingMethodsApi' do
  before do
    # run before each test
    @api_instance = KeepItCool::ShippingMethodsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ShippingMethodsApi' do
    it 'should create an instance of ShippingMethodsApi' do
      expect(@api_instance).to be_instance_of(KeepItCool::ShippingMethodsApi)
    end
  end

  # unit tests for shipping_methods_list
  # List Shipping Methods
  # Retrieves a list of all shipping methods for your organization
  # @param [Hash] opts the optional parameters
  # @option opts [String] :distribution_center_id The ID of the distribution center to filter shipping methods by
  # @option opts [Integer] :limit Number of results to return per page.
  # @option opts [Integer] :offset The initial index from which to return the results.
  # @return [PaginatedCustomerShippingMethodList]
  describe 'shipping_methods_list test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for shipping_methods_retrieve
  # Retrieve Shipping Method
  # Retrieves a shipping method for your organization
  # @param uuid A UUID string identifying this shipping method.
  # @param [Hash] opts the optional parameters
  # @return [CustomerShippingMethod]
  describe 'shipping_methods_retrieve test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
