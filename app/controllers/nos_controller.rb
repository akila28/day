class NosController < ApplicationController

def new
@no = No.new
end

def create
  @no = No.new no_params
   if @no.save 
     flash[:success] = "hello!"
     redirect_to no_path(@no)  
   else
     flash[:alert] = "wrong value"
     render 'new'
  end           
end

def index
  @nos = No.all
end 

def show
  @no = No.find(params[:id])
end


def no_params
 params.require(:no).permit(:total, :opening_date, :closing_date)
end

end
