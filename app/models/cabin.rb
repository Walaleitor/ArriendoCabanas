# == Schema Information
#
# Table name: cabins
#
#  id         :bigint(8)        not null, primary key
#  name       :string
#  tipo       :integer
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
            presence: true,
            length: {minimun: 3, maximum: 20 }

  validates :tipo,
            presence: true,
            numericality: true
end
