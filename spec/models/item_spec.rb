require 'rails_helper'

describe Item do
  it { should validate_presence_of :name }
  it { should validate_presence_of :user_attack_increase }
  it { should validate_presence_of :one_time_attack }
end
