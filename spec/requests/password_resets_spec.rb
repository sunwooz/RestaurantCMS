require 'spec_helper'

describe "PasswordResets" do
  it "emails user when requesting password reset" do
    user = Factory(:user)
    visit new_session_path
    click_link "reset password"
  end
end