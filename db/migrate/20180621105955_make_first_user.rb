class MakeFirstUser < ActiveRecord::Migration[5.2]
  def change
    # Initialize first account:
    User.create! do |u|
        u.email     = 'test@test.com'
        u.password    = '111111'
    end
  end
end
