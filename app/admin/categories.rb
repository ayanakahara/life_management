ActiveAdmin.register Category do
  permit_params :name

  index do
    id_column

    column :name
    column :created_at
    actions
  end

  show do
    attributes_table do
      row :id

      row :name

      table_for category.contents do
        column '<span style="white-space:nowrap">id</span>'.html_safe do |content|
          link_to(content.id, admin_content_path(content.id))
        end

        column :image do |c|
          image_tag url_for(c.image), :width => '100px'
        end
        column :title
        column :category_name
        column :created_at
      end

    end
  end

  filter :name
  filter :created_at

  form do |f|
    f.inputs do
      f.input :name
    end
    f.actions
  end

end
