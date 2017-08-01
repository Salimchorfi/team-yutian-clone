class CommentsController < ApplicationController

  def new
    @comment = Comment.new
  end

  def create

    @comment = Comment.new(comment_params)
    @jam = Jam.find(params[:jam_id])
    @comment.jam = @jam
    @comment.user_id = current_user.id


    if @comment.save
      respond_to do |format|
        format.html { redirect_to jam_path(@jam) }
        format.js
      end
    else
      flash[:alert] = 'This city is currently not available.'
      respond_to do |format|
        format.html { render 'jams/show' }
        format.js
      end
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:content,:user_id,:jam_id)
  end

end
