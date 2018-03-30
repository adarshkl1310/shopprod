class ZzasController < ApplicationController

before_action :find_zza, only: [:show, :edit, :update, :destroy]

def index

@zza = Zza.order(created_at: :desc).search(params[:search])
end

def new

	 @zza =current_user.zzas.build
	end

def create
		@zza = current_user.zzas.build(zza_params)
    if @zza.save
    redirect_to prods_path
else
	render 'new'
end
end
def show

   

	end
 def edit
 
 end
 	def update
		
		if @zza.update(zza_params)
			redirect_to prods_path
		else
			render 'edit'
		end
	end

	def destroy
		
		@zza.destroy
		redirect_to  prods_path
	end	

private

def zza_params
			
params.require(:zza).permit(:shop_name,:offer,:offerdaystart,:offerdayend)
    end

def find_zza
    	 
    	@zza = Zza.find(params[:id])
   
    end
end
