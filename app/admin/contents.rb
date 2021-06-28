ActiveAdmin.register Content do
  permit_params :title, :image, :category_id

  index do
    id_column

    column :image do |c|
      image_tag url_for(c.image), :width => '100px'
    end
    column :title
    column :category
    column :created_at
    actions
  end

  show do
    attributes_table do
      row :id

      row :title
      row :category
      row :image do |r|
        image_tag url_for(r.image), :width => '300px'
      end
    end
  end

  filter :title
  filter :category
  filter :created_at

  form do |f|
    f.inputs do
      f.input :image, as: :file
      f.input :title
      f.input :category
    end
    f.actions
  end

end
