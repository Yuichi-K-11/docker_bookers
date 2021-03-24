class BookersController < ApplicationController
  before_action :set_booker, only: %i[ show edit update destroy ]

  # GET /bookers or /bookers.json
  def index
    @bookers = Booker.all
  end

  # GET /bookers/1 or /bookers/1.json
  def show
  end

  # GET /bookers/new
  def new
    @booker = Booker.new
  end

  # GET /bookers/1/edit
  def edit
  end

  # POST /bookers or /bookers.json
  def create
    @booker = Booker.new(booker_params)

    respond_to do |format|
      if @booker.save
        format.html { redirect_to @booker, notice: "Booker was successfully created." }
        format.json { render :show, status: :created, location: @booker }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @booker.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bookers/1 or /bookers/1.json
  def update
    respond_to do |format|
      if @booker.update(booker_params)
        format.html { redirect_to @booker, notice: "Booker was successfully updated." }
        format.json { render :show, status: :ok, location: @booker }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @booker.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bookers/1 or /bookers/1.json
  def destroy
    @booker.destroy
    respond_to do |format|
      format.html { redirect_to bookers_url, notice: "Booker was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_booker
      @booker = Booker.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def booker_params
      params.require(:booker).permit(:title, :body)
    end
end
