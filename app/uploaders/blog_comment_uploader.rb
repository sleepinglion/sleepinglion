class BlogCommentUploader < CarrierWave::Uploader::Base
  include CarrierWave::MiniMagick
  #include CarrierWave::WebP::Converter
  # Choose what kind of storage to use for this uploader:
  #storage :file
  #storage :fog

  # Override the directory where uploaded files will be stored.
  # This is a sensible default for uploaders that are meant to be mounted:
  def store_dir
    "#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  # Provide a default URL as a default if there hasn't been a file uploaded:
  # def default_url
  #   "/images/fallback/" + [version_name, "default.png"].compact.join('_')
  # end

  #
  def scale(width, height)
    # do something
  end

  # Create different versions of your uploaded files:
  version :small_thumb do
    process :resize_to_fill => [100, 100]
  end

  version :medium_thumb do
    process :resize_to_fill => [200, 200]
  end

  version :large_thumb do
    process :resize_to_fill => [370, 430]
  end

  # Add a white list of extensions which are allowed to be uploaded.
  # For images you might use something like this:
  def extension_white_list
  %w(jpg jpeg gif png)
  end

  # Override the filename of the uploaded files:
  # Avoid using model.id or version_name here, see uploader/store.rb for details.
  # def filename
  #   "something.jpg" if original_filename
  # end

end
