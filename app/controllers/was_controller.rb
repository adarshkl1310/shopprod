class WasController < ApplicationController

before_action :find_wa, only: [:show, :edit, :update, :destroy]

	def index
	@wa = current_user.was.build
	@was = Wa.all.order(created_at: :desc)
	 @users =  User.where(industry: 'Handicrafts, Toys, Gifts & Crafts').select([:username,:business_type,:contry,:id]).all.order(created_at: :desc)
end

def new
	@users =  User.where(industry: 'Handicrafts, Toys, Gifts & Crafts').select([:username,:business_type,:contry,:id]).all.order(created_at: :desc)

end

def create
		@wa = current_user.was.build(wa_params)
    @wa.save
    redirect_to was_path
end

def show

    

	end
 def edit
 
 end
 	def update
		
		if @wa.update(wa_params)
			redirect_to was_path
		else
			render 'edit'
		end
	end

	def destroy
		
		@wa.destroy
		redirect_to was_path
	end

private

def wa_params
			
		params.require(:wa).permit(:product_name,:post_type,:market_type,:description)
    end

def find_wa
    	 
    	@wa = Wa.find(params[:id])
   
    end

end
