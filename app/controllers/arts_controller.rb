class ArtsController < ApplicationController
  before_action :set_art, only: [:show, :edit, :update, :destroy,]

  # GET /arts
  # GET /arts.json
  def index
    @arts = Art.all
  end

  # GET /arts/1
  # GET /arts/1.json
  def show
    # @arts = Art.all
  end

  # GET /arts/new
  def new
    @art = Art.new
    unless user_signed_in? 
      flash[:notice] = "You don't have access to that page!"
      redirect_to root_path
      return
    end
  end

  # GET /arts/1/edit
  def edit
    unless user_signed_in? && current_user.admin?
      flash[:notice] = "You don't have access to that page!"
      redirect_to root_path
      return
    end
  end

  # POST /arts
  # POST /arts.json
  def create
    @art = Art.new(art_params)
    Art.transaction do
      @art.save
      p params[:art][:keyword_ids]
      (params[:art][:keyword_ids]||[]).each do |keyword_id|
        p keyword_id + " being added!!!"
        @art.keywords << Keyword.find(keyword_id)
      end
    end
    respond_to do |format|
      if @art.id
        format.html { redirect_to @art, notice: 'Art was successfully created.' }
        format.json { render :show, status: :created, location: @art }
      else
        format.html { render :new }
        format.json { render json: @art.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /arts/1
  # PATCH/PUT /arts/1.json
  def update
    last_edit = @art.updated_at
    Art.transaction do
      @art.update(art_params)
      active_keyword_ids = @art.keywords.map{|k| k.id}
      new_keyword_ids = params[:art][:keyword_ids].map{|k_id| k_id.to_i}
      # remove keywords were in the database that weren't requested
      (active_keyword_ids - new_keyword_ids).each do |k_id|
        p k_id
        ArtKeyword.find_by(art_id: @art.id, keyword_id: k_id ).delete
      end
      # add keywords that aren't already in the database
      (new_keyword_ids - active_keyword_ids).each do |k_id|
        ArtKeyword.create(art_id: @art.id, keyword_id: k_id )
      end
    end
    respond_to do |format|
      if last_edit < @art.updated_at
        format.html { redirect_to @art, notice: 'Art was successfully updated.' }
        format.json { render :show, status: :ok, location: @art }
      else
        format.html { render :edit }
        format.json { render json: @art.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /arts/1
  # DELETE /arts/1.json
  def destroy
    @art.destroy
    respond_to do |format|
      format.html { redirect_to arts_url, notice: 'Art was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_art
      @art = Art.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def art_params
      params.require(:art).permit(:name, :completed_at, :user_id, :artist_id, :image, :keyword_ids)
    end
end
