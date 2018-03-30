class OcmsController < ApplicationController

before_action :find_oa, only: [:create, :edit, :update, :destroy]
before_action :find_ocm, only: [:edit, :update, :destroy]


def create
		
	@ocm= @oa.ocms.create(comm_params)
	@ocm.user_id = current_user.id

	    @ocm.save
		redirect_to oa_path(@oa)
	
end


def edit

end

def update
		
	if  @ocm.update(comm_params)
		redirect_to oa_path(@oa)
	else
		render 'edit'
	end
end

def destroy
	
	@ocm.destroy		
	redirect_to oa_path(@oa)
	
end
private
 
def comm_params
	params.require(:ocm).permit(:content)
end

def find_oa
	@oa = Oa.find(params[:oa_id])
end

def find_ocm
	@ocm = @oa.ocms.find(params[:id])
end


end
