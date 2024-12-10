# frozen_string_literal: true

require 'spec_helper'
require 'json'

# Unit tests for KeepItCool::PackagingConfigsApi
describe 'PackagingConfigsApi' do
  before do
    # run before each test
    @api_instance = KeepItCool::PackagingConfigsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of PackagingConfigsApi' do
    it 'should create an instance of PackagingConfigsApi' do
      expect(@api_instance).to be_instance_of(KeepItCool::PackagingConfigsApi)
    end
  end

  # unit tests for packaging_configs_create
  # Create Packaging Config
  # Creates a new packaging config for your organization
  # @param customer_packaging_config 
  # @param [Hash] opts the optional parameters
  # @return [CustomerPackagingConfig]
  describe 'packaging_configs_create test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for packaging_configs_list
  # List Packaging Configs
  # Retrieves a list of all packaging configs for your organization
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :limit Number of results to return per page.
  # @option opts [Integer] :offset The initial index from which to return the results.
  # @return [PaginatedCustomerPackagingConfigList]
  describe 'packaging_configs_list test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for packaging_configs_partial_update
  # Update Packaging Config
  # Update a packaging config for your organization
  # @param uuid A UUID string identifying this packaging config.
  # @param [Hash] opts the optional parameters
  # @option opts [PatchedCustomerPackagingConfig] :patched_customer_packaging_config 
  # @return [CustomerPackagingConfig]
  describe 'packaging_configs_partial_update test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for packaging_configs_retrieve
  # Retrieve Packaging Config
  # Retrieves a packaging config for your organization
  # @param uuid A UUID string identifying this packaging config.
  # @param [Hash] opts the optional parameters
  # @return [CustomerPackagingConfig]
  describe 'packaging_configs_retrieve test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
