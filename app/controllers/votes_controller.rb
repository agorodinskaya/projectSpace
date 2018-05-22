class VotesController < ApplicationController
  def new
    @vote = Vote.new
  end

  def create
    vote = Vote.new: params[:vote][:body]
    vote.user = @current_user
    vote.question_id = params[:question_id]


    vote.save
    redirect_to questions_path
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
