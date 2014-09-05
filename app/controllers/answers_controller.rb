class AnswersController < ApplicationController
  def index
    answers = Question.find(params[:question_id]).answers

    respond_to do |f|
      f.html
      f.json { render :json => answers }
    end
  end

  def create
    binding.pry
  end

  def show
    answer = Question.find(params[:question_id]).answers.find(params[:id])

    respond_to do |f|
      f.html
      f.json { render :json => answer }
    end
  end

  def update
  end

  def destroy
  end

  def answer_params
  end
end
