class ProfilsController < ApplicationController

before_action :find_profil, only: [:show, :edit, :update, :destroy]

def index

     @users = User.includes(:buysels,:buyselcms)
     @users = User.includes(:aas,:acms)   
     @users = User.includes(:bas,:bcms)
     @users = User.includes(:cas,:ccms)  
     @users = User.includes(:das,:dcms)   
     @users = User.includes(:eas,:ecms)
     @users = User.includes(:fas,:fcms)   
     @users = User.includes(:gas,:gcms)   
     @users = User.includes(:has,:hcms)
     @users = User.includes(:iis,:icms)   
     @users = User.includes(:jas,:jcms)   
     @users = User.includes(:kas,:kcms)
     @users = User.includes(:las,:lcms)   
     @users = User.includes(:mas,:mcms)   
     @users = User.includes(:nas,:ncms)
     @users = User.includes(:oas,:ocms)   
     @users = User.includes(:pas,:pcms)   
     @users = User.includes(:qas,:qcms)
     @users = User.includes(:ras,:rcms)   
     @users = User.includes(:sas,:scms)   
     @users = User.includes(:tts,:tcms)
     @users = User.includes(:uas,:ucms)   
     @users = User.includes(:vas,:vcms)   
     @users = User.includes(:was,:wcms)
     @users = User.includes(:xas,:xcms)                                         	 
     @users = User.includes(:yas,:ycms)   
     @users = User.includes(:zas,:zcms)   
     @users = User.includes(:zzas,:zzcms)
     @users = User.includes(:comps,:compcms)
     @users = User.includes(:shops,:shopcms)

end


def new

     @profil=current_user.profils.build
     

end

def show
@profil = Profil.where(params[:id])
@profils = Profil.where(params[:id])
@comp    = Comp.where(params[:id])
@compcm = Compcm.where(params[:id])
@prods = Prod.where(params[:id])
@user = User.find(params[:id].to_i)
@shop = Shop.where(params[:id])
@user.profils.limit(1).first
end



def create
@profil =current_user.profils.build(profil_params)
if @profil.save
redirect_to profil_path(@profil.user.id)
else
    render "new"
end
end


def destroy
  @profil = Profil.find(params[:id])
  @profil.destroy
  redirect_to profil_path(@profil.user.id)
 end	
end

private

def profil_params
    

    params.require(:profil).permit(:uphoto,:date_of_birth)
    
    end

def find_profil

@profils = Profil.where(params[:id])

 end