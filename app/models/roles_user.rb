# Created this model to be able to view the timestamp of the roles_users table
class RolesUser < ActiveRecord::Base
  belongs_to :role
  belongs_to :user
end
