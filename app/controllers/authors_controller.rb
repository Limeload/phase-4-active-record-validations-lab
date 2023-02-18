class AuthorsController < ApplicationController
  resources :authors, only: [:index, :create]

  def index
    author = Author.all
    render json: author, status :ok
  end

  def create
    author = Author.create!(author_params)
    if author.valid?
      render json: author, status :accepted
    else
      render json: author.errors.full_messages
    end
  end

  private
  def author_params
    params.permit(:name , :phone_number)
  end
end
