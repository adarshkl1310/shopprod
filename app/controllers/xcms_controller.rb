class XcmsController < ApplicationController

before_action :find_xa, only: [:create, :edit, :update, :destroy]
before_action :find_xcm, only: [:edit, :update, :destroy]


def create

	@xcm= @xa.xcms.create(comm_params)
	@xcm.user_id = current_user.id

	    @xcm.save
		redirect_to xa_path(@xa)
	
end


def edit

end

def update

    if  @xcm.update(comm_params)
	    redirect_to xa_path(@xa)
	else
		render 'edit'
	end
end

def destroy

	@xcm.destroy
	redirect_to xa_path(@xa)
end

private
 
def comm_params
	params.require(:xcm).permit(:content)
end

def find_xa
	@xa = Xa.find(params[:xa_id])
end

def find_xcm
	@xcm = @xa.xcms.find(params[:id])
end


end
