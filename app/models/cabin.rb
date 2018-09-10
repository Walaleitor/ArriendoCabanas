# == Schema Information
#
# Table name: cabins
#
#  id         :bigint(8)        not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Cabin < ApplicationRecord
  has_many :reservations, :dependent => :delete_all
  has_many :customers , through:  :reservations
  has_many :bicycles, :dependent => :delete_all
  has_many :services, :dependent => :delete_all
  has_many :products, :dependent => :delete_all

  #Validaciones
  validates :name,
            presence: {message: ": No puede estar en blanco"},
            length: {minimun: 3, maximum: 20 }


end
