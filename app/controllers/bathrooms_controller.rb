class BathroomsController < ApplicationController
  # GET /bathrooms
  # GET /bathrooms.json
  def index
    @bathrooms = Bathroom.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @bathrooms }
    end
  end

  # GET /bathrooms/1
  # GET /bathrooms/1.json
  def show
    @bathroom = Bathroom.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @bathroom }
    end
  end

  # GET /bathrooms/new
  # GET /bathrooms/new.json
  def new
    @bathroom = Bathroom.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @bathroom }
    end
  end

  # GET /bathrooms/1/edit
  def edit
    @bathroom = Bathroom.find(params[:id])
  end

  # POST /bathrooms
  # POST /bathrooms.json
  def create
    @bathroom = Bathroom.new(params[:bathroom])

    respond_to do |format|
      if @bathroom.save
        format.html { redirect_to @bathroom, notice: 'Bathroom was successfully created.' }
        format.json { render json: @bathroom, status: :created, location: @bathroom }
      else
        format.html { render action: "new" }
        format.json { render json: @bathroom.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /bathrooms/1
  # PUT /bathrooms/1.json
  def update
    @bathroom = Bathroom.find(params[:id])

    respond_to do |format|
      if @bathroom.update_attributes(params[:bathroom])
        format.html { redirect_to @bathroom, notice: 'Bathroom was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @bathroom.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bathrooms/1
  # DELETE /bathrooms/1.json
  def destroy
    @bathroom = Bathroom.find(params[:id])
    @bathroom.destroy

    respond_to do |format|
      format.html { redirect_to bathrooms_url }
      format.json { head :no_content }
    end
  end
end
