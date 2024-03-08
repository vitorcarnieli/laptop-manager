class Laptop < ApplicationRecord
  validates :serial_number, presence: true, length: { is: 22 }
  validates :listed_number, presence: true, length: { is: 7 }
  validates :model, presence: true, inclusion: { in: %w(A515-54-5526 A515-54-55L0) }

  has_many :links

  def as_json(options = {})
    super(options.merge(include: :links))
  end
end
