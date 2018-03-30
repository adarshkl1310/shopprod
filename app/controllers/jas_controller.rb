class JasController < ApplicationController

before_action :find_ja, only: [:show, :edit, :update, :destroy]

	def index
	@ja = current_user.jas.build
	@jas = Ja.all.order(created_at: :desc)
	 @users =  User.where(industry: 'Buildings & Construction').select([:username,:business_type,:contry,:id]).all.order(created_at: :desc)
end

def new
	@users =  User.where(industry: 'Buildings & Construction').select([:username,:business_type,:contry,:id]).all.order(created_at: :desc)

end

def create
	@ja = current_user.jas.build(ja_params)
    @ja.save
    redirect_to jas_path
end

def show

    @ja = Ja.find(params[:id])

	end

 def edit
 	@ja = Ja.find(params[:id])
 end
 	def update
		@ja = Ja.find(params[:id])
		if @ja.update(ja_params)
			redirect_to jas_path
		else
			render 'edit'
		end
	end

	def destroy
		@ja = Ja.find(params[:id])
		@ja.destroy
		redirect_to jas_path
	end

private

def ja_params
			
		params.require(:ja).permit(:product_name,:post_type,:description,:market_type)
    end

def find_ja
    	 
    	@ja = Ja.find(params[:id])
   
    end
end
