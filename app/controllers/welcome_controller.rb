class WelcomeController < ApplicationController
  def home
    # Initialize first account:
    default_avatar = File.open(Rails.root + "app/assets/images/octo.jpg", "rb").read
    u = User.where("email = 'test@test.com'").first!
    u.avatar = default_avatar
    u.save!
    @u = User.where("email = 'test@test.com'").first!
  end
  
  def avatar_show(email =  nil)
    user = if email then User.where("upper(email) = upper(?)", email).first! else current_user end 
    default_avatar = File.open(Rails.root + "app/assets/images/monte.png", "rb").read
    send_data(if user.avatar then user.avatar else default_avatar end, :filename => 'avatar', :type => 'image/jpg', :disposition => 'inline')
  end
   
end
