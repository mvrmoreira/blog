class Usuario < ActiveRecord::Base
  validates :nome, :presence => true
  validates :email, :uniqueness => true
  validates :cpf, :numericality => true, :length => {:is => 11}
end
