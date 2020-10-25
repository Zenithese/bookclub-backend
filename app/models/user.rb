class User < ApplicationRecord
    validates :username, :password_digest, :session_token, presence: true
    validates :username, :session_token, uniqueness: true
    validates :password, length: {minimum: 6, allow_nil: true}
    attr_reader :password
    after_initialize :ensure_session_token

    has_many :books,
        foreign_key: :user_id

    has_many :highlights,
        foreign_key: :user_id

    has_many :comments,
        foreign_key: :user_id
        
    has_many :followings, class_name: :Follow
    has_many :follows, through: :followings

    has_many :received_followings, class_name: :Follow, foreign_key: :follow_id
    has_many :received_follows, through: :received_followings, source: :user

    def self.find_by_credentials(username, password)
        user = User.find_by(username: username)
        return nil if user.nil?
        user.is_password?(password) ? user : nil
    end

    def password=(password)
        @password = password
        self.password_digest = BCrypt::Password.create(password)
    end

    def is_password?(password)
        BCrypt::Password.new(self.password_digest).is_password?(password)
    end

    def reset_session_token!
        self.session_token = SecureRandom.urlsafe_base64
        self.save!
        self.session_token
    end

    private

    def ensure_session_token
        self.session_token ||= SecureRandom.urlsafe_base64
    end
end
