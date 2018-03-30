class AcmsController < ApplicationController
before_action :find_aa, only: [:create, :edit, :update, :destroy]
before_action :find_acm, only: [:edit, :update, :destroy]


def index

end
def create
		
	@acm= @aa.acms.create(comm_params)
	@acm.user_id = current_user.id

	 @acm.save
		redirect_to aa_path(@aa)

end


def edit

end

def update
		
	if  @acm.update(comm_params)
		redirect_to aa_path(@aa)
	else
		render 'edit'
	end
end

def destroy
		
	@acm.destroy
	redirect_to aa_path(@aa)

end

private
 
def comm_params
	params.require(:acm).permit(:content)
end

def find_aa
	@aa = Aa.find(params[:aa_id])
end

def find_acm
	@acm = @aa.acms.find(params[:id])
end
end
