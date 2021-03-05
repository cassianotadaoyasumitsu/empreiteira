class User < ApplicationRecord
  after_create :create_tenant

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :validatable

  validates :email, uniqueness: true
  validates :subdomain, uniqueness: true

private

  def create_tenant
    Apartment::Tenant.create(subdomain)
  end
end
