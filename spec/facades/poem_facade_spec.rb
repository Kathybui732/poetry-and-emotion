require 'rails_helper'

RSpec.describe 'Poem Facade' do
  it "can turn poetry service data into a poem" do
    data = [
      {
        "title": "Not at Home to Callers",
        "author": "Emily Dickinson",
        "lines": [
            "Not at Home to Callers",
            "Says the Naked Tree --",
            "Bonnet due in April --",
            "Wishing you Good Day --"
        ],
        "linecount": "4"
      }
    ]

    expected_output = [Poem]
  end
end
