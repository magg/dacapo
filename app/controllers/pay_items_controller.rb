class PayItemsController < ApplicationController
  # GET /pay_items
  # GET /pay_items.json
  def index
    @pay_items = PayItem.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @pay_items }
    end
  end

  # GET /pay_items/1
  # GET /pay_items/1.json
  def show
    @pay_item = PayItem.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @pay_item }
    end
  end

  # GET /pay_items/new
  # GET /pay_items/new.json
  def new
    @pay_item = PayItem.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @pay_item }
    end
  end

  # GET /pay_items/1/edit
  def edit
    @pay_item = PayItem.find(params[:id])
  end

  # POST /pay_items
  # POST /pay_items.json
  def create
    @pay_item = PayItem.new(params[:pay_item])

    respond_to do |format|
      if @pay_item.save
        format.html { redirect_to @pay_item, notice: 'Pay item was successfully created.' }
        format.json { render json: @pay_item, status: :created, location: @pay_item }
      else
        format.html { render action: "new" }
        format.json { render json: @pay_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /pay_items/1
  # PUT /pay_items/1.json
  def update
    @pay_item = PayItem.find(params[:id])

    respond_to do |format|
      if @pay_item.update_attributes(params[:pay_item])
        format.html { redirect_to @pay_item, notice: 'Pay item was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @pay_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pay_items/1
  # DELETE /pay_items/1.json
  def destroy
    @pay_item = PayItem.find(params[:id])
    @pay_item.destroy

    respond_to do |format|
      format.html { redirect_to pay_items_url }
      format.json { head :no_content }
    end
  end
end
