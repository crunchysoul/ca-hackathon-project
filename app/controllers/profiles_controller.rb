class ProfilesController < ApplicationController
  before_action :set_profile, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /profiles
  # GET /profiles.json
  def index
    @profiles = Profile.all
  end

  # GET /profiles/1
  # GET /profiles/1.json
  def show
    redirect_to edit_profile_url if @profile.nil?

    @no_trade_owned_products = Listing.where(user_id: current_user, category_id: 'products', status: 0, item_type: 'no-trade')
    @no_trade_owned_skills = current_user.listings.where(category_id: 'skills', status: 0, item_type: 'no-trade')
    @trade_owned_products_or_skills = current_user.listings.where(category_id: ['skills', 'products'], status: 0, item_type: 'trade')
    # @trade_wanted_products = current_user.listings.where(category_id: 'skills', status: 1, item_type: 'trade')
    @trade_wanted_skills = current_user.listings.where(category_id: 'skills', status: 1)
    @trade_wanted_products = current_user.listings.where(category_id: 'products', status: 1)

  end

  # GET /profiles/new
  def new
    @profile = Profile.new
  end

  # GET /profiles/1/edit
  def edit
    @profile = Profile.find_or_initialize_by(user: current_user)
  end

  # POST /profiles
  # POST /profiles.json
  def create
    @profile = Profile.new(profile_params)
    @profile.user = current_user

    respond_to do |format|
      if @profile.save
        format.html { redirect_to @profile, notice: 'Profile was successfully created.' }
        format.json { render :show, status: :created, location: @profile }
      else
        format.html { render :new }
        format.json { render json: @profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /profiles/1
  # PATCH/PUT /profiles/1.json
  def update
    respond_to do |format|
      if @profile.update(profile_params)
        format.html { redirect_to @profile, notice: 'Profile was successfully updated.' }
        format.json { render :show, status: :ok, location: @profile }
      else
        format.html { render :edit }
        format.json { render json: @profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /profiles/1
  # DELETE /profiles/1.json
  def destroy
    @profile.destroy
    respond_to do |format|
      format.html { redirect_to profiles_url, notice: 'Profile was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_profile
      @profile = Profile.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def profile_params
      params.require(:profile).permit(:first_name, :last_name, :date_of_birth, :city, :country, :contact_number, :bio, :photo, :user_id)
    end

    def performing_follow?
      # Is there a 'toggle_follow' field in the form?
      params.require(:user)[:toggle_follow].present?
    end
end
