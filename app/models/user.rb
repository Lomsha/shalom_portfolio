class User < ApplicationRecord
  ############################################################################################
  ## PeterGate Roles                                                                        ##
  ## The :user role is added by default and shouldn't be included in this list.             ##
  ## The :root_admin can access any page regardless of access settings. Use with caution!   ##
  ## The multiple option can be set to true if you need users to have multiple roles.       ##
  petergate(roles: [:site_admin, :editor], multiple: false)                                      ##
  ############################################################################################ 
 

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable , :trackable

         validates_presence_of :name 

         attr_accessor :full_name
         before_validation :name

        #integrate a virtual attribute to extraxt first and last name in rails
         def first_name
          self.name.split.first
         end
         def last_name
          self.name.split.last
         end 

  # private

  #  def set_names
  #     names = full_name.split
  #     self.first_name = names.first
  #     self.last_name = names.last
  #  end
end
