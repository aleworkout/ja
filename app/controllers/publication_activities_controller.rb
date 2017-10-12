class PublicationActivitiesController < ApplicationController
  before_action :set_publication_activity, only: [:show, :edit, :update, :destroy]

  # GET /publication_activities
  # GET /publication_activities.json
  def index
    @publication_activities = PublicationActivity.all
  end

  # GET /publication_activities/1
  # GET /publication_activities/1.json
  def show
  end

  # GET /publication_activities/new
  def new
    @publication_activity = PublicationActivity.new
  end

  # GET /publication_activities/1/edit
  def edit
  end

  # POST /publication_activities
  # POST /publication_activities.json
  def create
    @publication_activity = PublicationActivity.new(publication_activity_params)

    respond_to do |format|
      if @publication_activity.save
        format.html { redirect_to @publication_activity, notice: 'Publication activity was successfully created.' }
        format.json { render :show, status: :created, location: @publication_activity }
      else
        format.html { render :new }
        format.json { render json: @publication_activity.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /publication_activities/1
  # PATCH/PUT /publication_activities/1.json
  def update
    respond_to do |format|
      if @publication_activity.update(publication_activity_params)
        format.html { redirect_to @publication_activity, notice: 'Publication activity was successfully updated.' }
        format.json { render :show, status: :ok, location: @publication_activity }
      else
        format.html { render :edit }
        format.json { render json: @publication_activity.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /publication_activities/1
  # DELETE /publication_activities/1.json
  def destroy
    @publication_activity.destroy
    respond_to do |format|
      format.html { redirect_to publication_activities_url, notice: 'Publication activity was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_publication_activity
      @publication_activity = PublicationActivity.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def publication_activity_params
      params.require(:publication_activity).permit(:publication_id, :activity_type_id, :date, :time)
    end
end
