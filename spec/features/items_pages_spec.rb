require 'rails_helper'

describe "add items to rpg and inventory" do

  it 'will add item to rpg' do
    user = FactoryGirl.create(:admin_user)
    login_as(user, :scope => :user)
    visit user_path(user)
    click_link 'Add item'
    fill_in 'item_name', with: "Sword"
    fill_in 'item_user_attack_increase', with: 10
    fill_in 'item_one_time_attack', with: 50
    click_button 'Create Item'
    expect(page).to have_content 'Items across the Galaxy'
  end
end
