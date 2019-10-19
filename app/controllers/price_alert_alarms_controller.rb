class PriceAlertAlarmsController < ApplicationController
  before_action :set_price_alert_alarm, only: [:show, :edit, :update, :destroy]

  # GET /price_alert_alarms
  # GET /price_alert_alarms.json
  def index
    @price_alert_alarms = PriceAlertAlarm.all
  end

  # GET /price_alert_alarms/1
  # GET /price_alert_alarms/1.json
  def show
  end

  # GET /price_alert_alarms/new
  def new
    @price_alert_alarm = PriceAlertAlarm.new
    system "echo catdoodoo>>~/test_file.txt"
  end

  # GET /price_alert_alarms/1/edit
  def edit
  end

  # POST /price_alert_alarms
  # POST /price_alert_alarms.json
  def create
    @price_alert_alarm = PriceAlertAlarm.new(price_alert_alarm_params)
    #python persecscript.py HDFCBANK 8871733514 1300 1200 3 11
    call_counter = 0
    if @price_alert_alarm.phone_alert == 1
        call_counter = 1
    if @price_alert_alarm.message_alert == 1
        call_counter = 2
    if @price_alert_alarm.message_alert == 1 &&  @price_alert_alarm.phone_alert ==1
        call_counter = 3
    cmd_string = "python /opt/HackNight/hacknight3.0/persecurity_script.py  " + @price_alert_alarm.symbol + " " + @price_alert_alarm.mobile_number + " " + @price_alert_alarm.cap_price + " "+ @price_alert_alarm.floor_price + "  "+ @price_alert_alarm.call_counter +"11 "
    system cmd_string 
    respond_to do |format|
      if @price_alert_alarm.save
        format.html { redirect_to @price_alert_alarm, notice: 'Price alert alarm was successfully created.' }
        format.json { render :show, status: :created, location: @price_alert_alarm }
      else
        format.html { render :new }
        format.json { render json: @price_alert_alarm.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /price_alert_alarms/1
  # PATCH/PUT /price_alert_alarms/1.json
  def update
    respond_to do |format|
      if @price_alert_alarm.update(price_alert_alarm_params)
        format.html { redirect_to @price_alert_alarm, notice: 'Price alert alarm was successfully updated.' }
        format.json { render :show, status: :ok, location: @price_alert_alarm }
      else
        format.html { render :edit }
        format.json { render json: @price_alert_alarm.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /price_alert_alarms/1
  # DELETE /price_alert_alarms/1.json
  def destroy
    @price_alert_alarm.destroy
    respond_to do |format|
      format.html { redirect_to price_alert_alarms_url, notice: 'Price alert alarm was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_price_alert_alarm
      @price_alert_alarm = PriceAlertAlarm.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def price_alert_alarm_params
      params.require(:price_alert_alarm).permit(:name, :alert_type, :symbol, :current_price, :cap_price, :floor_price, :expected_alert_till_date, :mobile_number, :phone_alert, :message_alert)
    end
end
