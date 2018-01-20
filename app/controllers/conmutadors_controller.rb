class ConmutadorsController < InheritedResources::Base
	#GET Recursos
	def index
		@invoices = Invoice.all
		@customers = Customer.all
		@tests = Test.all
		@conmutadors = Conmutador.all
	end

  private

    def conmutador_params
      params.require(:conmutador).permit()
    end
end

