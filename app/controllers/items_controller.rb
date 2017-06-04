class ItemsController < ApplicationController
    
    def show
    end
    
    def create
        @user = current_user
        @item = current_user.items.build(item_params)
        if @item.save
           redirect_to user_path(@user.id)
       else
           render :new
       end
        
    end
    
    def new
        @user = current_user
        @item = current_user.items.build
    end
    
    private
    
    def  item_params
       params.require(:item).permit(:name, :user)
    end
end