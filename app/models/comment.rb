class Comment < ApplicationRecord
    belongs_to :article

    validates :commenter, presence: { message: "must be given please" }, 
        length: {minimum: 2,
        too_short: "%{count} characters is the minimum allowed"}

    validates :body, presence: { message: "must be given please" },
        length: {minimum: 5, too_short: "%{count} characters is the minimum allowed",
        maximum: 200,
        too_long: "%{count} characters is the maximum allowed"}
end
