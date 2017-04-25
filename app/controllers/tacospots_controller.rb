class TacospotsController < ApplicationController
  before_action :set_tacospot, only: [:show, :edit, :update, :destroy]
  before_action :authorize, except: [:index, :show]

  def index
    @tacospots = Tacospot.all
  end

  def show
  end

  def new
    @tacospot = Tacospot.new
  end

  def edit
  end

  def create
    @tacospot = Tacospot.new(tacospot_params)

    respond_to do |format|
      if @tacospot.save
        format.html { redirect_to @tacospot, notice: 'Taco Spot was successfully created.' }
        format.json { render :show, status: :created, location: @tacospot }
      else
        format.html { render :new }
        format.json { render json: @tacospot.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @tacospot.update(tacospot_params)
        format.html { redirect_to @tacospot, notice: 'Taco Spot was successfully updated.' }
        format.json { render :show, status: :ok, location: @tacospot }
      else
        format.html { render :edit }
        format.json { render json: @tacospot.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @tacospot.destroy
    respond_to do |format|
      format.html { redirect_to tacospots_url, notice: 'Taco Spot was successfully deleted.' }
      format.json { head :no_content }
    end
  end

  private

    def set_tacospot
      @tacospot = Tacospot.find(params[:id])
    end

    def tacospot_params
      params.require(:tacospot).permit(:name, :street_address, :city, :state, :zip, :hours, :cash_only, :image_url)
    end

end
