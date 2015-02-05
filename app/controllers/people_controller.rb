class PeopleController < ApplicationController

  def home
  end

  def index
    @people = Person.all
  end

  def show
    @person = Person.find params[:id]
  end

  def search
    @people = Person.search(params[:search])
    render "home"
  end

  def new
    @person = Person.new
  end

  def create 
    @person = Person.new(person_params) 
    if @person.save
      redirect_to action: "index"
    else
      render "new"
    end
  end

  def edit
    @person = Person.find(params[:id])    
  end


  private
    def person_params
      params.require(:person).permit(:name, :adress, :phone, :email)
    end
end
