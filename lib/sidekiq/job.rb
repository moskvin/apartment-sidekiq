# frozen_string_literal: true

# Remove this later as Job class was renamed as JobRecord
module Sidekiq
  module JobApartmentExtensions
    def display_class
      [@item['apartment'], super.to_s].reject(&:blank?).join(': ')
    end
  end

  class Job
    prepend JobApartmentExtensions
  end
end
