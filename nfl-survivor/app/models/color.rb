class Color < ApplicationRecord
  validates :primary,
    presence: true,
    length: { is: 7 },
    format: { with: /\A#[0-9a-fA-F]+\z/ }
  validates :alternate,
    presence: true,
    length: { is: 7 },
    format: { with: /\A#[0-9a-fA-F]+\z/ }
end
