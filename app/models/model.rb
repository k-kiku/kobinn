class Model < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
   devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable
         
   has_many :listings     
         
   def self.from_omniauth(auth)
      where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
         model.email = auth.info.email
         model.password = Devise.friendly_token[0,20]
         model.name = auth.info.name   # assuming the user model has a name
         model.image = "http://graph.facebook.com/#{auth.uid}/picture?type=large" # assuming the user model has an image
        # If you are using confirmable and the provider(s) you use validate emails, 
        # uncomment the line below to skip the confirmation emails.
        # user.skip_confirmation!
      end
    end
end
