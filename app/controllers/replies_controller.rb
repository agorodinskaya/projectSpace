class RepliesController < ApplicationController
  def new
    @reply = Reply.new
  end

  def create
    # raise 'hell'
    reply = Reply.new body: params[:reply][:body]
    reply.user = @current_user
    reply.question_id = params[:question_id]


    reply.save
    redirect_to replies_path
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
