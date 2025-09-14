class ContactController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    
    if @contact.valid?
      # Here you would typically send an email or save to database
      # For now, we'll just show a success message
      flash[:notice] = "Thank you for contacting us! We'll get back to you soon."
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def contact_params
    params.require(:contact).permit(:name, :email, :message)
  end
end
