# frozen_string_literal: true

class Users::ConfirmationsController < Devise::ConfirmationsController

  def show
    super do
      sign_in(resource) if resource.errors.empty?
    end
  end

  def after_confirmation_path_for(resource_name, resource)
      root_path
    # after_sign_in_path_for(resource)
  end



  # GET /resource/confirmation/new
  # def new
  #   super
  # end

  # POST /resource/confirmation
  # def create
  #   super
  # end

  # GET /resource/confirmation?confirmation_token=abcdef
  # def show
  #   super
  # end

  # protected

  # The path used after resending confirmation instructions.
  # def after_resending_confirmation_instructions_path_for(resource_name)
  #   super(resource_name)
  # end

  # The path used after confirmation.
  # def after_confirmation_path_for(resource_name, resource)
  #   super(resource_name, resource)
  # end
end
