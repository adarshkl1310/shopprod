class NcmsController < ApplicationController
before_action :find_na, only: [:create, :edit, :update, :destroy]
before_action :find_ncm, only: [:edit, :update, :destroy]



def create
		
	@ncm= @na.ncms.create(comm_params)
	@ncm.user_id = current_user.id

	    @ncm.save
		redirect_to na_path(@na)
	
end


def edit

end

def update
		
	if  @ncm.update(comm_params)
		redirect_to na_path(@na)
	else
		render 'edit'
	end
end

def destroy
		
	@ncm.destroy
	redirect_to na_path(@na)

end

private
 
def comm_params
	params.require(:ncm).permit(:content)
end

def find_na
	@na = Na.find(params[:na_id])
end

def find_ncm
	@ncm = @na.ncms.find(params[:id])
end

end
