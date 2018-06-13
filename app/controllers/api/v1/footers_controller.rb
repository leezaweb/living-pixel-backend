class Api::V1::FootersController < ApplicationController
  def index
    render json: Footer.all
  end
  def show
    render json: Footer.find(params[:id])
  end

  def update
    puts "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%#{params[:inner_text]}"
    footer = Footer.find(params[:id])
    footer.update(inner_text: params[:inner_text])
    footer.inner_text = params[:inner_text]
    footer.save!
    puts footer.inspect
  end
end
