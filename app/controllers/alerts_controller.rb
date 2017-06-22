class AlertsController < ApplicationController
  before_action :set_alert, only: [:show, :edit, :update, :destroy]

  def new
    @alert = Alert.new
  end

  def edit
  end

  def create
    @alert = Alert.new(alert_params)

    respond_to do |format|
      if @alert.save
        flash[:success] = 'Alert was successfully created'
        format.html { redirect_to dashboard_index_path}
        format.json { render :show, status: :created, location: @alert }
      else
        format.html { render :new }
        format.json { render json: @alert.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @alert.update(alert_params)
        flash[:success] = 'Alert was successfully updated'
        format.html { redirect_to dashboard_index_path}
        format.json { render :show, status: :ok, location: @alert }
      else
        format.html { render :edit }
        format.json { render json: @alert.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @alert.destroy
    respond_to do |format|
      flash[:success] = 'Alert was successfully deleted'
      format.html { redirect_to dashboard_index_path}
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_alert
      @alert = Alert.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def alert_params
      params.require(:alert).permit(:message, :show)
    end
end
