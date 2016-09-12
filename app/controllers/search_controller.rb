class SearchController < ApplicationController
  def index
    # @locate = NrelClientService.new
    @_conn = Faraday.new(:url => 'https://developer.nrel.gov/') do |faraday|
      faraday.adapter             Faraday.default_adapter
      faraday.params['api_key'] = ENV['NREL_API_KEY']
  end
  response = conn.get 'api/v1.json/?zip=80203' #, { :zip =>  }
  response.body
  # require "pry"; binding.pry
    
end
  def stations
    parse(conn.get'/')
  end
  
  def parse(input)
    
    
private

  def conn
    @_conn
  end
end
