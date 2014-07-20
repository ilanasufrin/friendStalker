require_relative '../rails_helper'

describe Friendship do
  describe 'Model' do
    it 'belongs to friends' do
      expect(@friendship2.friend_id).to eq(Friend.find(2).id)
    end

    it 'belongs to users' do
      expect(@friendship3.user_id).to eq(User.find(1).id)
    end
  end
end
