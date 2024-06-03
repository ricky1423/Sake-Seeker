class ItemsController < ApplicationController

    def index
      @items = Item.all
    end

    def show
      @item = Item.find(params[:id])
    end
    
    def search
      @items = Item.search(params[:keyword])
    end

end
