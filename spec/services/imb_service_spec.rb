require 'rails_helper'

RSpec.describe 'Feature' do
  it "can get tone of poem" do
    string = "Not at Home to Callers Says the Naked Tree -- Bonnet due in April -- Wishing you Good Day --"
    results = InternationalBusinessMachinesService.new.get_tone(string)
    expect(results).to have_key(:document_tone)
    expect(results[:document_tone]).to have_key(:tones)
    expect(results[:document_tone][:tones][0]).to have_key(:tone_name)
  end
end
