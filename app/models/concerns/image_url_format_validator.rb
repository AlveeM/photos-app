class ImageUrlFormatValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    if !correct_image_format?(value)
      record.errors.add attribute, message: 'format needs to be jpeg, jpg, png, or gif'
    end
  end

  # correct formats: .jpg, .jpeg, .png, .gif
  def correct_image_format?(url)
    valid_image_formats = ['jpg', 'jpeg', 'png', 'gif']
    image_format = url.split('.').last
    valid_image_formats.include?(image_format)
  end
end