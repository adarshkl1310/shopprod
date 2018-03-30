class FasController < ApplicationController

before_action :find_fa, only: [:show, :edit, :update, :destroy]

	def index
		@fa =current_user.fas.build
		@fas = Fa.all.order(created_at: :desc)
		 @users =  User.where(industry: 'Automobiles & Transportations').select([:username,:business_type,:contry,:id]).all.order(created_at: :desc)
end


def new
	 @users =  User.where(industry: 'Automobiles & Transportations').select([:username,:business_type,:contry,:id]).all.order(created_at: :desc)

end

def create
		@fa = current_user.fas.build(fa_params)
    @fa.save
    redirect_to fas_path
end

def show

    

	end
 def edit
 	
 end
 	def update
		
		if @fa.update(fa_params)
			redirect_to fas_path
		else
			render 'edit'
		end
	end

	def destroy
		
		@fa.destroy
		redirect_to fas_path
	end
private

def fa_params
			
		params.require(:fa).permit(:product_name,:post_type,:market_type,:description)
    end

def find_fa
    	 
    	@fa = Fa.find(params[:id])
   
    end
end
