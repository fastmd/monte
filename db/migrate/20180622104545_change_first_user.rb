class ChangeFirstUser < ActiveRecord::Migration[5.2]
  def change
    # Initialize first account:
    u = User.where("email = 'test@test.com'").first!
    u.superadmin_role     = true
    u.save!
  end
end
