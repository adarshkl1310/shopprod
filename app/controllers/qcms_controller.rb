class QcmsController < ApplicationController
before_action :find_qa, only: [:create, :edit, :update, :destroy]
before_action :find_qcm, only: [:edit, :update, :destroy]

def create
    @qcm = @qa.qcms.create(comm_params)
	@qcm.user_id = current_user.id

	    @qcm.save
		redirect_to qa_path(@qa)

end


def edit

end

def update
	
	if  @qcm.update(comm_params)
		redirect_to qa_path(@qa)
	else
		render 'edit'
	end
end

def destroy
		
	@qcm.destroy
	redirect_to qa_path(@qa)
	
end

private
 
def comm_params
	params.require(:qcm).permit(:content)
end

def find_qa
	@qa = Qa.find(params[:qa_id])
end

def find_qcm
	@qcm = @qa.qcms.find(params[:id])
end


end
