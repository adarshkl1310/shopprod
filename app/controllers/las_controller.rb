class LasController < ApplicationController

before_action :find_la, only: [:show, :edit, :update, :destroy]

	def index
@la = current_user.las.build
@las = La.all.order(created_at: :desc)
 @users =  User.where(industry: 'Hospital & Medical').select([:username,:business_type,:contry,:id]).all.order(created_at: :desc)
end

def new
	@users =  User.where(industry: 'Hospital & Medical').select([:username,:business_type,:contry,:id]).all.order(created_at: :desc)

end

def create
		@la = current_user.las.build(la_params)
    @la.save
    redirect_to las_path
end

def show

    

	end

 def edit
 
 end
 
 	def update

		if @la.update(la_params)
			redirect_to las_path
		else
			render 'edit'
		end
	end

	def destroy
		
		@la.destroy
		redirect_to las_path
	end

private

def la_params
			
		params.require(:la).permit(:product_name,:post_type,:market_type,:description)
    end

def find_la
    	 
    	@la = La.find(params[:id])
   
    end	
end
