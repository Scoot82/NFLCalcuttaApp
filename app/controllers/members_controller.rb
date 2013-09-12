class MembersController < ApplicationController
  
  def index
    @members = Member.all
  end
  
  def new
    @member = Member.new 
  end
  
  def create
    @member = Member.new(params[:member])
    @member.save
    if @member.save
      flash[:notice] = "New Member Created"
      redirect_to members_path
    else
      flash[:alert] = "Something went wrong"
      render :new
    end
  end
  
  def show
  end
  
  def edit
    @member = Member.find(params[:id])
  end
  
  def update
    @member = Member.find(params[:id])
    @member.update_attributes(params[:member])
    @member.save
    redirect_to members_path
  end
  
  def destroy
  end
  
end
