class IpNamesController < ApplicationController
  before_action :set_ip_name, only: [:show, :edit, :update, :destroy]

  # GET /ip_names
  # GET /ip_names.json
  def index
    @ip_names = IpName.all
  end

  # GET /ip_names/1
  # GET /ip_names/1.json
  def show
  end

  # GET /ip_names/new
  def new
    @ip_name = IpName.new
  end

  # GET /ip_names/1/edit
  def edit
  end

  # POST /ip_names
  # POST /ip_names.json
  def create
    @ip_name = IpName.new(ip_name_params)

    respond_to do |format|
      if @ip_name.save
        format.html { redirect_to @ip_name, notice: 'Ip name was successfully created.' }
        format.json { render :show, status: :created, location: @ip_name }
      else
        format.html { render :new }
        format.json { render json: @ip_name.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ip_names/1
  # PATCH/PUT /ip_names/1.json
  def update
    respond_to do |format|
      if @ip_name.update(ip_name_params)
        format.html { redirect_to @ip_name, notice: 'Ip name was successfully updated.' }
        format.json { render :show, status: :ok, location: @ip_name }
      else
        format.html { render :edit }
        format.json { render json: @ip_name.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ip_names/1
  # DELETE /ip_names/1.json
  def destroy
    @ip_name.destroy
    respond_to do |format|
      format.html { redirect_to ip_names_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ip_name
      @ip_name = IpName.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ip_name_params
      params.require(:ip_name).permit(:name, :is_valid)
    end
end
