class InternationalBusinessMachinesService
  def get_tone(string)
    response = conn.get '/instances/5c17dc06-1d2f-4b36-84ce-031187d7b7dd/v3/tone' do |req|
      req.params['text'] = string
      req.params['version'] = '2017-09-21'
    end
    require "pry"; binding.pry
    JSON.parse(response.body, symbolize_names: true)
  end

  private

  def conn
    Faraday.new 'https://api.us-south.tone-analyzer.watson.cloud.ibm.com/' do |f|
      f.basic_auth('apikey', '5Kzf3ZgrXcPSZn8V9rbKtmno9mwVwc-YtNy7Ina4SazJ')
    end
  end
end
