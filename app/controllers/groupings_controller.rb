class GroupingsController < ApplicationController
  before_action :set_grouping, only: %i[ show edit update destroy ]

  # GET /groupings
  def index
    @groupings = Grouping.all
  end

  # GET /groupings/1
  def show
  end

  # GET /groupings/new
  def new
    @grouping = Grouping.new
  end

  # GET /groupings/1/edit
  def edit
  end

  # POST /groupings
  def create
    @grouping = Grouping.new(grouping_params)

    if @grouping.save
      redirect_to @grouping, notice: "Grouping was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /groupings/1
  def update
    if @grouping.update(grouping_params)
      redirect_to @grouping, notice: "Grouping was successfully updated.", status: :see_other
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /groupings/1
  def destroy
    @grouping.destroy!
    redirect_to groupings_url, notice: "Grouping was successfully destroyed.", status: :see_other
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_grouping
      @grouping = Grouping.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def grouping_params
      params.require(:grouping).permit(:name)
    end
end
