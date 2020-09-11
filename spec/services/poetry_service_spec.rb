require 'rails_helper'

RSpec.describe 'Poetry Service' do
  it "can return an array of 10 poem info by author" do
    author = 'Emily'
    response = [
      :title,
      :author,
      :lines,
      :linecount
    ]
    results = PoetryService.new.get_poems(author)
    response.each do |key|
      expect(results[0]).to have_key(key)
    end
  end
end
