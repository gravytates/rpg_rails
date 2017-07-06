require 'rails_helper'

describe "add items to rpg and inventory" do

  it 'will add item to rpg' do
    user = FactoryGirl.create(:admin_user)
    login_as(user, :scope => :user)
    visit user_path(user)
    click_link 'Delete Avatar'
    expect(page).to have_content 'No avatar image uploaded'
  end
end
