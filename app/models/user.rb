class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, 
         :recoverable, :rememberable, :trackable, :validatable

  # User::Roles
  # The available roles
  Roles = [ :admin , :warehouse ]

  def is?( requested_role )
    self.role == requested_role.to_s
  end

end
