class CommentsController < ApplicationController
  before_action :set_post

  def create
    @comment = @post.comments.build(comment_params)
    @comment.user_id = current_user.id if user_signed_in?
    
    
    if @comment.save
      redirect_to @post, notice: 'Has postulado correctamente a esta oferta. Te contactaremos pronto, ¡Buena suerte!'
    else
      redirect_to @post, notice: 'Debes tener una cuenta válida para poder postular.'
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:content)
  end

  def set_post
    @post = Post.find(params[:post_id])
  end
end
