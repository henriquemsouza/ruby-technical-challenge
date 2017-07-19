class User < ApplicationRecord 
    #Validate form fields
    scope :confirmed, -> { where.not(confirmed_at: nil) }
    EMAIL_REGEXP = /\A[^@]+@([^@\.]+\.)+[^@\.]+\z/
    validates_presence_of :email, :full_name, :job
    validates_format_of :email, with: EMAIL_REGEXP
    validates_uniqueness_of :email


	has_secure_password
    #gerar o token
	before_create do |user|
		user.confirmation_token = SecureRandom.urlsafe_base64
	end

	def self.authenticate(email, password)
		confirmed.find_by(email: email).
		try(:authenticate, password)
	end

	def confirm!
		return if confirmed?

		self.confirmed_at = Time.current
		self.confirmation_token = ''
		save!
	end

	def confirmed?
		confirmed_at.present?
	end

	def store(user)
		@session[:user_id] = user.id
	end


end
