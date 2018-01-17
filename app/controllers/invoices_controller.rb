class InvoicesController < InheritedResources::Base

  private
    def invoice_params
      params.require(:invoice).permit(:customer_id, :item_id, :baseimponible_prec, :ivaimponilbe_prec, :importetotal_prec, 
      	items_attributes:[
      			:id,
      			:nombre_art,
      			:descripcion_art,
      			:baseimponible_prec,
      			:ivaimponible_prec, 
      			:total_prec,
      			:_destroy])
    end
end

