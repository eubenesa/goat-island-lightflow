class QuestionsController < ApplicationController
  def index
    questions = Question.all

    respond_to do |f|
      f.html
      f.json { render :json => questions }
    end
  end

  def create
    question = Question.create(
      subject: params[:question][:subject],
      content: params[:question][:content],
      user_id: current_user.id
    )

    respond_to do |f|
      f.html
      f.json { render :json => question }
    end
  end

  def show
    question = Question.find(params[:id])

    respond_to do |f|
      f.html
      f.json { render :json => question }
    end
  end

  def update
  end

  def destroy
  end

  private

  def question_params
  end
end
