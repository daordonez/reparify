class ItemsController < InheritedResources::Base

  private

    def item_params
      params.require(:item).permit(:nombre_art, :descripcion_art, :baseimponible_prec, :ivaimponible_prec, :total_prec)
    end
end

