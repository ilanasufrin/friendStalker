require_relative '../rails_helper'

describe User do
  describe 'Model' do
    it 'has many friends' do
      expect(@florp.friends).to include(@bob, @zambezia, @stamos)
    end

    xit 'has a Twitter id' do
      # tba 
    end
  end
end
