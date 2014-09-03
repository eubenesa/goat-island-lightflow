class Api::V1::AnswersController < ApplicationController
  respond_to :json

  def index
    respond_with Question.find(params[:question_id]).answers
  end

  def create
    binding.pry
  end

  def show
  end

  def update
  end

  def destroy
  end

  def answer_params
  end
end
