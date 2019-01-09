# frozen_string_literal: true

module Administration
  class ItemsController < AdministrationController
    def index
    	@items = Item.all
    end

    def update
      @item = Item.find(params[:id])
      if params[:item][:discount_percentage].to_f < 100
        @item.update(item_params)
        flash[:notice] = "Le prix à été modifié avec succès !"
      else
        flash[:alert] = "Le pourcentage de remise n'est pas valable"
      end
      redirect_to administration_items_path
    end

    private

    def item_params
    	params.require(:item).permit(:discount_percentage)
    end
  end
end
