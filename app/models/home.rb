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
  validate :image_format_support

  # Supported image formats including WebP
  SUPPORTED_IMAGE_FORMATS = %w[jpg jpeg png gif webp].freeze

  def full_address
    "#{address}, #{city}, #{state} #{zip_code}"
  end

  def price_formatted
    "$#{number_with_delimiter(price.to_i)}"
  end

  # Check if the image URL points to a WebP image
  def webp_image?
    return false if image_url.blank?
    image_url.downcase.include?('.webp') || image_url.downcase.include?('fm=webp')
  end

  # Get the image format from the URL
  def image_format
    return nil if image_url.blank?
    
    # Check for WebP format parameter first
    return 'webp' if image_url.downcase.include?('fm=webp')
    
    # Check file extension
    extension = image_url.split('.').last&.downcase
    extension if SUPPORTED_IMAGE_FORMATS.include?(extension)
  end

  # Convert image URL to WebP format (if supported by the service)
  def webp_image_url
    return image_url if webp_image?
    return image_url if image_url.blank?
    
    # For Unsplash images, we can request WebP format
    if image_url.include?('unsplash.com')
      image_url.gsub(/\.(jpg|jpeg|png)/, '.webp')
    else
      image_url
    end
  end

  private

  def image_format_support
    return if image_url.blank?
    
    format = image_format
    if format && !SUPPORTED_IMAGE_FORMATS.include?(format)
      errors.add(:image_url, "format '#{format}' is not supported. Supported formats: #{SUPPORTED_IMAGE_FORMATS.join(', ')}")
    end
  end
end
