class Api::V1::BodyStylesController < ApplicationController

    def update
      body_style = BodyStyle.find(params[:id])
      params.reject{|k|["controller", "action","id","body_style","editorState"].include?(k)}.each do |k|
        puts "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%#{k}"

        body_style[k[0].to_sym] = params[k[0]]
        body_style.save
      end
    end
end
