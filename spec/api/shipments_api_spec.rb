# frozen_string_literal: true

require 'spec_helper'
require 'json'

# Unit tests for KeepItCool::ShipmentsApi
describe 'ShipmentsApi' do
  before do
    # run before each test
    @api_instance = KeepItCool::ShipmentsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ShipmentsApi' do
    it 'should create an instance of ShipmentsApi' do
      expect(@api_instance).to be_instance_of(KeepItCool::ShipmentsApi)
    end
  end

  # unit tests for shipments_create
  # Bulk create or update shipments
  #  ### Creating/updating shipments    ### Triggering recommendations    ### Limits  Up to 10 shipments can be sent in a single request.          
  # @param bulk_create_shipment 
  # @param [Hash] opts the optional parameters
  # @return [BulkShipmentResponse]
  describe 'shipments_create test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
