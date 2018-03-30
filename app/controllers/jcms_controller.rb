class JcmsController < ApplicationController

before_action :find_ja, only: [:create, :edit, :update, :destroy]
before_action :find_jcm, only: [:edit, :update, :destroy]

def create
	
	@jcm= @ja.jcms.create(comm_params)
	@jcm.user_id = current_user.id

        @jcm.save
		redirect_to ja_path(@ja)
	
end


def edit

		
end

def update
		
	if  @jcm.update(comm_params)
		redirect_to ja_path(@ja)
	else
		render 'edit'
	end
end

def destroy
	
	@jcm.destroy
	redirect_to ja_path(@ja)
end

private
 
def comm_params
	params.require(:jcm).permit(:content)
end

def find_ja
	@ja = Ja.find(params[:ja_id])
end

def find_jcm
	@jcm = @ja.jcms.find(params[:id])
end


end
