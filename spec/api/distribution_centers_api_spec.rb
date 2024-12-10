# frozen_string_literal: true

require 'spec_helper'
require 'json'

# Unit tests for KeepItCool::DistributionCentersApi
describe 'DistributionCentersApi' do
  before do
    # run before each test
    @api_instance = KeepItCool::DistributionCentersApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of DistributionCentersApi' do
    it 'should create an instance of DistributionCentersApi' do
      expect(@api_instance).to be_instance_of(KeepItCool::DistributionCentersApi)
    end
  end

  # unit tests for distribution_centers_create
  # Create Distribution Center
  # Creates a new distribution center for your organization
  # @param customer_distribution_center 
  # @param [Hash] opts the optional parameters
  # @return [CustomerDistributionCenter]
  describe 'distribution_centers_create test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for distribution_centers_list
  # List Distribution Centers
  # Retrieves a list of all distribution centers for your organization
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :limit Number of results to return per page.
  # @option opts [Integer] :offset The initial index from which to return the results.
  # @return [PaginatedCustomerDistributionCenterList]
  describe 'distribution_centers_list test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for distribution_centers_partial_update
  # Update Distribution Center
  # Update a distribution center for your organization
  # @param uuid A UUID string identifying this distribution center.
  # @param [Hash] opts the optional parameters
  # @option opts [PatchedCustomerDistributionCenter] :patched_customer_distribution_center 
  # @return [CustomerDistributionCenter]
  describe 'distribution_centers_partial_update test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for distribution_centers_retrieve
  # Retrieve Distribution Center
  # Retrieves a distribution center for your organization
  # @param uuid A UUID string identifying this distribution center.
  # @param [Hash] opts the optional parameters
  # @return [CustomerDistributionCenter]
  describe 'distribution_centers_retrieve test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
