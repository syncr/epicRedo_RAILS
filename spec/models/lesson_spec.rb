require 'rails_helper'

describe Lesson do

  it { should validate_presence_of :name }
  it { should validate_uniqueness_of :name }
  it { should validate_presence_of :description }
  it { should validate_uniqueness_of :description }
  it { should validate_presence_of :number }
  it { should validate_uniqueness_of :number }
  it { should validate_numericality_of :number }


end
