class TopMenusController < ApplicationController
  before_action :set_top_menu, only: [:show, :edit, :update, :destroy]

  # GET /top_menus
  # GET /top_menus.json
  def index
    @top_menus = TopMenu.all
  end

  def tree
    top_menus = TopMenu.all
    
    respond_to do |format|
      format.json { render json: top_menus.to_json(include: :sub_menus) }
    end
  end

  # GET /top_menus/1
  # GET /top_menus/1.json
  def show
  end

  # GET /top_menus/new
  def new
    @top_menu = TopMenu.new
  end

  # GET /top_menus/1/edit
  def edit
  end

  # POST /top_menus
  # POST /top_menus.json
  def create
    @top_menu = TopMenu.new(top_menu_params)

    respond_to do |format|
      if @top_menu.save
        format.html { redirect_to @top_menu, notice: 'Top menu was successfully created.' }
        format.json { render :show, status: :created, location: @top_menu }
      else
        format.html { render :new }
        format.json { render json: @top_menu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /top_menus/1
  # PATCH/PUT /top_menus/1.json
  def update
    respond_to do |format|
      if @top_menu.update(top_menu_params)
        format.html { redirect_to @top_menu, notice: 'Top menu was successfully updated.' }
        format.json { render :show, status: :ok, location: @top_menu }
      else
        format.html { render :edit }
        format.json { render json: @top_menu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /top_menus/1
  # DELETE /top_menus/1.json
  def destroy
    @top_menu.destroy
    respond_to do |format|
      format.html { redirect_to top_menus_url, notice: 'Top menu was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_top_menu
      @top_menu = TopMenu.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def top_menu_params
      params.require(:top_menu).permit(:title, :description, :icon)
    end
end
