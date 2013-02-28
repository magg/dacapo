class MayorsController < ApplicationController
  # GET /mayors
  # GET /mayors.json
  def index
    @mayors = Mayor.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @mayors }
    end
  end

  # GET /mayors/1
  # GET /mayors/1.json
  def show
    @mayor = Mayor.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @mayor }
    end
  end

  # GET /mayors/new
  # GET /mayors/new.json
  def new
    @mayor = Mayor.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @mayor }
    end
  end

  # GET /mayors/1/edit
  def edit
    @mayor = Mayor.find(params[:id])
  end

  # POST /mayors
  # POST /mayors.json
  def create
    @mayor = Mayor.new(params[:mayor])

    respond_to do |format|
      if @mayor.save
        format.html { redirect_to @mayor, notice: 'Mayor was successfully created.' }
        format.json { render json: @mayor, status: :created, location: @mayor }
      else
        format.html { render action: "new" }
        format.json { render json: @mayor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /mayors/1
  # PUT /mayors/1.json
  def update
    @mayor = Mayor.find(params[:id])

    respond_to do |format|
      if @mayor.update_attributes(params[:mayor])
        format.html { redirect_to @mayor, notice: 'Mayor was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @mayor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mayors/1
  # DELETE /mayors/1.json
  def destroy
    @mayor = Mayor.find(params[:id])
    @mayor.destroy

    respond_to do |format|
      format.html { redirect_to mayors_url }
      format.json { head :no_content }
    end
  end
end
