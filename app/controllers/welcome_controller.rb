class WelcomeController < ApplicationController
  def home
    # Initialize first account:
    default_avatar = File.open(Rails.root + "app/assets/images/octo.jpg", "rb").read
    u = User.where("email = 'test@test.com'").first!
    u.avatar = default_avatar
    u.save!
    @u = User.where("email = 'test@test.com'").first!
  end
  
  def avatar_show
    default_avatar = File.open(Rails.root + "app/assets/images/monte.png", "rb").read
    send_data(if current_user.avatar then current_user.avatar else default_avatar end, :filename => 'avatar', :type => 'image/jpg', :disposition => 'inline')
  end
  
end
