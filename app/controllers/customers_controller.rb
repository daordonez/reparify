class CustomersController < InheritedResources::Base

	def index
		if params[:dni]
			@customers = Customer.where('dni LIKE ?', "%#{params[:dni]}%")
		else
			@customers = Customer.all
		end
	end

  private

    def customer_params
      params.require(:customer).permit(:nombre_apellido1, :nombre_apellido2, :nombre_primero, :dni, :direccion_completa, :cp, :ppoblacion, :formapago_hab)
    end
end

