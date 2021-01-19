class Task < ApplicationRecord
  state_machine initial: :new_task do
    state :new_task, :in_development, :in_qa,
          :code_review, :ready_for_release, :released, :archived

    event :develop do
      transition new_task: :in_development
      transition in_qa: :in_development
      transition in_code_review: :in_development
    end

    event :qa do
      transition in_development: :in_qa
    end

    event :code_review do
      transition in_qa: :in_code_review
    end

    event :ready do
      transition in_code_review: :ready_for_release
    end

    event :release do
      transition ready_for_release: :released
    end

    event :archive do
      transition released: :archived
      transition released: :new_task
    end
  end

  belongs_to :author, class_name: 'User'
  belongs_to :assignee, class_name: 'User', optional: true

  validates :name, presence: true
  validates :description, presence: true
  validates :author, presence: true
  validates :description, length: { maximum: 500 }
end
