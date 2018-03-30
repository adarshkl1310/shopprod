class ScmsController < ApplicationController

before_action :find_sa, only: [:create, :edit, :update, :destroy]
before_action :find_scm, only: [:edit, :update, :destroy]


def create
		
    @scm= @sa.scms.create(comm_params)
	@scm.user_id = current_user.id

	    @scm.save
		redirect_to sa_path(@sa)
	
end

def edit

end

def update
		
	if  @scm.update(comm_params)
		redirect_to sa_path(@sa)
	else
		render 'edit'
	end
end

def destroy
		
	@scm.destroy
	redirect_to sa_path(@sa)
end

private
 
def comm_params
	params.require(:scm).permit(:content)
end

def find_sa
	@sa = Sa.find(params[:sa_id])
end

def find_scm
	@scm = @sa.scms.find(params[:id])
end

end
