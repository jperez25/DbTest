class CommitiesController < ApplicationController
  before_action :set_commity, only: [:show, :edit, :update, :destroy]

  # GET /commities
  # GET /commities.json
  def index
    @commities = Commity.all
  end

  # GET /commities/1
  # GET /commities/1.json
  def show
  end

  # GET /commities/new
  def new
    @commity = Commity.new
  end

  # GET /commities/1/edit
  def edit
  end

  # POST /commities
  # POST /commities.json
  def create
    @commity = Commity.new(commity_params)

    respond_to do |format|
      if @commity.save
        format.html { redirect_to @commity, notice: 'Commity was successfully created.' }
        format.json { render :show, status: :created, location: @commity }
      else
        format.html { render :new }
        format.json { render json: @commity.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /commities/1
  # PATCH/PUT /commities/1.json
  def update
    respond_to do |format|
      if @commity.update(commity_params)
        format.html { redirect_to @commity, notice: 'Commity was successfully updated.' }
        format.json { render :show, status: :ok, location: @commity }
      else
        format.html { render :edit }
        format.json { render json: @commity.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /commities/1
  # DELETE /commities/1.json
  def destroy
    @commity.destroy
    respond_to do |format|
      format.html { redirect_to commities_url, notice: 'Commity was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_commity
      @commity = Commity.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def commity_params
      params.require(:commity).permit(:name)
    end
end
