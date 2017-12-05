ActiveAdmin.register Test do
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

menu label: "Testing" , parent: "Taller"

permit_params :fecha , :build_id, :devise_model_id, :part_id , :estado

	form title: "Nuevo Test" do |f|
		f.semantic_errors
		f.inputs do
			f.input :fecha , :as => :date_time_picker, :label => "Fecha: "
			f.input :devise_model_id, :as => :select, :collection => DeviseModel.pluck(:nombrecomercial_modelo, :id), :label => "Dispositivo a testear:"
			f.input :build_id, :label => "IMEI Construccion:", as: :select , :collection => Build.pluck(:imei, :id) 
			f.input :estado, :as => :select , :collection => [["Finalizado","PASS"],["Pendiente","FAIL"]]
		f.actions
		end
	end

end
