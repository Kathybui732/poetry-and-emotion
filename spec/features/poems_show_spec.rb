require 'rails_helper'

RSpec.describe 'Poems Index Page' do
  it "can return 10 poems in a author keyword search" do
    visit '/'
    fill_in :author, with: 'Emily'
    click_on 'Get Poems'
    expect(current_path).to eq('/search')
    within('.search-results') do
      expect(page).to have_content('Title:', count:10)
    end
  end

  it "displays a title, author, and poem for each result" do
    visit '/'
    fill_in :author, with: 'Emily'
    click_on 'Get Poems'
    expect(current_path).to eq('/search')
    within('.poem-Not') do
      expect(page).to have_content('Title: Not at Home to Callers')
      expect(page).to have_content('by: Emily Dickinson')
      expect(page).to have_content('Poem: Not at Home to Callers Says the Naked Tree -- Bonnet due in April -- Wishing you Good Day --')
      expect(page).to have_content('Joy')
    end
  end
end
