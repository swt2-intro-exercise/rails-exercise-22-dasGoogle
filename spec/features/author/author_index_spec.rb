require 'rails_helper'

describe "Author details page", type: :feature do
    it "should exist at 'index_author_path' and render withour error" do
        # https://guides.rubyonrails.org/routing.html#path-and-url-helpers
        visit authors_path
      end
    it "contains the name of the displayed author" do
        @alan = FactoryBot.create(:author)
        visit authors_path

        expect(page).to have_text("Alan")
        expect(page).to have_text("Turing")

        expect(page).to have_link 'New', href: new_author_path
    end

    it "contains a link to create a new author" do
        visit authors_path
        expect(page).to have_link 'New', href: new_author_path
    end
end
