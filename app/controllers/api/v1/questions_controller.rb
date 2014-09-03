class Api::V1::QuestionsController < ApplicationController
  respond_to :json

  def index
    respond_with Question.all
  end

  def create
    respond_with :api, :v1, Question.create(
      subject: params[:question][:subject],
      content: params[:question][:content],
      user_id: current_user.id
    )
  end

  def show
    respond_with Question.find(params[:id])
  end

  def update
  end

  def destroy
  end

  private

  def question_params
  end
end
