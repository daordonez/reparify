ActiveAdmin.register DeviseModel do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

menu label: "Modelos", parent: "Taller"
permit_params :nombrecomercial_modelo, :manufacturer_id

show do
	panel "Componentes de #{DeviseModel.name.to_s}" do
		table_for devise_model.parts do
			column :nombre_parte
			column :cantidad_stock
		end
	end
	active_admin_comments
end
	form title: 'Nuevo Modelo - Movil ' do |f|
		f.semantic_errors
		f.inputs do
			f.input :nombrecomercial_modelo , :label => "Nombre Modelo"
			f.input :manufacturer_id , :label => "Fabricante dispositivo", :as => :select,
			 :collection => Manufacturer.pluck(:nombre_fabricante, :id)
		end
		f.actions
	end
end
