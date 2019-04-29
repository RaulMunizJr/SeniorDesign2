class SipocsController < ApplicationController
  before_action :set_sipoc, only: [:show, :edit, :update, :destroy]

  # GET /sipocs
  # GET /sipocs.json
  def index
    session[:load_part] = 1
  	redirect_to dashboard_path
  end

  # GET /sipocs/1
  # GET /sipocs/1.json
  def show
    @sipoc = Sipoc.find(params[:id])
  end

  # GET /sipocs/new
  def new
    @sipoc = Sipoc.new
  end

  # GET /sipocs/1/edit
  def edit
    @sipoc = sipoc.find(params[:id])
  end

  # POST /sipocs
  # POST /sipocs.json
  def create
    @sipoc = Sipoc.new(sipoc_params)
    @sipoc.user = User.find(1)

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
    @sipoc = sipoc.find(params[:id])

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
      params.require(:sipoc).permit(:file_name, :supplier1, :input1, :process_requirement1, :process1, :output1, :customer_requirement1, :customer1, 
                                    :supplier2, :input2, :process_requirement2, :process2, :output2, :customer_requirement2, :customer2,
                                    :supplier3, :input3, :process_requirement3, :process3, :output3, :customer_requirement3, :customer3,
                                    :supplier4, :input4, :process_requirement4, :process4, :output4, :customer_requirement4, :customer4,
                                    :supplier5, :input5, :process_requirement5, :process5, :output5, :customer_requirement5, :customer5)
    end
end
