class QuestionSerializer < ActiveModel::Serializer
  attributes :id, :subject, :content, :category, :upvotes, :github_username, :updated_at

  #has_one :user
  has_many :answers

  def github_username
    object.user.github_username
  end
end
