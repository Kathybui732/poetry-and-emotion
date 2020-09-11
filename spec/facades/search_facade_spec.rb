require 'rails_helper'

RSpec.describe 'Search Results' do
  it "can turn poetry service data into a poem" do
    data = [
      {
        title: "Not at Home to Callers",
        author: "Emily Dickinson",
        lines: [
            "Not at Home to Callers",
            "Says the Naked Tree --",
            "Bonnet due in April --",
            "Wishing you Good Day --"
        ],
        linecount: "4"
      }
    ]

    expected_output = [Poem.new(data[0])]
    author = 'Emily'

    result = SearchResults.new.get_poems(author)

    expect(result[0].title).to eq(expected_output[0].title)
    expect(result[0].author).to eq(expected_output[0].author)
    expect(result[0].string).to eq(expected_output[0].string)
  end

  it "can turn tone data into a tone object" do
    data = {
    document_tone: {
        tones: [
            {
                score: 0.730959,
                tone_id: "joy",
                tone_name: "Joy"
            }
        ]
    }
  }
  expected_output = Tone.new(data)
  string = "Not at Home to Callers Says the Naked Tree -- Bonnet due in April -- Wishing you Good Day --"

  result = SearchResults.new.get_tone(string)
  expect(result.tone).to eq(expected_output.tone)
  end
end
