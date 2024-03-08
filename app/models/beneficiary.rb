class Beneficiary < ApplicationRecord
  validates :name, presence: true
  validates :identification_document, presence: true, length: { minimum: 9, maximum: 11 }
  validates :contact_number, presence: true
  validates :contract_type, presence: true, inclusion: { in: %w(contratado efetivo) }
  
end
