class User < ActiveRecord::Base
  has_many :questions
  has_many :answers

  def self.create_with_omniauth(auth)
    create! do |user|
      user.uid = auth["uid"]
      user.github_username = auth["info"]["nickname"]
      user.token = auth["credentials"]["token"]
    end
  end
end
