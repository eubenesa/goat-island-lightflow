class AnswerSerializer < ActiveModel::Serializer
  attributes :id, :content, :upvotes, :updated_at

  belongs_to :question

  url [:question, :answer]
end