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
    
    def destroy
       item = current_user.items.find(params[:id])
       item.destroy
       redirect_to user_path(current_user.id)
    end
    
    private
    
    def  item_params
       params.require(:item).permit(:name, :user)
    end
end