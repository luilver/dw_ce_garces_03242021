# frozen_string_literal: true

# Main entry point to the route mounted for the API in Grape
module Api
  class Api < Grape::API::Instance
    helpers Helpers::Base

    helpers do
      def logger
        Api.logger
      end
    end
    logger.level = Logger::INFO

    rescue_from Grape::Exceptions::ValidationErrors do |exception|
      errors = {}
      exception.errors.each do |param, error|
        errors[param.first] = error.map(&:message)
      end

      logger.error "API error: #{exception.full_message}"
      error!(errors, 400)
    end

    rescue_from Grape::Exceptions::MethodNotAllowed do |_e|
      logger.error "API error: #{_e.full_message}"
      error!({ message: 'METHOD_NOT_ALLOWED' }, 405)
    end

    rescue_from StandardError do |_e|
      logger.error(_e)
      error!({ message: 'INTERNAL_SERVER_ERROR' }, 500)
    end

    mount V1::Base
  end
end
