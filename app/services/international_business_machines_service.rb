class InternationalBusinessMachinesService
  def get_tone(text)
    response = conn.get '/instances/5c17dc06-1d2f-4b36-84ce-031187d7b7dd/v3/tone' do |req|
      req.params['text'] = text
    end
    JSON.parse(response.body, symbolize_names: true)
  end

  private

  def conn
    Faraday.new 'https://api.us-south.tone-analyzer.watson.cloud.ibm.com/' do |f|
      f.basic_auth('apikey', ENV['IMB_API_KEY'])
      f.params['version'] = '2017-09-21'
    end
  end
end
