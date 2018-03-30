class HcmsController < ApplicationController

before_action :find_ha, only: [:create, :edit, :update, :destroy]
before_action :find_hcm, only: [:edit, :update, :destroy]


def create
		
	@hcm= @ha.hcms.create(comm_params)
	@hcm.user_id = current_user.id

        @hcm.save
		redirect_to ha_path(@ha)
	
end


def edit

		
end

def update
		
	if  @hcm.update(comm_params)
		redirect_to ha_path(@ha)
	else
		render 'edit'
	end
end

def destroy
	
	@hcm.destroy
	redirect_to ha_path(@ha)
	
	end
private
 
def comm_params
	params.require(:hcm).permit(:content)
end

def find_ha
	@ha = Ha.find(params[:ha_id])
end

def find_hcm
	@hcm = @ha.hcms.find(params[:id])
end	

end
