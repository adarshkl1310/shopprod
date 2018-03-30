class CompsController < ApplicationController


	before_action :find_comp, only: [:show, :edit, :update, :destroy]

def index
    
    @comps = Comp.all	
   
    @users = User.all
end

def new
	 @comp = current_user.comps.build
end
def create
    @comp = current_user.comps.build(comp_params)
    
   if @comp.save
    redirect_to profil_path(@comp.user.id)
else
	render "new"
end
end

def show
   
end

def edit
 	   
end

def update
		
    if  @comp.update(comp_params)
		redirect_to profil_path(@comp.user.id)
	else
		render 'edit'
end
end

def destroy
	
	@comp.destroy
	redirect_to profil_path(@comp.user.id)
end	

private

def comp_params
			
	params.require(:comp).permit(:company_name,:company_phone,:company_address,:year_establishment,:total_employees,:target_contry,:total_company_revenue,:total_annual_revenue,:oem_odm,:standard_certification,:success_failure)

end

def find_comp
    	 
    @comp = Comp.find(params[:id])
   
end
	
end
