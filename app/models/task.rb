class Task < ActiveRecord::Base
    belongs_to :user
    default_scope -> { order(created_at: :desc) }
    validates :name,  presence: true
    validates :content,  presence: true
    validates :status,  presence: true

    scope :status_is, ->(status) { where(status: status) }

    scope :status_is_not_yet, -> { status_is(NOT_YET) }
    scope :status_is_pending, -> { status_is(PENDING) }
    scope :status_is_done, -> { status_is(DONE) }

    NOT_YET = 0
    DONE = 1
    PENDING = 2
    
    STATUS = {
            'NOT_YET' => NOT_YET,
            'DONE' => DONE,
            'PENDING' => PENDING
    }.freeze

    def status_name
        STATUS.key(self.status)
    end

end
