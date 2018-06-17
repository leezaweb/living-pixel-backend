# site = Site.create(
#   url: "my_site",
#   title: "My Site",
#   version: 1
# )
#
# body = Body.create(
#   site_id: site.id
# )
#
# BodyStyle.create(
#   background_repeat: "repeat",
#   background_attachment: "fixed",
#   background_size: "30px 10px",
#   background_position: "top right",
#   background_color: "grey",
#   body_id: body.id
# )
#
# header = Header.create(
#   inner_text:'{"entityMap":{},"blocks":[{"key":"4oah6","text":"My Site Header","type":"unstyled","depth":0,"inlineStyleRanges":[{"offset":7,"length":4,"style":"BOLD"},{"offset":0,"length":11,"style":"CODE"},{"offset":0,"length":6,"style":"ITALIC"}],"entityRanges":[]}]}',
#   site_id: site.id
# )
#
# HeaderStyle.create(
#   border_bottom_color: "black",
#   border_bottom_style:"solid",
#   border_bottom_width:6,
#   background_color: "black",
#   color:"white",
#   header_id: header.id
#
# )
#
# footer = Footer.create(
#   inner_text:'{"entityMap":{},"blocks":[{"key":"4oah6","text":"My Site Footer","type":"unstyled","depth":0,"inlineStyleRanges":[{"offset":7,"length":4,"style":"BOLD"},{"offset":0,"length":11,"style":"CODE"},{"offset":0,"length":6,"style":"ITALIC"}],"entityRanges":[]}]}',
#   site_id: site.id
# )
#
# FooterStyle.create(
#   border_top_color:"black",
#   border_top_style:"solid",
#   border_top_width:6,
#   background_color: "black",
#   color:"white",
#   footer_id: footer.id
#
# )
#
# user1 = User.create(
#   email: "leezaluncheon@gmail.com",
#   password: "password"
# )
#
# user2 = User.create(
#   email: "flyinglessons@gmail.com",
#   password: "password"
# )
#
# Team.create!(
#   user_id: user1.id,
#   site_id: site.id
# )
# Team.create!(
#   user_id: user2.id,
#   site_id: site.id
# )
#
# section1 = Section.create(
#   sequence:1,
#   site_id: site.id
# )
#
# SectionStyle.create(
#   border_top_color:"green",
#   border_bottom_color:"green",
#   border_top_style:"dotted",
#   border_bottom_style:"dotted",
#   border_top_width:3,
#   border_bottom_width:3,
#   border_top_left_radius:12,
#   border_top_right_radius:12,
#   border_bottom_left_radius:12,
#   border_bottom_right_radius:12,
#   background_image:"url(https://www.w3schools.com/cssref/paper.gif)",
#   background_repeat:"repeat-y",
#   background_attachment:"scroll",
#   background_size:"100% 100%",
#   background_position: "top left",
#   background_color: "yellow",
#   section_id:section1.id
# )
#
# section2 = Section.create(
#   sequence:2,
#   site_id: site.id
# )
#
# SectionStyle.create(
#   border_top_color:"purple",
#   border_bottom_color:"purple",
#   border_top_style:"dotted",
#   border_bottom_style:"dotted",
#   border_top_width:3,
#   border_bottom_width:3,
#   border_top_left_radius:12,
#   border_top_right_radius:12,
#   border_bottom_left_radius:12,
#   border_bottom_right_radius:12,
#   background_image:"url(https://www.w3schools.com/css/mountain.jpg)",
#   background_repeat:"repeat-y",
#   background_attachment:"scroll",
#   background_size:"100% 100%",
#   background_position: "top left",
#   background_color: "pink",
#   section_id: section2.id
# )
#
# textElement1 = Element.create(
#   inner_text: '{"entityMap":{},"blocks":[{"key":"4oah6","text":"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.","type":"unstyled","depth":0,"inlineStyleRanges":[{"offset":7,"length":4,"style":"BOLD"},{"offset":0,"length":11,"style":"CODE"},{"offset":0,"length":6,"style":"ITALIC"}],"entityRanges":[]}]}',
#   tag: "p"
# )
#
# ElementStyle.create(
#   border_top_color: "blue",
#   border_right_color: "blue",
#   border_bottom_color: "blue",
#   border_left_color: "blue",
#   border_top_style: "dashed",
#   border_right_style: "dashed",
#   border_bottom_style: "dashed",
#   border_left_style: "dashed",
#   border_top_width: 1,
#   border_right_width: 1,
#   border_bottom_width: 1,
#   border_left_width: 1,
#   border_top_left_radius: 24,
#   border_top_right_radius: 24,
#   border_bottom_left_radius: 24,
#   border_bottom_right_radius: 24,
#   text_align: "right",
#   color: "brown",
#   column_gap: 12,
#   column_count: 3,
#   column_rule_width: 1,
#   column_rule_style: "solid",
#   column_rule_color: "grey",
#   grid_column_start: 1,
#   grid_column_end: 6,
#   grid_row_start: 1,
#   grid_row_end: 2,
#   element_id:textElement1.id
# )
#
# imageElement1 = Element.create(
#   tag: "img",
#   src:"https://www.w3schools.com/css/img_tree.gif"
# )
#
# ElementStyle.create(
#   border_top_color: "blue",
#   border_right_color: "blue",
#   border_bottom_color: "blue",
#   border_left_color: "blue",
#   border_top_style: "dashed",
#   border_right_style: "dashed",
#   border_bottom_style: "dashed",
#   border_left_style: "dashed",
#   border_top_width: 1,
#   border_right_width: 1,
#   border_bottom_width: 1,
#   border_left_width: 1,
#   border_top_left_radius: 24,
#   border_top_right_radius: 24,
#   border_bottom_left_radius: 24,
#   border_bottom_right_radius: 24,
#   filter: "sepia(100%)",
#   object_fit: "cover",
#   grid_column_start: 10,
#   grid_column_end: 13,
#   grid_row_start: 0,
#   grid_row_end: 1,
#   element_id:imageElement1.id
# )
#
# textElement2 = Element.create(
#   inner_text: '{"entityMap":{},"blocks":[{"key":"4oah6","text":"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.","type":"unstyled","depth":0,"inlineStyleRanges":[{"offset":7,"length":4,"style":"BOLD"},{"offset":0,"length":11,"style":"CODE"},{"offset":0,"length":6,"style":"ITALIC"}],"entityRanges":[]}]}',
#   tag: "p"
# )
#
# ElementStyle.create(
#   border_top_color: "green",
#   border_right_color: "green",
#   border_bottom_color: "green",
#   border_left_color: "green",
#   border_top_style: "dashed",
#   border_right_style: "dashed",
#   border_bottom_style: "dashed",
#   border_left_style: "dashed",
#   border_top_width: 1,
#   border_right_width: 1,
#   border_bottom_width: 1,
#   border_left_width: 1,
#   border_top_left_radius: 24,
#   border_top_right_radius: 24,
#   border_bottom_left_radius: 24,
#   border_bottom_right_radius: 24,
#   text_align: "right",
#   color: "brown",
#   column_gap: 12,
#   column_count:2,
#   column_rule_width: 3,
#   column_rule_style: "solid",
#   column_rule_color: "grey",
#   grid_column_start: 1,
#   grid_column_end: 6,
#   grid_row_start: 1,
#   grid_row_end: 2,
#   element_id:textElement2.id
# )
#
# imageElement2 = Element.create(
#   tag: "img",
#   src:"https://www.w3schools.com/css/img_tree.gif"
# )
#
# ElementStyle.create(
#   border_top_color: "green",
#   border_right_color: "green",
#   border_bottom_color: "green",
#   border_left_color: "green",
#   border_top_style: "dashed",
#   border_right_style: "dashed",
#   border_bottom_style: "dashed",
#   border_left_style: "dashed",
#   border_top_width: 1,
#   border_right_width: 1,
#   border_bottom_width: 1,
#   border_left_width: 1,
#   border_top_left_radius: 24,
#   border_top_right_radius: 24,
#   border_bottom_left_radius: 24,
#   border_bottom_right_radius: 24,
#   filter: "blur(3px)",
#   object_fit: "cover",
#   grid_column_start: 10,
#   grid_column_end: 13,
#   grid_row_start: 0,
#   grid_row_end: 1,
#   element_id:imageElement2.id
# )
#
# SectionElement.create(
#   element_id: textElement1.id,
#   section_id: section1.id
# )
# SectionElement.create(
#   element_id: imageElement1.id,
#   section_id: section1.id
# )
#
#
# SectionElement.create(
#   element_id: textElement2.id,
#   section_id: section2.id
# )
# SectionElement.create(
#   element_id: imageElement2.id,
#   section_id: section2.id
# )

def initAttr(style)
  style.attributes.reject{|k|["id", "section_id","element_id"].include?(k)}.each do |attribute|
    if attribute[0].include?("width") || attribute[0].include?("radius")
      style[attribute[0]] = 0
      style.save
    else
      style[attribute[0]] = ""
      style.save
    end
  end
end

a6 = Element.create!(inner_text: '{"entityMap":{},"blocks":[{"key":"4oah6","text":"Paragraph. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.","type":"unstyled","depth":0,"inlineStyleRanges":[{"offset":7,"length":4,"style":"BOLD"},{"offset":0,"length":11,"style":"CODE"},{"offset":0,"length":6,"style":"ITALIC"}],"entityRanges":[]}]}',
  tag: "p",
  key: "A6"
)

a5 = Element.create!(inner_text: '{"entityMap":{},"blocks":[{"key":"4oah6","text":"Code. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.","type":"unstyled","depth":0,"inlineStyleRanges":[{"offset":7,"length":4,"style":"BOLD"},{"offset":0,"length":11,"style":"CODE"},{"offset":0,"length":6,"style":"ITALIC"}],"entityRanges":[]}]}',
  tag: "pre",
  key: "A5"
)

a4 = Element.create!(inner_text: '{"entityMap":{},"blocks":[{"key":"4oah6","text":"H4 Header","type":"unstyled","depth":0,"inlineStyleRanges":[{"offset":7,"length":4,"style":"BOLD"},{"offset":0,"length":11,"style":"CODE"},{"offset":0,"length":6,"style":"ITALIC"}],"entityRanges":[]}]}',
  tag: "h4",
  key: "A4"
)

a3 = Element.create!(inner_text: '{"entityMap":{},"blocks":[{"key":"4oah6","text":"H3 Header","type":"unstyled","depth":0,"inlineStyleRanges":[{"offset":7,"length":4,"style":"BOLD"},{"offset":0,"length":11,"style":"CODE"},{"offset":0,"length":6,"style":"ITALIC"}],"entityRanges":[]}]}',
  tag: "h3",
  key: "A3"
)

a2 = Element.create!(inner_text: '{"entityMap":{},"blocks":[{"key":"4oah6","text":"H2 Header","type":"unstyled","depth":0,"inlineStyleRanges":[{"offset":7,"length":4,"style":"BOLD"},{"offset":0,"length":11,"style":"CODE"},{"offset":0,"length":6,"style":"ITALIC"}],"entityRanges":[]}]}',
  tag: "h2",
  key: "A2"
)

a1 = Element.create!(src:"",
  tag: "img",
  key: "A1"
)




a6_style = ElementStyle.create(
    element_id:a6.id
  )
a5_style = ElementStyle.create(
    element_id:a5.id
  )
a4_style = ElementStyle.create(
    element_id:a4.id
  )
a3_style = ElementStyle.create(
    element_id:a3.id
  )
a2_style = ElementStyle.create(
    element_id:a2.id
  )
a1_style = ElementStyle.create(
    element_id:a1.id
  )

# O6_style = SectionStyle.create(
#     section_id:O6.id
#   )
# O5_style = SectionStyle.create(
#     section_id:O5.id
#   )
# O4_style = SectionStyle.create(
#     section_id:O4.id
#   )
# O3_style = SectionStyle.create(
#     section_id:O3.id
#   )
# O2_style = SectionStyle.create(
#     section_id:O2.id
#   )
# O1_style = SectionStyle.create(
#     section_id:O1.id
#   )


initAttr(a6_style)
initAttr(a5_style)
initAttr(a4_style)
initAttr(a3_style)
initAttr(a2_style)
initAttr(a1_style)
