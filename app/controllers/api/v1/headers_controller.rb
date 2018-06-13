class Api::V1::HeadersController < ApplicationController
  def index
    render json: Header.all
  end
  def show
    render json: Header.find(params[:id])
  end

  def update

    puts "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%#{params[:inner_text]}"
    header = Header.find(params[:id])
    header.update(inner_text: params[:inner_text])
    header.inner_text = params[:inner_text]
    header.save!
    puts header.inspect
  end
end
