class NrelClientService
  def initialize
    @_conn = Faraday.new(:url => 'https://developer.nrel.gov/api/alt-fuel-stations/v1.json') do |faraday|
      faraday.adapter       Faraday.default_adapter
      faraday.params['api_key'] = ENV['NREL_API_KEY']
    end
  end
  
end