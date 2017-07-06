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

  it 'will add have an error when creating item with improper attributes' do
    user = FactoryGirl.create(:admin_user)
    login_as(user, :scope => :user)
    visit user_path(user)
    click_link 'Add item'
    fill_in 'item_name', with: ""
    fill_in 'item_user_attack_increase', with: 10
    fill_in 'item_one_time_attack', with: 50
    click_button 'Create Item'
    expect(page).to have_content 'There was a problem creating the item'
  end

  it 'will add item to rpg' do
    user = FactoryGirl.create(:admin_user)
    login_as(user, :scope => :user)
    FactoryGirl.create(:item)
    visit user_path(user)
    click_link 'View All Items'
    expect(page).to have_content 'PickAxe'
    click_button 'Add to Inventory'
    expect(page).to have_content 'PickAxe'
  end
end
