class CommentsController < ApplicationController

  def edit
    @comment = Comment.find(params[:id])
  end

  def create
    @bathroom = Bathroom.find(params[:bathroom_id])
    @comment = @bathroom.comments.create(params[:comment])

    redirect_to bathroom_path(@bathroom)
  end

  def update
    @bathroom = Bathroom.find(params[:bathroom_id])
    @comment = @bathroom.comments.find(params[:comment_id])

    respond_to do |format|
      if @comment.update_attributes(params[:comment])
        format.html { redirect_to @comment, notice: 'Comment was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
  end
  def destroy
    @bathroom = Bathroom.find(params[:bathroom_id])
    @comment = @bathroom.comments.find(params[:id])
    @comment.destroy

    respond_to do |format|
      format.html { redirect_to bathroom_path(@bathroom) }
      format.json { head :no_content }
    end
  end
end
