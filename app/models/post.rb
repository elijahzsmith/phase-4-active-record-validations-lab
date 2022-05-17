class Post < ApplicationRecord
    validates :title, presence: true
    validates :content, length: { minimum: 250 }
    validates :summary, length: { maximum: 250 }
    validates :category, inclusion: { in: ['Fiction', 'Non-Fiction'] }
    validate :title_cant_be

    def title_cant_be
        if title === "True Facts"
            errors.add(:title, "Must not be fake")
        end
    end
end
