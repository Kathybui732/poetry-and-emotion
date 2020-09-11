require 'rails_helper'

RSpec.describe 'Feature' do
  it "can get tone of poem" do
    string = 'Not at Home to Callers'

    tone_data = InternationalBusinessMachinesService.new.get_tone(string)
  end
end
