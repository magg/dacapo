class TetramodsController < ApplicationController
  # GET /tetramods
  # GET /tetramods.json
  def index
    @tetramods = Tetramod.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tetramods }
    end
  end

  # GET /tetramods/1
  # GET /tetramods/1.json
  def show
    @tetramod = Tetramod.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @tetramod }
    end
  end

  # GET /tetramods/new
  # GET /tetramods/new.json
  def new
    @tetramod = Tetramod.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @tetramod }
    end
  end

  # GET /tetramods/1/edit
  def edit
    @tetramod = Tetramod.find(params[:id])
  end

  # POST /tetramods
  # POST /tetramods.json
  def create
    @tetramod = Tetramod.new(params[:tetramod])

    respond_to do |format|
      if @tetramod.save
        format.html { redirect_to @tetramod, notice: 'Tetramod was successfully created.' }
        format.json { render json: @tetramod, status: :created, location: @tetramod }
      else
        format.html { render action: "new" }
        format.json { render json: @tetramod.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /tetramods/1
  # PUT /tetramods/1.json
  def update
    @tetramod = Tetramod.find(params[:id])

    respond_to do |format|
      if @tetramod.update_attributes(params[:tetramod])
        format.html { redirect_to @tetramod, notice: 'Tetramod was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @tetramod.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tetramods/1
  # DELETE /tetramods/1.json
  def destroy
    @tetramod = Tetramod.find(params[:id])
    @tetramod.destroy

    respond_to do |format|
      format.html { redirect_to tetramods_url }
      format.json { head :no_content }
    end
  end
end
