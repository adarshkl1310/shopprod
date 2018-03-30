class WcmsController < ApplicationController

before_action :find_wa, only: [:create, :edit, :update, :destroy]
before_action :find_wcm, only: [:edit, :update, :destroy]


def create
		
	@wcm= @wa.wcms.create(comm_params)
	@wcm.user_id = current_user.id

	     @wcm.save
		redirect_to wa_path(@wa)

end


def edit

end

def update
		
	if  @wcm.update(comm_params)
		redirect_to wa_path(@wa)
	else
		render 'edit'
	end
end

def destroy
		
	@wcm.destroy
	redirect_to wa_path(@wa)
	
end

private
 
def comm_params
	params.require(:wcm).permit(:content)
end

def find_wa
	@wa = Wa.find(params[:wa_id])
end

def find_wcm
	@wcm = @wa.wcms.find(params[:id])
end

end
