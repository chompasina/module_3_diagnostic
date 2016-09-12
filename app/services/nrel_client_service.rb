class NrelClientService
  def initialize(zip)
    @_conn = Faraday.new(:url => 'https://developer.nrel.gov/') do |faraday|
      faraday.adapter               Faraday.default_adapter
      faraday.params['api_key']   = ENV['NREL_API_KEY']
      faraday.params['fuel_type'] = 'LPG,ELEC'
      faraday.params['limit']     = '10'
      faraday.params['radius']    = '5.0'
      faraday.params['zip']       = zip
    end
    # response = conn.get 'api/alt-fuel-stations/v1.json/?zip=80203' #, { :zip =>  }
    # response.body
  end
  
  def stations(zipcode)
    parse(conn.get"api/alt-fuel-stations/v1.json/?zip=#{zipcode}")
  end

    
  private

    def parse(response)
      JSON.parse(response.body, symbolize_names: true)
    end
    
    def conn
      @_conn
    end
end
