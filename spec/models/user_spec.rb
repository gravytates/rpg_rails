require 'rails_helper'

describe User do
  it { should validate_presence_of :name }
  it { should validate_presence_of :role }
  it { should validate_presence_of :admin }
  it { should validate_presence_of :attack_level }
  it { should validate_presence_of :avatar }
  it { should validate_presence_of :email}
  it { should validate_presence_of :password }
end
