ActiveAdmin.register Order do
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

permit_params :provider_id, :fecha_pedido, :valorPedido

	form title: "Nuevo Pedido" do |f|
		f.semantic_errors
		f.inputs do 
			f.input :provider_id, :label => "Proveedor", :as => :select ,
			 :collection => Provider.pluck(:nombre_proveedor, :id)
			f.input :fecha_pedido, :as => :date_time_picker , :label =>"Fecha"
			f.input :valorPedido, :label => "Valor del Pedido"
		end
		f.actions
	end

end
