require 'rails_helper'

RSpec.describe NAME, type: :model do
  it { should have_db_column "example" }
  it { should belong_to(:example) }
end