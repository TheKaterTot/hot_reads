class Api::V1::LinksController < ApplicationController
  skip_before_action :verify_authenticity_token

  def create
    @link = Link.create(link_params)
    if @link.save
      head 201
    else
      head 400
    end
  end

  private

  def link_params
    params.require(:link).permit(:url)
  end
end
