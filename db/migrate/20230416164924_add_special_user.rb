class AddSpecialUser < ActiveRecord::Migration[7.0]
  def change
    user = User.new(
      first_name: 'openAi',
      last_name: 'openAI',
      encrypted_password: Devise::Encryptor.digest(User, ENV.fetch('PASSWORD_SPECIAL_USER')),
      confirmed_at: Time.current,
      resume_mail_enabled: true,
      role: 'user',
      state: 'permitted',
      email: ENV.fetch('EMAIL_SPECIAL_USER'),
      about: 'bot',
      password: ENV.fetch('PASSWORD_SPECIAL_USER')
    )
    user.save!
  end
end
