
# encoding: utf-8
require 'rspec'
require 'spec_helper'
require 'pry'

describe ApiClientFun do
  
  describe 'api status' do
    it 'return valid respond' do
      expect(ApiClientFun::VERSION).to be_truthy
    end
  end

end
