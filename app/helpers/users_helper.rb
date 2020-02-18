module UsersHelper

  # Returns the Gravatar for the given user.
  def gravatar_for(user, options = { size: 80 })
    
    size = options[:size]
    
    if user.email.downcase == "liuyandong@gmail.com"
      image_tag(asset_path('dong.png'), alt: user.name, class: "gravatar", size: "#{size}")
    else
      gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
      base64_identicon = RubyIdenticon.create_base64(gravatar_id)
      image_tag("data:image/png;base64,#{base64_identicon}", alt: user.name, class: "gravatar", size: "#{size}")
    end
    
  end
end