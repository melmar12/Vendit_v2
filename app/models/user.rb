class User < ActiveRecord::Base
    has_secure_password

    validates :password, presence: true,
      length: {minimum: 3, maximum: 30}

      private
       def set_defaults
          self.admin ||= false
       end
end
