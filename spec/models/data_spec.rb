require 'rails_helper'

RSpec.describe Data, type: :model do
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

  it 'Just For Loading the Data' do
    expect('data').to eq('data')
  end
end
