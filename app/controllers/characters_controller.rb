class CharactersController < ApplicationController
  load_and_authorize_resource
  # GET /characters
  # GET /characters.json
  def index
    @q = Character.search(params[:q])
    @characters = @q.result(:distinct => true)
  end

  def search
      index
      render :index
  end
  # GET /characters/1
  # GET /characters/1.json
  def show
    @character = Character.find(params[:id])
  end

  # GET /characters/new
  # GET /characters/new.json
  def new
    @character = Character.new

  end

  # GET /characters/1/edit
  def edit
    @character = Character.find(params[:id])
  end

  # POST /characters
  # POST /characters.json
  def create
    @character = Character.new(params[:character])

    respond_to do |format|
      if @character.save
        format.html { redirect_to @character, notice: 'Character was successfully created.' }
        format.json { render json: @character, status: :created, location: @character }
      else
        format.html { render action: "new" }
        format.json { render json: @character.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /characters/1
  # PUT /characters/1.json
  def update
    @character = Character.find(params[:id])

    respond_to do |format|
      if @character.update_attributes(params[:character])
        format.html { redirect_to @character, notice: 'Character was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @character.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /characters/1
  # DELETE /characters/1.json
  def destroy
    @character = Character.find(params[:id])
    @character.destroy
  end
end
