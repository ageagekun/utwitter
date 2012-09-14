class UtwitsController < ApplicationController
  # GET /utwits
  # GET /utwits.json
  def index
    @utwits = Utwit.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @utwits }
    end
  end

  # GET /utwits/1
  # GET /utwits/1.json
  def show
    @utwit = Utwit.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @utwit }
    end
  end

  # GET /utwits/new
  # GET /utwits/new.json
  def new
    @utwit = Utwit.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @utwit }
    end
  end

  # GET /utwits/1/edit
  def edit
    @utwit = Utwit.find(params[:id])
  end

  # POST /utwits
  # POST /utwits.json
  def create
    @utwit = Utwit.new(params[:utwit])

    respond_to do |format|
      if @utwit.save
        format.html { redirect_to @utwit, notice: 'Utwit was successfully created.' }
        format.json { render json: @utwit, status: :created, location: @utwit }
      else
        format.html { render action: "new" }
        format.json { render json: @utwit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /utwits/1
  # PUT /utwits/1.json
  def update
    @utwit = Utwit.find(params[:id])

    respond_to do |format|
      if @utwit.update_attributes(params[:utwit])
        format.html { redirect_to @utwit, notice: 'Utwit was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @utwit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /utwits/1
  # DELETE /utwits/1.json
  def destroy
    @utwit = Utwit.find(params[:id])
    @utwit.destroy

    respond_to do |format|
      format.html { redirect_to utwits_url }
      format.json { head :no_content }
    end
  end
end
