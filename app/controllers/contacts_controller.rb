class ContactsController < ApplicationController
  load_and_authorize_resource
  layout "application_with_sidebar"

  add_breadcrumb "Home", :root_path
  add_breadcrumb "Contact", "/contact"
  add_breadcrumb "Formulier", :new_contact_path

  def new
    @contact = Contact.new(defaults)
  end

  def create
    @contact = Contact.new(contact_params)

    if @contact.save
      flash[:success] = 'Bedankt, we hebben je contactaanvraag ontvangen!'
      @contact.send_admin_contact_email

      redirect_to new_contact_path
    else
      render 'new'
    end
  end

  private

    def contact_params
      params.require(:contact).permit(:name, :email, :phone, :message)
    end

    def defaults
      default_values = {}
      unless current_user.nil?
        default_values[:name] = current_user.name
        default_values[:phone] = current_user.phone
        default_values[:email] = current_user.email
      end
      default_values
    end
end
