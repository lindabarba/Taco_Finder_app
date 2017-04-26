class CommentsController < ApplicationController

  def new
    @comment = Comment.new
    @tacospots = Tacospot.all
  end

  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      session[:tacospot_id] = @comment.id
      redirect_to tacospot_path
    else
      render :new
    end
  end

  def show
    @tacospot = Tacospot.find(params[:id])
    @comment = Comment.new
  end

  def edit
    @comment = Comment.find(params[:id])
  end

  def update
    @comment = Comment.find(params[:id])
    if @comment.update_attributes(comment_params)
      redirect_to tacospot_path
    else
      render :edit
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to tacospot_path
  end

private

  def set_comment
    @comment = Comment.find(params[:id])
  end

  def comment_params
    params.require(:comment).permit(:content, :image_url, :favorite_taco, :comment_id)
  end

end

