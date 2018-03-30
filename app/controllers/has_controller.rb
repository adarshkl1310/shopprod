class HasController < ApplicationController

before_action :find_ha, only: [:show, :edit, :update, :destroy]

	def index
	@ha = current_user.has.build
	@has = Ha.all.order(created_at: :desc)
	 @users =  User.where(industry: 'Electronics').select([:username,:business_type,:contry,:id]).all.order(created_at: :desc)
end


def new
@users =  User.where(industry: 'Electronics').select([:username,:business_type,:contry,:id]).all.order(created_at: :desc)
	
	
end
def create
		@ha = current_user.has.build(ha_params)
    @ha.save
    redirect_to has_path
end

def show

    @ha = Ha.find(params[:id])

	end
 def edit
 	@ha = Ha.find(params[:id])
 end
 	def update
		@ha = Ha.find(params[:id])
		if @ha.update(ha_params)
			redirect_to has_path
		else
			render 'edit'
		end
	end

	def destroy
		@ha = Ha.find(params[:id])
		@ha.destroy
		redirect_to has_path
	end

private

def ha_params
			
		params.require(:ha).permit(:product_name,:post_type,:market_type,:description)
    end

def find_ha
    	 
    	@ha = Ha.find(params[:id])
   
    end
end
