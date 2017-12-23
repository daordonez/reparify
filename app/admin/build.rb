ActiveAdmin.register Build do
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

menu :label => "Construcciones", :priority => 3

permit_params :fecha , :part_id, :imei , :color , :capacidad , :estado_estetico , :devise_model_id, :NumeroSerie, :test_id

	form :title => "Nuevo Dispositivo Reacondicionado - Construccion" do |f|
		f.semantic_errors
		f.inputs do
			f.input :devise_model_id, as: :select , collection: DeviseModel.pluck(:nombrecomercial_modelo, :id), :label => "Modelo Construido"
			f.input :imei , :label => "IMEI"
			f.input :NumeroSerie, :label => "Numero de Serie:"
			f.input :capacidad , :label => "Capacidad (GB)" , as: :select , :collection => ["16","32","64","128","256"]
			f.input :fecha , :label => "Fecha construccion" , as: :date_time_picker
			f.input :color, :label => "Color", as: :select , :collection => ["BLACK", "JETBLACK", "GOLD", "GOLDROSE", "SILVER","SPACEGRAY"]
			f.input :estado_estetico, :label => "Estado", as: :select , :collection => ["SHINY","ORO","PLATA","BRONDE","STALLONE"]
		end
		f.actions
		end

		csv do
			column (:devise_model_id) { |build| build.devise_model.nombrecomercial_modelo}
			column :color
			column :capacidad
			column :estado_estetico
			column :fecha
			column :imei
			column :NumeroSerie
		end
		controller do
			def csv_filename
				'Construccion ' << Time.now.strftime("%d/%m/%Y %H:%M") << '.csv'
			end
		end

end
