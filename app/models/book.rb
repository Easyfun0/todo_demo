class Book < ApplicationRecord
    validates :name, presence: true, uniqueness: true
    validates :date, presence: true
    validates :price, presence: true, numericality: { greater_than: 0 }
    validates :pages, presence: true, numericality: { greater_than: 0 }
    validates :isbn, presence: true, uniqueness: true, length: { minimum: 10 }
end
