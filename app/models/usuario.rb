class Usuario < ActiveRecord::Base
  validates :nome, :presence => true
  validates :email, :uniqueness => true, :format => :email, :with => /regex/i
  validates :cpf, :numericality => true, :length => {:is => 11}
end
