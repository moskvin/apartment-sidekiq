# frozen_string_literal: true

module Sidekiq
  module JobRecordApartmentExtensions
    def display_class
      [@item['apartment'], super.to_s].reject(&:blank?).join(': ')
    end
  end

  class JobRecord
    prepend JobRecordApartmentExtensions
  end
end
