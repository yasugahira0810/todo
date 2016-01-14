class Task < ActiveRecord::Base
    validates :name,  presence: true
    validates :content,  presence: true
    validates :status,  presence: true
end
