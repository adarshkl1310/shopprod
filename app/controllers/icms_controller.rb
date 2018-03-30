class IcmsController < ApplicationController

before_action :find_ii, only: [:create, :edit, :update, :destroy]
before_action :find_icm, only: [:edit, :update, :destroy]

def create
		
	@icm= @ii.icms.create(comm_params)
	@icm.user_id = current_user.id
    
       @icm.save
		redirect_to ii_path(@ii)
	
end

def edit

end

def update
	if  @icm.update(comm_params)
		redirect_to ii_path(@ii)
	else
		render 'edit'
	end
end

def destroy
		
	@icm.destroy
	redirect_to ii_path(@ii)
end
private
 
def comm_params
	params.require(:icm).permit(:content)
end

def find_ii
	@ii = Ii.find(params[:ii_id])
end

def find_icm
	@icm = @ii.icms.find(params[:id])
end
end
