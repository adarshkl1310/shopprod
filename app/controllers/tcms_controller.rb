class TcmsController < ApplicationController

before_action :find_tt, only: [:create, :edit, :update, :destroy]
before_action :find_tcm, only: [:edit, :update, :destroy]


def create
		
	@tcm= @tt.tcms.create(comm_params)
	@tcm.user_id = current_user.id

	    @tcm.save
		redirect_to tt_path(@tt)
	
end


def edit

end

def update
	
	if  @tcm.update(comm_params)
		redirect_to tt_path(@tt)
	else
		render 'edit'
	end
end

def destroy
		
	@tcm.destroy
	redirect_to tt_path(@tt)
	
end

private
 
def comm_params
	params.require(:tcm).permit(:content)
end

def find_tt
	@tt = Tt.find(params[:tt_id])
end

def find_tcm
	@tcm = @tt.tcms.find(params[:id])
end
end
