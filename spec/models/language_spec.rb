require 'rails_helper'

RSpec.describe Language, type: :model do
  it "must be at least two ... English and Serbian"  do
    expect(Language.all.size).to be >1
  end 
end
