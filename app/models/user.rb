class User < ActiveRecord::Base
    has_secure_password

    validates :password, presence: true, length: {minimum: 5, maximum: 120}, on: :create
    validates :username, presence: true
    
      def password=(password)
        self.password_digest = BCrypt::Password.create(password)
      end

      def is_password?(password)
        BCrypt::Password.new(self.password_digest) == password
      end

end
