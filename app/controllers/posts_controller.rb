class PostsController < ApplicationController
  resources :posts, only: [:index, :create]

  def index
    post = Post.all
    render json: post, status :ok
  end

  def create
    post = Post.create!(post_params)
    if post.valid?
      render json: post, status :accepted
    else
      render json: post.errors.full_messages
    end
  end

  private
  def post_params
    params.permit(:title , :content, :summary, :category)
  end
end

end
