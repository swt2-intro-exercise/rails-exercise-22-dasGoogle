require 'rails_helper'

describe "Author details page", type: :feature do
    it "contains the name of the displayed author" do
        @alan = FactoryBot.create(:author)
        visit author_path(@alan)

        expect(page).to have_text("Alan")
        expect(page).to have_text("Turing")
    end
end
