class Usuario < ActiveRecord::Base
  
  has_many :posts, dependent: :restrict
  
  validates :nome, :presence => true
  validates :email, :uniqueness => true
  validates :cpf, :numericality => true, :length => {:is => 11}
end
