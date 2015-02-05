class PhonesController < ApplicationController

  def new
    @person = Person.find params[:person_id]
    @phone = @person.phones.new
  end


  def create
    @person = Person.find params[:person_id]
    @phone = @person.phones.new phone_params
    if @phone.save
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

  def phone_params
    params.require(:phone).permit(:phone)    
  end

end
