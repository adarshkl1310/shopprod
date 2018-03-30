class BcmsController < ApplicationController

before_action :find_ba, only: [:create, :edit, :update, :destroy]
before_action :find_bcm, only: [:edit, :update, :destroy]

def index
	
end

def create
    @bcm= @ba.bcms.create(comm_params)
	@bcm.user_id = current_user.id

	 @bcm.save
		redirect_to ba_path(@ba)
	
end


def edit

end

def update
	if  @bcm.update(comm_params)
		redirect_to ba_path(@ba)
	else
		render 'edit'
	end
end

def destroy
	@bcm.destroy
	redirect_to ba_path(@ba)
end

private
 
def comm_params
	params.require(:bcm).permit(:content)
end

def find_ba
	@ba = Ba.find(params[:ba_id])
end

def find_bcm
	@bcm = @ba.bcms.find(params[:id])
end	
end
