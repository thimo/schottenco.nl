class MissingController < ApplicationController
  skip_authorization_check

  EXCEPTIONS = [
    Errno::ENOENT, # Original Image not found
    CarrierWave::ProcessingError # Image is broken
  ]

  def show
    if create_version
      redirect_to request.env['PATH_INFO'] if create_version
    else
      redirect_to self.class.helpers.asset_url('assets/missing.png')
    end
  rescue *EXCEPTIONS
    # image.destroy
    redirect_to self.class.helpers.asset_url('assets/missing.png')
  end

  private

    def create_version
      model_instance.create_version(version)
      File.exist?("public#{request.env['PATH_INFO']}")
    end

    def model_instance
      params[:klass].camelize.constantize.find(params[:id])
    end

    def version
      params[:version].to_sym
    end
end
