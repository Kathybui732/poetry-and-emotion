require 'rails_helper'

RSpec.describe 'Poem' do
  it "can make a poem object" do
    data = {
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
    poem = Poem.new(data)
    expect(poem.title).to eq(data[:title])
    expect(poem.author).to eq(data[:author])
    expect(poem.string).to eq(data[:lines][0])
  end
end
