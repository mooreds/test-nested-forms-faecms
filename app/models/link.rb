class Link < ApplicationRecord
  include Fae::BaseModelConcern

  belongs_to :category, touch: true

  def fae_nested_parent
    :category
  end

  acts_as_list add_new_at: :top
  default_scope { order(:position) }

  def fae_display_field
    title
  end

  belongs_to :category
end
