class Api::V1::BodyStylesController < ApplicationController

    def update
      body_style = BodyStyle.find(params[:id])
      params.reject{|k|["controller", "action","id","body_style","editorState"].include?(k)}.each do |k,v|
        puts "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%#{k}"
        puts "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%#{v}"
        body_style[k] = v
        body_style.save
      end
    end
end
