require "rails_helper"

feature "Account Creation" do
    scenario "allows gusets to create account" do
      sign_up
      expect(page).to have_content I18n.t('devise.registrations.signed_up')

  end
  def sign_up
    visit new_user_registration_path
         
    fill_in :user_email, :with => 'user@example.com' 
    fill_in :user_username, :with => 'mike'
    fill_in :user_password, :with => 'secure123!@#'
    fill_in :user_password_confirmation, :with => 'secure123!@#'

    click_button 'Sign up'
  end
end