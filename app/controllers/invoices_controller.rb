class InvoicesController < InheritedResources::Base

  #Get de todos los datos necesiarios para crear la factura
  def new
    @invoice = Invoice.new
    @customers = Customer.where('dni LIKE ?', "%params[:dni]%")
    @company = Company.find{ |c| c.active == true}
    @items = Item.all

    respond_to do |format|
      format.html #new.html.erb
      format.json {render :json => customers }
    end
  end



  private
    def invoice_params
      params.require(:invoice).permit(:company_id, :customer_id, :item_id, :baseimponible_prec, :ivaimponilbe_prec, :importetotal_prec, 
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

