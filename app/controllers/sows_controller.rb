class SowsController < ApplicationController
  # GET /sows
  # GET /sows.json
  def index
    @sows = Sow.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @sows }
    end
  end

  # GET /sows/1
  # GET /sows/1.json
  def show
    @sow = Sow.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @sow }
    end
  end

  # GET /sows/new
  # GET /sows/new.json
  def new
    @sow = Sow.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @sow }
    end
  end

  # GET /sows/1/edit
  def edit
    @sow = Sow.find(params[:id])
  end

  # POST /sows
  # POST /sows.json
  def create
    @sow = Sow.new(params[:sow])

    respond_to do |format|
      if @sow.save
        format.html { redirect_to @sow, notice: 'Sow was successfully created.' }
        format.json { render json: @sow, status: :created, location: @sow }
      else
        format.html { render action: "new" }
        format.json { render json: @sow.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /sows/1
  # PUT /sows/1.json
  def update
    @sow = Sow.find(params[:id])

    respond_to do |format|
      if @sow.update_attributes(params[:sow])
        format.html { redirect_to @sow, notice: 'Sow was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @sow.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sows/1
  # DELETE /sows/1.json
  def destroy
    @sow = Sow.find(params[:id])
    @sow.destroy

    respond_to do |format|
      format.html { redirect_to sows_url }
      format.json { head :no_content }
    end
  end
end
