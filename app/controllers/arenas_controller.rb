class ArenasController < ApplicationController
  before_action :set_arena, only: [:show, :update, :destroy]

  # GET /arenas
  def index
    @arenas = Arena.all

    render json: @arenas
  end

  # GET /arenas/1
  def show
    render json: @arena
  end

  # POST /arenas
  def create
    @arena = Arena.new(arena_params)

    if @arena.save
      render json: @arena, status: :created, location: @arena
    else
      render json: @arena.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /arenas/1
  def update
    if @arena.update(arena_params)
      render json: @arena
    else
      render json: @arena.errors, status: :unprocessable_entity
    end
  end

  # DELETE /arenas/1
  def destroy
    @arena.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_arena
      @arena = Arena.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def arena_params
      params.require(:arena).permit(:name, :location, :event, :image, :intro, :user_id)
    end
end
