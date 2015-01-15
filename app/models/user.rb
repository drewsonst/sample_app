class User < ActiveRecord::Base
    # \A\z = nothing beofre or after; [\w+\-.]+ = at least 1 word char, +, -, or .; @ literal @;
    # [a-z\d-.]+ at least 1 letter, digit, -, or .; \. literal .; [a-z]+ at least 1 letter; /i case insensitive
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :name,  presence: true, length: { maximum: 50 }  #affects user.valid?
    validates :email, presence: true, length: { maximum: 255 }, 
                      format: { with: VALID_EMAIL_REGEX }, 
                      uniqueness: { case_sensitive: false } #infers uniqueness: true, but not case sens
                      
    #Adds hashed password_digest, password and password_confirmation attribs that have presence and matching validation
      #Authenticate method that returns the user when the pass is correct
      #Have to add password_digest to the user migration
    has_secure_password 
    validates :password, length: { minimum: 6 }
end
