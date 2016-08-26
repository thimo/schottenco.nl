class Admin::ContactsController < AdminController
  add_breadcrumb "Contactformulier", :admin_contacts_path

  def index
    @contacts = Contact.desc.page(params[:page]).per(30)
  end

  def show
    @contact = Contact.find(params[:id])

    add_breadcrumb @contact.name, [:admin, @contact]
  end
end
