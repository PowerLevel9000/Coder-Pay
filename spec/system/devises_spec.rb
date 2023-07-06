require 'rails_helper'

RSpec.describe 'Devises', type: :system do
  before :all do
    if User.find_by(name: 'Adarsh Pathak').present?
      @user = User.find_by(name: 'Adarsh Pathak')
      @group = Group.find_by(name: 'Electric')
    else
      data
      puts "\n ********************************************************"
      puts '           Please Try Again As Data is Loaded              '
      puts "*********************************************************\n"
    end
  end

  it 'Splash page should have App name Log in and Sign in links' do
    visit root_path
    expect(page).to have_content('CODER PAY')
    expect(page).to have_content('Log in')
    expect(page).to have_content('Sign in')
    click_link 'Log in'
    expect(page).to have_content('Log in')
    visit root_path
    click_link 'Sign in'
    expect(page).to have_content('Sign up')
  end


  it 'User can log in the Page' do
    log_in_adarsh
    expect(page).to have_content 'Signed in successfully.'
  end

  it 'User can sign up' do
    puts 'Reset Db or Remove Raj from db'
    visit root_path
    click_link 'Sign in'
    fill_in 'Name', with: 'raj pathak'
    fill_in 'Email',	with: 'raj.pathak@example.com'
    fill_in 'Password',	with: 'sometext'
    fill_in 'Password confirmation',	with: 'sometext'
    click_button 'Sign up'
    expect(page).to have_content('signed up successfully.')
  end
end
