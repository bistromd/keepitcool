# frozen_string_literal: true

require 'spec_helper'
require 'json'

# Unit tests for KeepItCool::BulkRecommendationsApi
describe 'BulkRecommendationsApi' do
  before do
    # run before each test
    @api_instance = KeepItCool::BulkRecommendationsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of BulkRecommendationsApi' do
    it 'should create an instance of BulkRecommendationsApi' do
      expect(@api_instance).to be_instance_of(KeepItCool::BulkRecommendationsApi)
    end
  end

  # unit tests for bulk_recommendations_list
  # List Bulk Recommendations
  # Retrieves a list of all bulk recommendation configurations for your organization
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :limit Number of results to return per page.
  # @option opts [Integer] :offset The initial index from which to return the results.
  # @return [PaginatedCustomerBulkRecommendationConfigList]
  describe 'bulk_recommendations_list test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for bulk_recommendations_retrieve
  # Retrieve Bulk Recommendation
  # Retrieves a specific bulk recommendation configuration for your organization
  # @param uuid A UUID string identifying this bulk recommendation config.
  # @param [Hash] opts the optional parameters
  # @return [CustomerBulkRecommendationConfig]
  describe 'bulk_recommendations_retrieve test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
