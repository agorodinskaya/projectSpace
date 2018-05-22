class QuestionsController < ApplicationController

  before_action :check_if_logged_in, except: [:index, :show]

  before_action :check_if_owner, only: [:edit, :update, :destroy]

  before_action :get_question, only: [:show, :edit, :update, :destroy, :add_reply]


  def new
    @question = Question.new
  end

  def create
    # raise 'hell'
    question = Question.new question_params
    question.user = @current_user


    question.save
    redirect_to questions_path

  end

  def index
    @questions = Question.all
  end

  def show
    @reply = Reply.new
  end

  def edit
  end

  # def add_reply
  #   reply.user = @current_user
  #   @reply = Reply.new reply_params
  #
  #   reply.save
  #   redirect_to questions_path
  # end

  def update
    @question.update question_params
    redirect_to questions_path
  end

  def destroy
    @question.destroy
    redirect_to questions_path
  end

  private
  def question_params
    params.require(:question).permit(:title, :body, :user_id, :planet_id, :user_type)
  end

  def reply_params
    params.require(:reply).permit(:title, :body, :question_id)
  end
  def check_if_owner
    @question = Question.find params[:id]
    redirect_to( questions_path) and return unless @current_user.id == @question.user_id
  end

  def get_question
    @question = Question.find params[:id]
  end
end
