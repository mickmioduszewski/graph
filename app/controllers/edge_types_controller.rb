class EdgeTypesController < ApplicationController

  before_filter :authenticate_user!




  # GET /edge_types
  # GET /edge_types.json
  def index
    @edge_types = EdgeType.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @edge_types }
    end
  end

  # GET /edge_types/1
  # GET /edge_types/1.json
  def show
    @edge_type = EdgeType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @edge_type }
    end
  end

  # GET /edge_types/new
  # GET /edge_types/new.json
  def new
    @edge_type = EdgeType.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @edge_type }
    end
  end

  # GET /edge_types/1/edit
  def edit
    @edge_type = EdgeType.find(params[:id])
  end

  # POST /edge_types
  # POST /edge_types.json
  def create
    @edge_type = EdgeType.new(params[:edge_type])

    respond_to do |format|
      if @edge_type.save
        format.html { redirect_to @edge_type, notice: 'Edge type was successfully created.' }
        format.json { render json: @edge_type, status: :created, location: @edge_type }
      else
        format.html { render action: "new" }
        format.json { render json: @edge_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /edge_types/1
  # PUT /edge_types/1.json
  def update
    @edge_type = EdgeType.find(params[:id])

    respond_to do |format|
      if @edge_type.update_attributes(params[:edge_type])
        format.html { redirect_to @edge_type, notice: 'Edge type was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @edge_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /edge_types/1
  # DELETE /edge_types/1.json
  def destroy
    @edge_type = EdgeType.find(params[:id])
    @edge_type.destroy

    respond_to do |format|
      format.html { redirect_to edge_types_url }
      format.json { head :no_content }
    end
  end
end
