class IndexController < ApplicationController

  # GET /index
  # GET /index.json
  def index
    #nothing...yet
  end

  private
    # Only allow a list of trusted parameters through.
    def index_params
      params.fetch(:index, {})
    end
end
