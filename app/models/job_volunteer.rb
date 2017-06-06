class JobVolunteer < ApplicationRecord
  belongs_to :volunteer
  belongs_to :city_job
end
