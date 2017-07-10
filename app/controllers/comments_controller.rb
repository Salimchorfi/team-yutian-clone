class CommentsController < ApplicationController

  def new()
    @jam = Jam.find(params[:jam_id])
    @comment = Comment.new
  end

  def create()
    @comment = Comment.new(comment_params)
    @comment.jam = Jam.find(params[:Jam_id])
    @comment.save
  end

  private

  def comment_params
    params.require(:comment).permit(:content)
  end

end
