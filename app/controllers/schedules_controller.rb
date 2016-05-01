 class SchedulesController < ApplicationController

  def index
      @trucks = Schedule.where(:id => params[:id];
  end
end
