class AddContactTelegramToResume < ActiveRecord::Migration[7.0]
  def change
    add_column :resumes, :contact_telegram, :string
  end
end
