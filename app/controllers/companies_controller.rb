class CompaniesController < InheritedResources::Base

  private

    def company_params
      params.require(:company).permit(:nombre, :razonsocial, :cif, :direccion, :cp, :telefono, :logo, :active)
    end
end

