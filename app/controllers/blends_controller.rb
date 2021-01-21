class BlendsController < ApplicationController
  before_action :set_blend, only: [:show, :edit, :update, :destroy]
  
  # GET /blends
  # GET /blends.json
  def index
    @blends = Blend.all
  end

  # GET /blends/1
  # GET /blends/1.json
  def show
  end

  # GET /blends/new
  def new
    @blend = Blend.new
  end

  # GET /blends/1/edit
  def edit
  end

  # POST /blends
  # POST /blends.json
  def create
    @blend = Blend.new(blend_params)
    
    respond_to do |format|
      if @blend.save
        format.html { redirect_to @blend, notice: 'Blend was successfully created.' }
        format.json { render :show, status: :created, location: @blend }
      else
        format.html { render :new }
        format.json { render json: @blend.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /blends/1
  # PATCH/PUT /blends/1.json
  def update
    respond_to do |format|
      if @blend.update(blend_params)
        format.html { redirect_to @blend, notice: 'Blend was successfully updated.' }
        format.json { render :show, status: :ok, location: @blend }
      else
        format.html { render :edit }
        format.json { render json: @blend.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /blends/1
  # DELETE /blends/1.json
  def destroy
    @blend.destroy
    respond_to do |format|
      format.html { redirect_to blends_url, notice: 'Blend was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_blend
      @blend = Blend.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def blend_params
      params.fetch(:blend, :strain_id)
      params.require(:blend).permit(:strain_id, :wine_id, :concentration)
    end
end
