class ProdsController < ApplicationController
def index

@shop = Shop.order(created_at: :desc).search(params[:search])
  
@zza = Zza.all  
end

def new
   @prod =current_user.prods.build
 
 end
	

def create
 

 @prod =current_user.prods.build(prod_params)
 if @prod.save
 redirect_to prod_path(@prod.user.id)
  else
	render "new"
 end

end

def show

 @shop    = Shop.where(params[:id])

@shopcm = Shopcm.where(params[:id])

@prod  = Prod.where(params[:id])

@user = User.find(params[:id].to_i)

@shops = Shop.all

@zza = Zza.where(params[:id])
	
end

def edit 
@prod = Prod.find(params[:id])
end


def update
@prod = Prod.find(params[:id])
if @prod.update(prod_params)
	redirect_to profil_path(@prod.user.id)
else
	render "edit"
end
end


def destroy
	@prod = Prod.find(params[:id])
	@prod.destroy
	redirect_to prod_path(@prod.user.id)
end


private

def prod_params
			
     params.require(:prod).permit(:pphoto,:product_name,:product_price,:link,:product_packaging)
  
 end


 end

