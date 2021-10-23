
# encoding: utf-8
require 'rspec'
require 'spec_helper'
require 'pry'

describe ApiClientFun do

  describe 'For personal detail' do
  
    it 'returns some data' do
      personals_response =  ApiClientFun.user["users"] 
      expect(personals_response).to be_an_instance_of(Array)
    end

  end

  describe 'listing all ' do
    it 'test_return_all' do
      all_listing_number = ApiClientFun.user["users"].count
      expected_number = 14
      expect(all_listing_number).to eq(expected_number)
    end

  end

  describe 'For personal detail' do

    it 'test_returns_profile' do
    profile = ApiClientFun.profile_for_name('Philip J Fry')
    expected_profile = { age: 25, gender: "M", planet: "Earth", species: "Human", status: "Alive" }
    expect(profile).to eq expected_profile
    end

    it 'test_return error user not found' do
      profile = ApiClientFun.profile_for_name('Mr. Not Exist')
    expected_profile = 'error: User not found'
    expect(profile).to eq expected_profile
    end

  end

end
