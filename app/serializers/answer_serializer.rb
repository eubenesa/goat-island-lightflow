class AnswerSerializer < ActiveModel::Serializer
  attributes :id, :content, :updated_at, :question_id, :user_id
end
