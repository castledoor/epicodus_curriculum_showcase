class ContactsController < ApplicationController
  def index
    @contacts = Contact.all
  end

  def show
    @contact = Contact.find(params[:id]) 
  end

  def new 
    @contact = Contact.new
    render :new  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      flash[:notice] = "Your contact was successfully created."
      redirect_to contacts_path
    else
      render :new
    end
  end

  def edit
    @contact = Contact.find(params[:id])
    # render :edit |automatically render the template with their name.|
  end

  def destory 
    @contact = Contact.find(params[:id])
    @contact.destory
    flash[:notice] = "Your contact was sucessfully destoryed."
    redirect_to contacts_path
  end

  private

  def contact_params
    params.require(:contact).permit(:name, :phone, :email)
  end

  def update
    @contact = Contact.find(params[:id])
    if @contact.update(contact_params)
      flash[:notice] = "Your contact was successfully updated."
      # redirect_to "/contacts/#{@contact.id}" can be rewritten this way
      redirect_to @contact
    else 
      render :edit
    end
  end
end