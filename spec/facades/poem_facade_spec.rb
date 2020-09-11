require 'rails_helper'

RSpec.describe 'Poem Facade' do
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
end
