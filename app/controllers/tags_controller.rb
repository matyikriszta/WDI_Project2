class TagsController < ApplicationController
  # GET /tags
  # GET /tags.json
  def index
      @tags = User.tag_counts_on(:interests).where("name like ?", "%#{params[:q]}%").map(&:name)

    respond_to do |format|
      format.json { render json: @tags }
    end

  end
end
