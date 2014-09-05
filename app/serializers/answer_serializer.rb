class AnswerSerializer < ActiveModel::Serializer
  attributes :id, :content, :updated_at, :user_id, :question_id
end
