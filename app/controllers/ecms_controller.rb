class EcmsController < ApplicationController

before_action :find_ea, only: [:create, :edit, :update, :destroy]
before_action :find_ecm, only: [:edit, :update, :destroy]



def create
	
	@ecm= @ea.ecms.create(params.require(:ecm).permit(:content))
	@ecm.user_id = current_user.id

	  @ecm.save
		redirect_to ea_path(@ea)
	
end


def edit

end

def update
		
    if  @ecm.update(params.require(:ecm).permit(:content))
		redirect_to ea_path(@ea)
	else
		render 'edit'
	end
end

def destroy
	@ecm.destroy
	redirect_to ea_path(@ea)
end

private
 
def comm_params
	params.require(:ecm).permit(:content)
end

def find_ea
	@ea = Ea.find(params[:ea_id])
end

def find_ecm
	@ecm = @ea.ecms.find(params[:id])
end

end
