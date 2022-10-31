require 'rails_helper'

describe 'Author details page', type: :feature do
  it "should exist at 'index_author_path' and render withour error" do
    # https://guides.rubyonrails.org/routing.html#path-and-url-helpers
    visit authors_path
  end
  it 'contains the name of the displayed author' do
    @alan = FactoryBot.create(:author)
    visit authors_path

    expect(page).to have_text('Alan')
    expect(page).to have_text('Turing')

    expect(page).to have_link 'New', href: new_author_path
    expect(page).to have_link 'Show', href: author_path(@alan)
  end

  it 'contains button to show author' do
    @alan = FactoryBot.create(:author)
    visit authors_path
    expect(page).to have_link 'Show', href: author_path(@alan)
  end

  it 'contains button to edit author' do
    @alan = FactoryBot.create(:author)
    visit authors_path
    expect(page).to have_link 'Edit', href: edit_author_path(@alan)
  end

  it 'contains a link to create a new author' do
    visit authors_path
    expect(page).to have_link 'New', href: new_author_path
  end
end
