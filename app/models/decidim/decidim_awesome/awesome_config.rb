# frozen_string_literal: true

module Decidim
  module DecidimAwesome
    class AwesomeConfig < ApplicationRecord
      self.table_name = "decidim_awesome_config"

      belongs_to :organization, foreign_key: :decidim_organization_id, class_name: "Decidim::Organization"

      validates :organization, presence: true
      validates :var, uniqueness: { scope: :decidim_organization_id }
    end
  end
end
