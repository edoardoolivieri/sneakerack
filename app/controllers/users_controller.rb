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

  def new
    @user = User.new
    authorize @user
  end

   def create
    @user = Sneaker.new(user_params)
    authorize @user
   end

   def update
    @user = User.find(params[:id])
    @user.update(user_params)
    authorize @user
   end

    def user_params
    params.require(:user).permit(:email, :username, :password)
  end
end
