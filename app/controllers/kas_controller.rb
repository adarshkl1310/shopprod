class KasController < ApplicationController

before_action :find_ka, only: [:show, :edit, :update, :destroy]

	def index
@ka = current_user.kas.build
@kas = Ka.all.order(created_at: :desc)
 @users =  User.where(industry: 'School, College & University').select([:username,:business_type,:contry,:id]).all.order(created_at: :desc)
end


def new
	@users =  User.where(industry: 'School, College & University').select([:username,:business_type,:contry,:id]).all.order(created_at: :desc)

end

def create
		@ka = current_user.kas.build(ka_params)
    @ka.save
    redirect_to kas_path
end

def show

    

	end

 def edit
 
 end
 
 	def update

		if @ka.update(ka_params)
			redirect_to kas_path
		else
			render 'edit'
		end
	end

	def destroy
		
		@ka.destroy
		redirect_to kas_path
	end

private

def ka_params
			
		params.require(:ka).permit(:product_name,:post_type,:market_type,:description)
    end

def find_ka
    	 
    	@ka = Ka.find(params[:id])
   
    end	
end
