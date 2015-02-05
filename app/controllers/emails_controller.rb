class EmailsController < ApplicationController

  def new
    @person = Person.find params[:person_id]
    @email = @person.emails.new 
  end 


  def create
    @person = Person.find params[:person_id]
    @email = @person.emails.new email_params
    if @email.save
      redirect_to person_path(@person.id)
    else
      render 'new'
    end
  end

  def edit
  end

  def destroy
    
  end

  private

  def email_params
    params.require(:email).permit(:e_address)    
  end


end
