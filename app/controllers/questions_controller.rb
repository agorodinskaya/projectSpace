class QuestionsController < ApplicationController

  before_action :check_if_logged_in, except: [:index, :show]

  before_action :check_if_owner, only: [:edit, :update, :destroy]

  before_action :get_question, only: [:show, :edit, :update, :destroy, :add_reply]


  def new
    @question = Question.new
  end

  def create
    # raise 'hell'
    @question = Question.new question_params
    @question.user = @current_user
    #save before validation
    @question.save

    if @question.persisted?
      redirect_to questions_path
    else
      flash[:errors] = @question.errors.full_messages
      redirect_to new_question_path
    end




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

# Voting

    def upvote
    @question = Question.find(params[:id])
    @question.upvote_by @current_user
    redirect_to questions_path
  end

  def downvote
    @question = Question.find(params[:id])
    @question.downvote_by @current_user
    redirect_to questions_path
  end

  private
  def question_params
    params.require(:question).permit(:title, :body, :user_id, :planet_id, :user_type, :moon_id)
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
