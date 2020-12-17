class User < ApplicationRecord
  validates :first_name, :last_name, :email, :password, presence: true
  validate :email_institucional

  private

  def email_institucional
    return if email.match(/^(.+)\.(.+)@unmsm.edu.pe$/)
  end
end
