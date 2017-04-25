class TacospotsController < ApplicationController
  before_action :set_tacospot, only: [:show, :edit, :update, :destroy]
  before_action :authorize, except: [:index, :show]

  def index
    @tacospots = Tacospot.all
    @users = User.all
  end

  def show
  end

  def new
    @tacospot = Tacospot.new
  end

  def create
    @tacospot = Tacospot.new(tacospot_params)
    if @tacospot.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
    @tacospot = Tacospot.find(params[:id])
  end

  def update
    @tacospot = Tacospot.find(params[:id])
    if @tacospot.update_attributes(tacospot_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  def destroy
    @tacospot = Tacospot.find(params[:id])
    @tacospot.destroy
    redirect_to root_path
  end

  private

    # def set_tacospot
    #   @tacospot = Tacospot.find(params[:id])
    # end

    def tacospot_params
      params.require(:tacospot).permit(:name, :street_address, :city, :state, :zip, :hours, :cash_only, :image_url)
    end

end
