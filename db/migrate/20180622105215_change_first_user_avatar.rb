class ChangeFirstUserAvatar < ActiveRecord::Migration[5.2]
  def change
    # Initialize first account:
    data = File.read(Rails.root + "tmp/nezna.png")
    u = User.where("email = 'test@test.com'").first!
    u.avatar = data
    u.save!
  end
end
