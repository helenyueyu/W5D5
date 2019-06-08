# == Schema Information
#
# Table name: users
#
#  id              :bigint           not null, primary key
#  username        :string           not null
#  password_digest :string           not null
#  session_token   :string           not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

require 'rails_helper'

RSpec.describe User, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"

  ## validations ##
  # user has a : username (uniqueness: true, presence: true), password (presence: true)
  
  # password.length >= 6

  # throw an error if password < 6 (expect error array to be nonempty)

  describe 'validations' do 
    # phil = User.create!(username: 'phil', password: 'banana')

    # it 'validates presence of username and password' do 
    #   expect(phil).to be_valid 
    # end

    it { should validate_presence_of(:username) }
    it { should validate_uniqueness_of(:username) }
    it { should validate_presence_of(:password) }
    it { should validate_length_of(:password).is_at_least(6)}
    it 'throws an error if the password length is less than 6 characters' do 
      billy = User.new(username: 'billy_bob', password: 'shoe')
      billy.valid?
      expect(billy.errors[:password]).to include("is too short (minimum is 6 characters)")
    end
  end

  ## associations ##

  ## class scope methods ##
  
end
