class Task < ActiveRecord::Base
    validates :name,  presence: true
    validates :content,  presence: true
    validates :status,  presence: true

    NOT_YET = 0
    DONE = 1
    PENDING = 2
    
    STATUS = {
            'NOT_YET' => NOT_YET,
            'DONE' => DONE,
            'PENDING' => PENDING
    }.freeze

end
