# encoding: utf-8

class ImageUploader < CarrierWave::Uploader::Base

  include CarrierWave::MiniMagick
  include CarrierWave::ImageOptimizer

  storage :file

  process :optimize

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  version :large, if: :now? do
    process :resize_to_fit => [1200, 1200]
  end

  version :thumb200, if: :now? do
    process :resize_to_fit => [200, 200]
  end

  version :thumb400, if: :now? do
    process :resize_to_fit => [400, 400]
  end

  def extension_white_list
    %w(jpg jpeg gif png)
  end

  def now
    @now = true
    self
  end

  protected

    def now?(_)
      @now
    end
end
