class TacospotsController < ApplicationController
  before_action :set_tacospot, only: [:show, :edit, :update, :destroy]
  before_action :authorize, except: [:index, :show]

  def new
    @tacospot = Tacospot.new
  end

  def index
    @tacospots = Tacospot.all
    @users = User.all
  end

  def show
    @tacospot = set_tacospot
  end

  def create
    @tacospot = Tacospot.new(tacospot_params)
    @tacospot.user_id = current_user.id
    if @tacospot.save
      flash[:notice] = "New Taco Spot!"
      redirect_to tacospots_path
    else
      render :new
    end
  end

  def edit
    @tacospot = set_tacospot
  end

  def update
    @tacospot = set_tacospot
    if @tacospot.update_attributes(tacospot_params)
      redirect_to tacospot_path
    else
      render :edit
    end
  end

  def destroy
    @tacospot = set_tacospot
    @tacospot.destroy
    redirect_to tacospots_path
  end

private

  def set_tacospot
    @tacospot = Tacospot.find(params[:id])
  end

  def tacospot_params
    params.require(:tacospot).permit(:name, :street_address, :city, :state, :zip, :hours, :cash_only, :image_url, :user_id)
  end

end
