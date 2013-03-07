class SuperadminsController < ApplicationController
  # GET /superadmins
  # GET /superadmins.json
  def index
    @superadmins = Superadmin.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @superadmins }
    end
  end

  # GET /superadmins/1
  # GET /superadmins/1.json
  def show
    @superadmin = Superadmin.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @superadmin }
    end
  end

  # GET /superadmins/new
  # GET /superadmins/new.json
  def new
    @user = User.new
    @superadmin = Superadmin.new
    @superadmin.user = @user

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @superadmin }
    end
  end

  # GET /superadmins/1/edit
  def edit
    @superadmin = Superadmin.find(params[:id])
    @user = @superadmin.user
  end

  # POST /superadmins
  # POST /superadmins.json
  def create
    @user = User.new(params[:superadmin][:user_attributes])
    @superadmin = Superadmin.new(params[:superadmin])
    @superadmin.user = @user

    respond_to do |format|
      if @superadmin.save
        format.html { redirect_to @superadmin, notice: 'Superadmin was successfully created.' }
        format.json { render json: @superadmin, status: :created, location: @superadmin }
      else
        format.html { render action: "new" }
        format.json { render json: @superadmin.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /superadmins/1
  # PUT /superadmins/1.json
  def update
    @superadmin = Superadmin.find(params[:id])

    respond_to do |format|
      if @superadmin.update_attributes(params[:superadmin]) and
        @superadmin.user.update_attributes(params[:superadmin][:user_attributes])
        format.html { redirect_to @superadmin, notice: 'Superadmin was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @superadmin.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /superadmins/1
  # DELETE /superadmins/1.json
  def destroy
    @superadmin = Superadmin.find(params[:id])
    id = @admin.user_id
    @user = User.find(id)
    @user.destroy
    
    respond_to do |format|
      format.html { redirect_to superadmins_url }
      format.json { head :no_content }
    end
  end
end
