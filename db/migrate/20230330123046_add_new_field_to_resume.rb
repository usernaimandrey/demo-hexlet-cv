class AddNewFieldToResume < ActiveRecord::Migration[7.0]
  def change
    add_column :resumes, :contact_email, :string
    add_column :resumes, :contact_phone, :string
  end
end
