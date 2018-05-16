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

  validates :rut,
            presence: true,
            rut: true

  validates :first_name,
             presence: true,
             length: {minimum: 2,maximum: 10}

  validates :last_name,
             presence: true,
             length: {minimum: 2,maximum: 10}


end
