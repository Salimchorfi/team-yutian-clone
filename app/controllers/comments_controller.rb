class CommentsController < ApplicationController

  def new()
    @jam = Jam.find(params[:jam_id])
    @comment = Comment.new
  end

  def create()
    @comment = Comment.new(comment_params)
    @comment.jam = Jam.find(params[:Jam_id])
    @comment.save

    if @review.save
      respond_to do |format|
        format.html { redirect_to jam_path(@jam) }
        format.js
      end
    else
      respond_to do |format|
        format.html { render 'jams/show' }
        format.js
      end
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:content)
  end

end
