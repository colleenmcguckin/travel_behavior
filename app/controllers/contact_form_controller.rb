class ContactFormController < ApplicationController

  def deliver
    contact_form = ContactForm.new contact_form_params
    if contact_form.deliver
      redirect_to home_path, notice: 'Contact Form successfully sent. Thank you!'
    else
      redirect_to home_path, notice: 'Contact Form could not be sent, please try again later.'
    end
  end

  private

  def contact_form_params
    params.require(:contact_form).permit :name, :email, :message
  end
end
