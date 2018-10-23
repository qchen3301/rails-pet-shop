class Owner < ActiveRecord::Base
  validates :first_name, presence: true, length: {maximum: 255}
  validates :last_name, presense: true, length: {maximum: 255}
  validates :email, format: {with: URI::MailTo::EMAIL_REGEXP}

  before_save :normalize_phone_number

  # removes leading 1 and the characters (, ), -, .
  def normalize_phone_number
    # stretch
  end

end
