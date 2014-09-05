class AnswersController < ApplicationController
  def index
    answers = Question.find(params[:question_id]).answers

    respond_to do |f|
      f.html
      f.json { render :json => answers }
    end
  end

  def create
    question = Question.find(params[:question_id])
    answer = question.answers.create(
      content: params[:answer][:content],
      user_id: current_user.id,
      question_id: params[:question_id].to_i
    )

    respond_to do |f|
      f.html
      f.json { render :json => answer }
    end
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

  private

  def answer_params
  end
end
