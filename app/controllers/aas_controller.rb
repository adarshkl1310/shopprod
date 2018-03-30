class AasController < ApplicationController

before_action :find_aa, only: [:show, :edit, :update, :destroy]

	def index
@aa = current_user.aas.build
@aas = Aa.all.order(created_at: :desc)

@users =  User.where(industry: 'Agriculture,Animal,Food & Beverages').select([:username,:business_type,:contry,:id]).all.order(created_at: :desc)
  
end


def new
@users =  User.where(industry: 'Agriculture,Animal,Food & Beverages').select([:username,:business_type,:contry,:id]).all.order(created_at: :desc)
end
def create
	@aa = current_user.aas.build(aa_params)
    @aa.save
    redirect_to aas_path
end

def show

	end
 def edit
 
 end
 	def update
		
		if @aa.update(aa_params)
			redirect_to aas_path
		else
			render 'edit'
		end
	end

	def destroy
		
		@aa.destroy
		redirect_to aas_path
	end

private

def aa_params
			
		params.require(:aa).permit(:product_name,:post_type,:description,:market_type)
    end

def find_aa
    	 
    	@aa = Aa.find(params[:id])
   
    end
end
