# == Schema Information
#
# Table name: customers
#
#  id         :bigint(8)        not null, primary key
#  address    :text
#  email      :string
#  first_name :string
#  last_name  :string
#  phone      :string
#  rut        :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Customer < ApplicationRecord


  #Relaciones
  has_many :reservations, :dependent => :delete_all
  has_many :cabins , through: :reservations

  #Validaciones

  validates_presence_of  :email, :address, :phone
  validates_email_format_of :email, :message => 'is not looking good'


  def select_client
    "#{first_name} #{last_name} + #{rut}"
  end

  validates :rut,
            presence: true,
            uniqueness: true,
            rut: true

  validates :first_name,
             presence: {message: ": No puede estar en blanco"},
             length: {minimum: 2,maximum: 10, message: ": Minimo 2 caráctares"},
             format: { with: /\A[\p{L}\p{M}]+\z/, message: ": Favor solo ingresar letras" }

  validates :last_name,
             presence: {message: ": No puede estar en blanco"},
             length: {minimum: 2,maximum: 10, message: ": Minimo 2 caráctares"},
             format: { with: /\A[\p{L}\p{M}]+\z/, message: ": Favor solo ingresar letras" }
             
  validates :email,
            presence: {message: ": No puede estar en blanco"},
            format: { with: Devise.email_regexp, message: "no valido" }

  validates :phone,
             presence: {message: ": No puede estar en blanco"},
             numericality: { only_integer: true, message: "Solo puede contener números"}

  validates :address,
            presence: {message: ": No puede estar en blanco"},
            format: {with: /\A[a-zA-Z0-9\s]+\z/i, message: "Solo puede contener letras y números."}




end
