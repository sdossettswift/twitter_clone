class CanSigninAndSignOutTest < Capybara::Rails::TestCase

  setup do
  end


  test "Can Sign In" do
    user = User.create! username: "example", password: "12345678"
    visit root_path
    click_link "Share Gossip"
    # I am on sign in page
    fill_in "Username", with: 'example'
    fill_in "Password", with: "12345678"
    click_button "Sign In"

    assert_content page, "Signed in!"

  end

end
