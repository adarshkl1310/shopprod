

class ShopcmsController < ApplicationController
before_action :find_shop, only: [:create, :edit, :update, :destroy]
before_action :find_shopcm, only: [:edit, :update, :destroy]



		def create
		
		@shopcm = @shop.shopcms.create(shop_params)
		@shopcm.user_id = current_user.id

	    @shopcm.save
	    redirect_to shop_path(@shop)
	
	     end


    def edit
    
	end

	def update
		
			
		
	end

	def destroy
	   
		@shopcm.destroy
		redirect_to shop_path(@shop)
	end

	private

		def shop_params
			params.require(:shopcm).permit(:content)
		end

		def find_shop
			@shop = Shop.find(params[:shop_id])
		end

		def find_shopcm
			@shopcm = @shop.shopcms.find(params[:id])
		end

end
