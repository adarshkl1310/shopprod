class ShopsController < ApplicationController
before_action :find_shop, only: [:show, :edit, :update, :destroy]	
	 
	 def index
     
 @contant = Contant.new
    end

    def new

    	@shop = current_user.shops.build
    end

    def show

     @shop = Shop.find(params[:id])
    end



	def create
	@shop = current_user.shops.build(shop_params) 
	if @shop.save
		redirect_to prods_path
		
	else 
		render "new"
	end
end
     def update
	
		if @shop.update(shop_params)
			redirect_to profil_path(@shop.user.id)

		else
			render 'edit'
		end
	end


	def destroy
		
		@shop.destroy
		redirect_to  prod_path(@shop.user.id)
	end

def edit

	end

private

def shop_params
			
		params.require(:shop).permit(:shop_name,:description,:shop_city,:shop_country,:sphoto,:market_type,:monday,:tuesday,:wednesday,:thursday,:friday,:saturday,:sunday,:timeing,:offer,:offerdaystart,:offerdayend,:delivery_time,:supply_ability,:transportation,:min_order,:website_link)
    end

def find_shop
    	 
    	@shop = Shop.find(params[:id])
end
end
  
