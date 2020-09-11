require 'rails_helper'

RSpec.describe 'Poems Index Page' do
  it "can return 10 poems in a author keyword search" do
    visit '/'
    fill_in :author, with: 'Emily'
    click_on 'Get Poems'
    expect(current_path).to eq('/search')
    within('.search_results') do
      expect()
    end
  end

  it "displays a title, author, and poem for each result" do
    within(".poem-#{}") do
      expect(page).to have_content(title)
      expect(page).to have_content(author)
      expect(page).to have_content(string)
      expect(page).to have_content(tone)
    end
  end
end
