require 'rails_helper'

first_name = 'Alan'
last_name = 'Turing'
homepage = 'https://wikipedia.org/Alan_Turing'
full_name = 'Alan Turing'

describe 'Edit author page', type: :feature do
  it 'should be loaded without an error' do
    @alan = FactoryBot.create(:author)
    visit edit_author_path(@alan)
  end
end
