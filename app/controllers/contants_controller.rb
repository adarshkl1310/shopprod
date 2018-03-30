class ContantsController < ApplicationController

def index
	 

end

def create

    @contant = current_user.contants.build(contant_params)
    
   if @contant.save
    redirect_to shops_path
   else
	render "new"

end
end
private

def contant_params
			
	params.require(:contant).permit(:phone_email_number,:detail)

end


	
end
