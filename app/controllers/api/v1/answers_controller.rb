class Api::V1::AnswersController < ApplicationController
  respond_to :json

  def index
    respond_with Question.find(params[:question_id]).answers
  end

  def create
  end

  # def show
  #   respond_with Question.find(params[:question_id]).answers.find(params[:id])
  # end

  # def update
  #   answer = Question.find(params[:question_id]).answers.find(params[:id])
  #   respond_with answer.update(answer_params)
  # end

  # def destroy
  #   answer = Question.find(params[:question_id]).answers.find(params[:id])
  #   respond_with answer.destroy
  # end

  # def answer_params
  #   params.require(:answer).permit(:content)
  # end
end
