# Logs can only be read. They can not be created/updated/deleted.
class LogsController < ApplicationController
  before_action :set_log, only: [:show]

  # GET /logs
  def index
    @logs = Log.all
  end

  # GET /logs/1
  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_log
      @log = Log.find(params[:id])
    end
end
