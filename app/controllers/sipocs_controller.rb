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
    @sipoc = Sipoc.find(params[:id])
  end

  # POST /sipocs
  # POST /sipocs.json
  def create
    @sipoc = Sipoc.new(sipoc_params)
    @sipoc.user = User.find(1)

    if @sipoc.save
			flash[:notice] = "Your SIPOC has been saved to your profile!"
			redirect_to dashboard_path
		else
			render:new
		end
  end

  # PATCH/PUT /sipocs/1
  # PATCH/PUT /sipocs/1.json
  def update
    @sipoc = sipoc.find(params[:id])

    if @sipoc.update(sipoc_params)
			flash[:notice] = "Your SIPOC has been updated successfully!"
			redirect_to profile_path(@sipoc)
		else
			render :edit
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
