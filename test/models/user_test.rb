require "test_helper"

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  describe User, '#name' do
    it 'returns the concatenated first and last name' do
      # setup
      user = build(:user, nom: 'Josh', prenom: 'Steiner')
  
      # excercise and verify
      expect(user.nom).to eq 'Josh'
    end
end
