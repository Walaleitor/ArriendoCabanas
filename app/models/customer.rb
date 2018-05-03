class Customer < ApplicationRecord
   attr_accessor :rut

  #Relaciones
  has_many :reservations, :dependent => :delete_all
  has_many :cabins , through: :reservations

  #Validaciones

  validates_presence_of  :email, :address, :phone

  validates_email_format_of :email, :message => 'is not looking good'

  validates :rut,
            rut: true,
            presence: true

  validates :first_name,
             presence: true,
             length: {minimum: 2,maximum: 10}

  validates :last_name,
             presence: true,
             length: {minimum: 2,maximum: 10}


  accepts_nested_attributes_for :reservations
end
