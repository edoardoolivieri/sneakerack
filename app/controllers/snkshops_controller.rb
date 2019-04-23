class SnkshopsController < ApplicationController


  def index
    @shops = Snkshop.all
    @shops = policy_scope(Snkshop).order(created_at: :desc)
  end

  def show
    @shop = Snkshop.find(params[:id])
    authorize @shop
  end
end
