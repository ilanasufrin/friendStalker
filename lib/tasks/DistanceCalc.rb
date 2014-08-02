class DistanceCalc
  # DELTA = 0.003 # Probably good production delta
  DELTA = 0.005 # Loosen delta for demoing

  # def self.match_user_to_available_item(user)
  #   item = find_item_for_user(user)
  #   if item
  #     item.update!(status: :unavailable)
  #     item.offers.create!(owner_id: item.user_id, recipient_id: user.id)
  #   end
  # end

  # def self.find_item_for_user(user)
  #   rejected_item_ids = [0] + Offer.where(status: 3, recipient_id: user.id).pluck(:item_id)
  #   lat = user.latitude
  #   lng = user.longitude
  #   Item.available
  #     .where('items.id NOT IN (?)', rejected_item_ids)
  #     .where('latitude BETWEEN ? AND ?', lat-DELTA, lat+DELTA)
  #     .where('longitude BETWEEN ? AND ?', lng-DELTA, lng+DELTA)
  #     .first
  # end

  # def self.match_item_to_available_user(item)
  #   user = find_user_for_item(item)
  #   if user
  #     offer = item.offers.create!(owner_id: item.user_id, recipient: user)
  #     item.update!(status: :unavailable)
  #     offer
  #   end
  # end

  # def self.find_user_for_item(item)
  #   lat = item.latitude
  #   lng = item.longitude
  #   rejected_user_ids = [0] + Offer.where(status: 3, item_id: item.id).pluck(:recipient_id)
  #   rejected_user_ids << item.user_id
  #   User.joins(:info)
  #     .without_offer
  #     .where('user_infos.latitude BETWEEN ? AND ?', lat-DELTA, lat+DELTA)
  #     .where('user_infos.longitude BETWEEN ? AND ?', lng-DELTA, lng+DELTA)
  #     .reject{ |user| rejected_user_ids.include?(user.id) } #Better to do this in Ruby or DB?
  #     .first
  # end

  def self.find_friends_within_range(user)
    lat = user.lat
    lng = user.lon
    # Subscriptions
      # .where('user_infos.latitude BETWEEN ? AND ?', lat-DELTA, lat+DELTA)
      # .where('user_infos.longitude BETWEEN ? AND ?', lng-DELTA, lng+DELTA)
      if user.geocoded?
      Friends.near([lat, lng], 5) #can change Friends table to Subscription once we have it
  end

end
