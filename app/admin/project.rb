ActiveAdmin.register Project do

  permit_params :title, :description, :category, :category_position, :publication_date, :link, :link_text

  form do |f|
    inputs do
      f.input :title
      f.input :description
      f.input :category
      f.input :category_position, hint: 'This number should be the same for all projects with this category.'
      f.input :publication_date, as: :datepicker, hint: 'Enter the date the project was published, or leave blank.'
      f.input :link, hint: 'Enter the url link to the project media, if any.'
      f.input :link_text, hint: 'Enter the text for the link, otherwise the naked url will be used.'
    end
  end

end
