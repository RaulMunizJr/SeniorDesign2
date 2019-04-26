class SipocsController < ApplicationController
  before_action :set_sipoc, only: [:show, :edit, :update, :destroy]

  # GET /sipocs
  # GET /sipocs.json
  def index
    @sipocs = Sipoc.all
  end

  # GET /sipocs/1
  # GET /sipocs/1.json
  def show
  end

  # GET /sipocs/new
  def new
    @sipoc = Sipoc.new
  end

  # GET /sipocs/1/edit
  def edit
  end

  # POST /sipocs
  # POST /sipocs.json
  def create
    @sipoc = Sipoc.new(sipoc_params)

    respond_to do |format|
      if @sipoc.save
        format.html { redirect_to @sipoc, notice: 'Sipoc was successfully created.' }
        format.json { render :show, status: :created, location: @sipoc }
      else
        format.html { render :new }
        format.json { render json: @sipoc.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sipocs/1
  # PATCH/PUT /sipocs/1.json
  def update
    respond_to do |format|
      if @sipoc.update(sipoc_params)
        format.html { redirect_to @sipoc, notice: 'Sipoc was successfully updated.' }
        format.json { render :show, status: :ok, location: @sipoc }
      else
        format.html { render :edit }
        format.json { render json: @sipoc.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sipocs/1
  # DELETE /sipocs/1.json
  def destroy
    @sipoc.destroy
    respond_to do |format|
      format.html { redirect_to sipocs_url, notice: 'Sipoc was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sipoc
      @sipoc = Sipoc.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sipoc_params
      params.fetch(:sipoc, {})
    end
end
