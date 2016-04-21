class CommentsController < ApplicationController
  def create
    @recipe = Recipe.find(params[:recipe_id])
    @comment = @recipe.comments.build(comment_params)

    if @comment.save
      render 'create.js', layout: false
    else
      render 'recipes/show'
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:content)
  end
end
