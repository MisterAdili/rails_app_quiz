class Job < ApplicationRecord
    validates :url, presence: true
    validates :employer_name, presence: true
    validates :employer_description, presence: true
    validates :job_title, presence: true
    validates :job_description, presence: true
    validates :year_of_experience, presence: true
    validates :education_requirement, presence: true
    validates :industry, presence: true
    validates :base_salary, presence: true
    validates :employment_type_id, presence: true
end
