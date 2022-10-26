require 'rails_helper'

describe 'New author page', type: :feature do
  it "should exist at 'new_author_path' and render withour error" do
    # https://guides.rubyonrails.org/routing.html#path-and-url-helpers
    visit new_author_path
  end

  it "should have text inputs for authors first and last name and home page" do
    visit new_author_path
    expect(page).to(have_field('author[first_name]'))
    expect(page).to(have_field('author[last_name]'))
    expect(page).to(have_field('author[homepage]'))
  end
end

describe "Author", type: :model do
  first_name = "Alan"
  last_name = "Turing"
  homepage = "https://wikipedia.org/Alan_Turing"
  full_name = "Alan Turing"
  it "should have first name, last name, and homepage" do
    author = Author.new(first_name: first_name, last_name: last_name, homepage: homepage)
    expect(author.first_name).to eq (first_name)
    expect(author.last_name).to eq (last_name)
    expect(author.homepage).to eq (homepage)
  end

  it "should return the full name" do
    author = Author.new(first_name: first_name, last_name: last_name, homepage: homepage)
    expect(author.name).to eq (full_name)
  end
end
