class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request

    if @contact.deliver
      flash[:notice] = "Thank you for your message. I will contact you soon!"
      #redirect_to root_path
    else
      flash[:notice] = "Could not send message."
      render :new
    end
  end
end
