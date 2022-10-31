require 'rails_helper'

new_first_name = 'Alan'
new_last_name = 'Turing'
new_homepage = 'https://en.wikipedia.org/Alan_Turing'

describe 'Edit author page', type: :feature do
  it 'should be loaded without an error' do
    @alan = FactoryBot.create(:author)
    visit edit_author_path(@alan)
  end

  it 'should have text inputs for authors first and last name and home page' do
    visit new_author_path
    expect(page).to(have_field('author[first_name]'))
    expect(page).to(have_field('author[last_name]'))
    expect(page).to(have_field('author[homepage]'))
  end

  it 'should update a user without throwing an error' do
    @alan = FactoryBot.create(:author)
    visit edit_author_path(@alan)
    visit new_author_path
    page.fill_in 'author[last_name]', with: new_last_name
    page.fill_in 'author[first_name]', with: new_first_name
    page.fill_in 'author[homepage]', with: new_homepage
    find('input[type="submit"]').click
  end
end
