require  'rails_helper'

RSpec.feature "user can visit other profiles", type: :feature do
  scenario "user can see who posted the post" do
    User.create(name: "Gina", password: "123456", email: "gina@example.com")
    log_in_gina
    click_link "New post"
    fill_in "Message", with: "Hello!!!"
    click_on "Submit"
    visit '/posts'
    expect(page).to have_content("@Gina")
  end

  scenario "user can click on a name and it is a link to that user's page " do
    User.create(name: "Gina", password: "123456", email: "gina@example.com")
    log_in_gina
    click_link "New post"
    fill_in "Message", with: "Hello!!!"
    click_on "Submit"
    visit '/posts'
    click_on "@Gina"
    expect(page).to have_current_path '/users/1'
  end
end 



  # "user can see how posted the post"