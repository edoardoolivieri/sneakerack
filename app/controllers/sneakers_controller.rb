class SneakersController < ApplicationController
  before_action :authenticate_user!
  def index
    if params[:query].present?
      # sneakers_name = params[:query].downcase
      @sneakers = Sneaker.search(params[:query])
      # sql_query = "name LIKE :query OR syllabus LIKE :query"
      # @sneakers = Sneaker.where(sql_query, query: "%#{params[:query]}%")
    else
      @sneakers = Sneaker.all
      @sneakers = policy_scope(Sneaker).order(created_at: :desc)
    end
  end

  def show
    @sneaker = Sneaker.find(params[:id])
    authorize @sneaker
  end

  def new
    @sneaker = Sneaker.new
    authorize @sneaker
  end

  def create
    @sneaker = Sneaker.new(sneaker_params)
    @sneaker.user = current_user
    authorize @sneaker
    if @sneaker.save
       redirect_to sneaker_path(@sneaker), notice: 'Your Sneaker was succesfully create'
    else
      render :new
    end
  end

  def edit
    @sneaker = Sneaker.find(params[:id])
    authorize @sneaker
  end

  def update
    @sneaker = Sneaker.find(params[:id])
    @sneaker.update(sneaker_params)
    authorize @sneaker
    if @sneaker.save
      redirect_to sneaker_path, notice: 'Your Sneaker was succesfully update'
    else
      render :edit
    end
  end

  def destroy
    @sneaker = Sneaker.find(params[:id])
    @sneaker.destroy
    authorize @sneaker
    redirect_to sneakers_path, notice: 'Your Sneaker was succesfully destroy'
  end

  def sneaker_params
    params.require(:sneaker).permit(:name, :description, :brand, :price_per_sneaker, :size, :photo)
  end
end
