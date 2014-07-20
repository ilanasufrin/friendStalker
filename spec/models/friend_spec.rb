require_relative '../rails_helper'

describe Friend do
  describe 'Model' do
    it 'has a name' do
      expect(@bob.name).to eq("Bob Testman")
    end

    it 'has a location' do
      expect(@bob.location).to eq("Burger King")
    end

    it 'can belong to multiple users' do
      expect(@florp.friends).to include(@bob)
      expect(@beef.friends).to include(@bob)
    end

    it 'has many friendships' do
      expect(@bob.friendships.size).to eq(2)
    end  
  end
end
