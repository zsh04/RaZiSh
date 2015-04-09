class RazishesController < ApplicationController
  before_action :set_razish, only: [:show, :edit, :update, :destroy]

  # GET /razishes
  # GET /razishes.json
  def index
    @razishes = Razish.all
  end

  # GET /razishes/1
  # GET /razishes/1.json
  def show
  end

  # GET /razishes/new
  def new
    @razish = Razish.new
  end

  # GET /razishes/1/edit
  def edit
  end

  # POST /razishes
  # POST /razishes.json
  def create
    @razish = Razish.new(razish_params)

    respond_to do |format|
      if @razish.save
        format.html { redirect_to @razish, notice: 'Razish was successfully created.' }
        format.json { render :show, status: :created, location: @razish }
      else
        format.html { render :new }
        format.json { render json: @razish.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /razishes/1
  # PATCH/PUT /razishes/1.json
  def update
    respond_to do |format|
      if @razish.update(razish_params)
        format.html { redirect_to @razish, notice: 'Razish was successfully updated.' }
        format.json { render :show, status: :ok, location: @razish }
      else
        format.html { render :edit }
        format.json { render json: @razish.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /razishes/1
  # DELETE /razishes/1.json
  def destroy
    @razish.destroy
    respond_to do |format|
      format.html { redirect_to razishes_url, notice: 'Razish was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_razish
      @razish = Razish.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def razish_params
      params[:razish]
    end
end
