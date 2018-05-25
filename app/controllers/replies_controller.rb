class RepliesController < ApplicationController
  before_action :check_if_logged_in, except: [:index, :show]

  def new
    @reply = Reply.new
  end

  def create
    # raise 'hell'
    reply = Reply.new body: params[:reply][:body]
    reply.user = @current_user
    reply.question_id = params[:question_id]


    reply.save

    if reply.persisted?
      redirect_to questions_path
    else
      flash[:errors] = reply.errors.full_messages
      redirect_to question_path params[:question_id]
    end
  end

  def index
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
