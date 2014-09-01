class Api::V1::QuestionsController < ApplicationController
  respond_to :json

  def index
    respond_with Question.all
  end

  def create
    # params = question_params
    # params[:user_id] = session[:user_id]
    # binding.pry
    respond_with :api, :v1, Question.create(
      subject: params[:question][:subject],
      content: params[:question][:content],
      # category: params[:question][:category],
      user_id: current_user.id
    )
  end

  def show
    respond_with Question.find(params[:id])
  end

  def update
    question = Question.find(params[:id])
    # respond_with question.update(question_params)
  end

  def destroy
    question = Question.find(params[:id])
    respond_with question.destroy
  end

  # private

  # def question_params
  #   params.require(:question).permit(:subject, :content, :category);
  # end

end
