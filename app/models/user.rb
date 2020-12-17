class User < ApplicationRecord
  enum state: { invicto: 0, repitencia_1: 1, observado: 2 }
  validates :first_name, :last_name, :email, :password, presence: true
  validates :password, length: { minimum: 6 }
  validate :email_institucional

  private

  def email_institucional
    return if email.match(/^(.+)\.(.+)@unmsm.edu.pe$/)
  end
end
