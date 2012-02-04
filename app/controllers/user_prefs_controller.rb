class UserPrefsController < ApplicationController

  before_filter :authenticate_user!

  # GET /user_prefs
  # GET /user_prefs.json
  def index
    @user_prefs = UserPref.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @user_prefs }
    end
  end

  # GET /user_prefs/1
  # GET /user_prefs/1.json
  def show
    @user_pref = UserPref.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @user_pref }
    end
  end

  # GET /user_prefs/new
  # GET /user_prefs/new.json
  def new
    @user_pref = UserPref.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @user_pref }
    end
  end

  # GET /user_prefs/1/edit
  def edit
    @user_pref = UserPref.find(params[:id])
  end

  # POST /user_prefs
  # POST /user_prefs.json
  def create
    @user_pref = UserPref.new(params[:user_pref])

    respond_to do |format|
      if @user_pref.save
        format.html { redirect_to @user_pref, notice: 'User pref was successfully created.' }
        format.json { render json: @user_pref, status: :created, location: @user_pref }
      else
        format.html { render action: "new" }
        format.json { render json: @user_pref.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /user_prefs/1
  # PUT /user_prefs/1.json
  def update
    @user_pref = UserPref.find(params[:id])

    respond_to do |format|
      if @user_pref.update_attributes(params[:user_pref])
        format.html { redirect_to @user_pref, notice: 'User pref was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @user_pref.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_prefs/1
  # DELETE /user_prefs/1.json
  def destroy
    @user_pref = UserPref.find(params[:id])
    @user_pref.destroy

    respond_to do |format|
      format.html { redirect_to user_prefs_url }
      format.json { head :no_content }
    end
  end
end
