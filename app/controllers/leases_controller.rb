class LeasesController < ApplicationController
  before_action :set_lease, only: [:show, :edit, :update, :destroy]

  # GET /leases
  # GET /leases.json
  def index
    @leases = Lease.all
  end

  # GET /leases/1
  # GET /leases/1.json
  def show
  end

  # GET /leases/new
  def new
    @lease = Lease.new
    unless user_signed_in? 
      flash[:notice] = "You don't have access to that page!"
      redirect_to root_path
      return
    end
  end

  # GET /leases/1/edit
  def edit
    unless user_signed_in? && current_user.admin?
      flash[:notice] = "You don't have access to that page!"
      redirect_to root_path
      return
    end
  end

  # POST /leases
  # POST /leases.json
  def create
    unless params[ :client_id ]
      params[ :client_id ] = current_user.id
    end 
    @lease = Lease.new(lease_params)
    @lease.user_id = current_user.id
    respond_to do |format|
      if @lease.save!
        format.html { redirect_to @lease, notice: 'Lease was successfully created.' }
        format.json { render :show, status: :created, location: @lease }
      else
        format.html { render :new }
        format.json { render json: @lease.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /leases/1
  # PATCH/PUT /leases/1.json
  def update
    unless params[ :client_id ]
      params[ :client_id ] = current_user.id
    end 
    respond_to do |format|
      if @lease.update(lease_params)
        format.html { redirect_to @lease, notice: 'Lease was successfully updated.' }
        format.json { render :show, status: :ok, location: @lease }
      else
        format.html { render :edit }
        format.json { render json: @lease.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /leases/1
  # DELETE /leases/1.json
  def destroy
    @lease.destroy
    respond_to do |format|
      format.html { redirect_to leases_url, notice: 'Lease was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lease
      @lease = Lease.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lease_params
      params.require(:lease).permit(:price, :lease_start_date, :lease_end_date, :art_id, :client_id, :user_id, :lease_id)
    end
end
