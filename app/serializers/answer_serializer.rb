class AnswerSerializer < ActiveModel::Serializer
  attributes :id, :content, :upvotes, :question_id, :github_username, :updated_at

  # has_one :user

  def github_username
    object.user.github_username
  end
end
