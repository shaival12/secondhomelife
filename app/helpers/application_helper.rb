module ApplicationHelper
  # Helper method to generate responsive image tags with WebP support
  def responsive_image_tag(image_url, options = {})
    return content_tag(:div, "No Image", class: "bg-light d-flex align-items-center justify-content-center", style: "height: 200px;") if image_url.blank?
    
    # Default options
    default_options = {
      class: 'img-fluid',
      loading: 'lazy',
      alt: 'Property image'
    }
    
    # Merge with provided options
    final_options = default_options.merge(options)
    
    # Add fallback for WebP
    if image_url.include?('unsplash.com')
      webp_url = image_url.gsub(/\.(jpg|jpeg|png)/, '.webp')
      final_options[:onerror] = "this.onerror=null; this.src='#{image_url}'"
      image_tag(webp_url, final_options)
    else
      image_tag(image_url, final_options)
    end
  end
  
  # Check if browser supports WebP
  def webp_supported?
    # This would typically be done with JavaScript, but for simplicity we'll assume modern browsers support it
    true
  end
end
