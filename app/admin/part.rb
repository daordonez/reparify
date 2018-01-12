ActiveAdmin.register Part do
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

menu label: "Componentes", parent: "Taller"
permit_params :nombre_parte, :cantidad_stock ,:precio, :devise_model_id, :order_id

	csv do
		column :id
		column (:devise_model_id) { |part| part.devise_model.nombrecomercial_modelo}
		column :nombre_parte
	end
	controller do
		def csv_filename
			'Componentes' << Time.now.strftime("%d/%m/%Y %H:%M") << '.csv'
		end
	end
end
