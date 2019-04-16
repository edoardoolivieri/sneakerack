class UsersController < ApplicationController
  before_action :authenticate_user!

  def index
    if params[:query].present?
      @users = policy_scope(User).order(created_at: :desc)
      @user.sneakers = Sneaker.search(params[:query])
      # sql_query = "name LIKE :query OR syllabus LIKE :query"
      # @sneakers = Sneaker.where(sql_query, query: "%#{params[:query]}%")
    else
      @user.sneakers = Sneaker.all
      @user.sneakers = policy_scope(Sneaker).order(created_at: :desc)
    end
  end

   def show
    @user = User.find(params[:id])
    authorize @user
   end
end
