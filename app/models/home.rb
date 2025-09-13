class Home < ApplicationRecord
  validates :address, presence: true
  validates :city, presence: true
  validates :state, presence: true
  validates :zip_code, presence: true, format: { with: /\A\d{5}(-\d{4})?\z/, message: "must be a valid ZIP code" }
  validates :price, presence: true, numericality: { greater_than: 0 }
  validates :bedrooms, presence: true, numericality: { greater_than: 0, only_integer: true }
  validates :bathrooms, presence: true, numericality: { greater_than: 0 }
  validates :square_feet, presence: true, numericality: { greater_than: 0, only_integer: true }
  validates :image_url, format: { with: URI::regexp(%w[http https]), message: "must be a valid URL" }, allow_blank: true

  def full_address
    "#{address}, #{city}, #{state} #{zip_code}"
  end

  def price_formatted
    "$#{number_with_delimiter(price.to_i)}"
  end
end
