class DiscountActivitiesController < ApplicationController
  before_action :set_discount_activity, only: [:show, :edit, :update, :destroy]

  # GET /discount_activities
  # GET /discount_activities.json
  def index
    @discount_activities = DiscountActivity.all
  end

  # GET /discount_activities/1
  # GET /discount_activities/1.json
  def show
  end

  # GET /discount_activities/new
  def new
    @discount_activity = DiscountActivity.new
  end

  # GET /discount_activities/1/edit
  def edit
  end

  # POST /discount_activities
  # POST /discount_activities.json
  def create
    @discount_activity = DiscountActivity.new(discount_activity_params)

    respond_to do |format|
      if @discount_activity.save
        format.html { redirect_to @discount_activity, notice: 'Discount activity was successfully created.' }
        format.json { render :show, status: :created, location: @discount_activity }
      else
        format.html { render :new }
        format.json { render json: @discount_activity.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /discount_activities/1
  # PATCH/PUT /discount_activities/1.json
  def update
    respond_to do |format|
      if @discount_activity.update(discount_activity_params)
        format.html { redirect_to @discount_activity, notice: 'Discount activity was successfully updated.' }
        format.json { render :show, status: :ok, location: @discount_activity }
      else
        format.html { render :edit }
        format.json { render json: @discount_activity.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /discount_activities/1
  # DELETE /discount_activities/1.json
  def destroy
    @discount_activity.destroy
    respond_to do |format|
      format.html { redirect_to discount_activities_url, notice: 'Discount activity was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_discount_activity
      @discount_activity = DiscountActivity.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def discount_activity_params
      params.require(:discount_activity).permit(:discount_id, :activity_type_id, :date, :time)
    end
end
