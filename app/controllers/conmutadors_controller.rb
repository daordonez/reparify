class ConmutadorsController < InheritedResources::Base

  private

    def conmutador_params
      params.require(:conmutador).permit()
    end
end

