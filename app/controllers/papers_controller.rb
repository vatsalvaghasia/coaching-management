class PapersController < ApplicationController
  load_and_authorize_resource
  # before_action :logged_in_user
  before_action :set_paper, only: %i[ show edit update destroy ]
  # GET /papers or /papers.json
  # def logged_in_user
  #   if !(current_user && current_user.has_role?(:admin))
  #     redirect_to root_path
  #   end
  # end
  def index
    if params.has_key?(:category)
      @category = Category.find_by_name(params[:category])
      @papers = Paper.where(category: @category)
    else
    @papers = Paper.all
  end
  end

  # GET /papers/1 or /papers/1.json
  def show
  end

  # GET /papers/new
  def new
    @paper = Paper.new
  end

  # GET /papers/1/edit
  def edit
  end

  # POST /papers or /papers.json
  def create
    @paper = Paper.new(paper_params)

    respond_to do |format|
      if @paper.save
        format.html { redirect_to @paper, notice: "Paper was successfully created." }
        format.json { render :show, status: :created, location: @paper }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @paper.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /papers/1 or /papers/1.json
  def update
    respond_to do |format|
      if @paper.update(paper_params)
        format.html { redirect_to @paper, notice: "Paper was successfully updated." }
        format.json { render :show, status: :ok, location: @paper }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @paper.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /papers/1 or /papers/1.json
  def destroy
    @paper.destroy
    respond_to do |format|
      format.html { redirect_to papers_url, notice: "Paper was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_paper
      @paper = Paper.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def paper_params
      params.require(:paper).permit(:title, :description, :category_id, :month_id, :year_id, :file)
    end
end
