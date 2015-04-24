class ContactFormsController < ApplicationController

  def new
    @contact = ContactForm.new
  end

  def create
    @contact = ContactForm.new contact_form_params
    if @contact.deliver
      redirect_to home_path, notice: "Your message has been sent."
    else
      render :new, error: "Sorry, your message has not been sent, please try to email support@ensend.com"
    end
  end


private

  def contact_form_params
    params.require(:contact_form).permit(:name, :email, :message)
  end

end
