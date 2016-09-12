class SearchController < ApplicationController
  def index
     @locate = NrelClientService.new
  #   @_conn = Faraday.new(:url => 'https://developer.nrel.gov/') do |faraday|
  #     faraday.adapter             Faraday.default_adapter
  #     faraday.params['api_key'] = ENV['NREL_API_KEY']
  #     faraday.params['fuel_type'] = 'LPG,ELEC'
  #     faraday.params['limit'] = '10'
  #     faraday.params['radius'] = '5.0'
  # end
  #   response = conn.get 'api/alt-fuel-stations/v1.json/?zip=80203' #, { :zip =>  }
  #   require "pry"; binding.pry
  #   response.body
  # require "pry"; binding.pry  
  end
end