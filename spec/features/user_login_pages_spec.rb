require 'rails_helper'

describe "sign up, sign out and sign in" do
  it "will sign a user up" do
    visit root_path
    click_link "Sign Up"
    fill_in "user_name", with: "christ"
    select "Bounty Hunter", :from => "user_role"
    fill_in "user_email", with: "christ@god.com"
    fill_in "user_password", with: "123456"
    fill_in "user_password_confirmation", with: "123456"
    click_button "Sign up"
    expect(page).to have_content "You have signed up successfully."
  end
end
