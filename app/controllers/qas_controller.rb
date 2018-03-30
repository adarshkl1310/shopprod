class QasController < ApplicationController

before_action :find_qa, only: [:show, :edit, :update, :destroy]

def index
@qa = current_user.qas.build
@qas = Qa.all.order(created_at: :desc)

@users =  User.where(industry: 'Energy, Environments & Power').select([:username,:business_type,:contry,:id]).all.order(created_at: :desc)
end


def new

@users = User.where(industry: 'Energy, Environments & Power').select([:username,:business_type,:contry,:id]).all.order(created_at: :desc)

end
def create
		@qa = current_user.qas.build(qa_params)
    @qa.save
    redirect_to qas_path
end

def show

    

	end
 def edit
 	
 end
 	def update
		
		if @qa.update(qa_params)
			redirect_to qas_path
		else
			render 'edit'
		end
	end

	def destroy
	
		@qa.destroy
		redirect_to qas_path
	end

private

def qa_params
			
		params.require(:qa).permit(:product_name,:post_type,:market_type,:description)
    end

def find_qa
    	 
    	@qa = Qa.find(params[:id])
   
    end
end
