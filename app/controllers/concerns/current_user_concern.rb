module CurrentUserConcern
	extend ActiveSupport::Concern

	# either going to call Devise current_user method (super) or guest_user method below
	def current_user
  	super || guest_user
  end

  def guest_user
  	OpenStruct.new(name: "Guest User", 
  								first_name: "Guest", 
  								last_name: "User", 
  								email: "guest@example.com"
  								)
  end
end