class Api::V1::ElementsController < ApplicationController
  def index
    render json: Element.all
  end

  def update
    puts "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%#{params[:inner_text]}"
    element = Element.find(params[:id])

    if params[:inner_text]
      element.update(inner_text: params[:inner_text])
      element.inner_text = params[:inner_text]
      element.save!
    end

    if params[:src]
      element.update(src: params[:src])
      element.src = params[:src]
      element.save!
    end

  end


  def show
    render json: Element.find(params[:id])
  end

  def create

      puts "%%%%%%%%%#{params}%%%%%%%%%%"
      case params[:key]
      when "A1","A2","A3","A4","A5","A6"
            element = Element.find_by(key: params[:key])

            new_element = element.dup
            new_element.save
            section = Section.find(params[:section].to_i)

            last_row_element = section.elements.max_by{|e|e.element_style.grid_row_end}
            last_row = last_row_element ? last_row_element.element_style.grid_row_end : -1


            new_element.element_style.update(
              grid_row_start: last_row + 1,
              grid_row_end: last_row + 2
            )

            SectionElement.create!(
              element_id: new_element.id,
              section_id: params[:section].to_i
            )

        when "clone"
          element = Element.find(params[:id])
          new_element = element.dup
          section = Section.find(new_element.section_ids[0])
          last_row = section.elements.max_by{|e|e.element_style.grid_row_end}.element_style.grid_row_end

          new_element.element_style.update(
            grid_row_start: last_row + 1,
            grid_row_end: last_row + element.element_style.grid_row_end - element.element_style.grid_row_start
          )

          new_element.save
          puts "%%%%%%%%%%%%%%%%%#{element.section_elements.size}%%%%%%%%%%%%%%%%%%"
      end
  end

  def destroy
    Element.find(params[:id]).destroy
  end
end
