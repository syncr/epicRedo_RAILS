require 'rails_helper'
require 'pry'

describe Section do

  it { should validate_presence_of :name }
  it { should validate_uniqueness_of :name }
  it { should have_many(:lessons) }

end