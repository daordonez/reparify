class MintestsController < InheritedResources::Base

  private

    def mintest_params
      params.require(:mintest).permit(:nombre, :descripcion)
    end
end

