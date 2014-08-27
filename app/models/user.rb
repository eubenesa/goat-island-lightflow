class User < ActiveRecord::Base
  def self.create_with_omniauth(auth)
    create! do |user|
      user.uid = auth["uid"]
      user.github_username = auth["info"]["nickname"]
      user.lhl_member = false
      user.token = auth["credentials"]["token"]
    end
  end
end
