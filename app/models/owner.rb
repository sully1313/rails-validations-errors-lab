class Owner < ActiveRecord::Base
  validates :first_name, presence: true, uniqueness: false, length: {minimum: 2}
  validates :last_name, presence: true,   uniqueness: false, length: {minimum: 2}
  validates :email, presence: true, uniqueness: true, length: {minimum: 5}
  validates :phone, presence: true, uniqueness: true
  before_save :normalize_phone_number

  # removes leading 1 and the characters (, ), -, .
  def normalize_phone_number
    # stretch
  end

end
