class TeacherProfilesController < ApplicationController
  load_and_authorize_resource
  before_action :set_teacher_profile, only: %i[ show edit update destroy ]

  # GET /teacher_profiles or /teacher_profiles.json
  def index
    @teacher_profiles = TeacherProfile.all
  end

  # GET /teacher_profiles/1 or /teacher_profiles/1.json
  def show
    if !(is_student_admin? || is_teacher_admin?)
      redirect_to errors_page404_path
    end
  end

  # GET /teacher_profiles/new
  def new
    @teacher_profile = TeacherProfile.new
  end

  # GET /teacher_profiles/1/edit
  def edit
  end

  # POST /teacher_profiles or /teacher_profiles.json
  def create
    @teacher_profile = TeacherProfile.new(teacher_profile_params)

    respond_to do |format|
      if @teacher_profile.save
        format.html { redirect_to @teacher_profile, notice: "Teacher profile was successfully created." }
        format.json { render :show, status: :created, location: @teacher_profile }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @teacher_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /teacher_profiles/1 or /teacher_profiles/1.json
  def update
    respond_to do |format|
      if @teacher_profile.update(teacher_profile_params)
        format.html { redirect_to @teacher_profile, notice: "Teacher profile was successfully updated." }
        format.json { render :show, status: :ok, location: @teacher_profile }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @teacher_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /teacher_profiles/1 or /teacher_profiles/1.json
  def destroy
    @teacher_profile.destroy
    respond_to do |format|
      format.html { redirect_to teacher_profiles_url, notice: "Teacher profile was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_teacher_profile
      @teacher_profile = TeacherProfile.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def teacher_profile_params
      params.require(:teacher_profile).permit(:name, :email, :experience, :subject, :mode_to_teach ,:avatar)
    end
end
