require 'spec_helper'

describe Thing do

  let(:short_name) { 'NS' }
  let(:shortest_name) { 'NST' }
  let(:long_name) { 'N' * 250 }
  let(:longest_name) { 'N' * 249 }

  let(:valid_name) { 'Name of Thing' }
  let(:valid_description) { 'Description of Thing' }
  let(:shortest_description) { 'D' }
  let(:long_description) { 'N' * 501 }

  let(:valid_thing) {  FactoryGirl.build(:thing)  }

  it 'should be valid' do
    expect(valid_thing).to be_valid
  end

  it 'should be invalid with short_name' do
    expect(FactoryGirl.build(:thing, name: short_name)).to_not be_valid
  end

  it 'should be invalid with long_name' do
    expect(FactoryGirl.build(:thing, name: long_name)).to_not be_valid
  end

  it 'should be valid with longest_name' do
    expect(FactoryGirl.build(:thing, name: longest_name)).to be_valid
  end

  it 'should be valid with shortest_name' do
    expect(FactoryGirl.build(:thing, name: shortest_name)).to be_valid
  end

  it 'should be invalid without name' do
    expect(FactoryGirl.build(:thing, name: nil)).to_not be_valid
  end

  # it 'should be valid without description' do
  #   expect(FactoryGirl.build(:thing, name: valid_name)).to be_valid
  # end

  
  it 'should be valid with shortest_description' do
    expect(FactoryGirl.build(:thing, description: shortest_description)).to be_valid
  end

  it 'should be invalid with long description' do
    expect(FactoryGirl.build(:thing, description: long_description)).to_not be_valid
  end

  it 'should be invalid without description' do
    expect(FactoryGirl.build(:thing, description: nil)).to_not be_valid
  end

end
