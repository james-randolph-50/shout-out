
class ShoutsController < ApplicationController
  before_action :set_shout, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]
  # GET /shouts
  # GET /shouts.json
  def index
    @shouts = Shout.all.order("created_at DESC")
    @shout = Shout.new
  end

  # GET /shouts/1
  # GET /shouts/1.json
  def show
  end

  # GET /shouts/new
  def new
<<<<<<< HEAD
    @shout = current_user.shouts.build
=======
    @shout = current_user.shouts.new
>>>>>>> 294d7336c24df0edd0ccf35a7cee0ccca84a468e
  end

  # GET /shouts/1/edit
  def edit
  end

  # POST /shouts
  # POST /shouts.json
  def create
    @shout = current_user.shouts.build(shout_params)

    respond_to do |format|
      if @shout.save
        format.html { redirect_to root_path, notice: 'Shout was successfully created.' }
        format.json { render :show, status: :created, location: @shout }
      else
        format.html { render :new }
        format.json { render json: @shout.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /shouts/1
  # PATCH/PUT /shouts/1.json
  def update
    respond_to do |format|
      if @shout.update(shout_params)
        format.html { redirect_to @shout, notice: 'Shout was successfully updated.' }
        format.json { render :show, status: :ok, location: @shout }
      else
        format.html { render :edit }
        format.json { render json: @shout.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shouts/1
  # DELETE /shouts/1.json
  def destroy
    @shout.destroy
    respond_to do |format|
      format.html { redirect_to shouts_url, notice: 'Shout was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shout
      @shout = Shout.find(params[:id])
    end

    def shout_params
      params.require(:shout).permit(:shout)
    end
end