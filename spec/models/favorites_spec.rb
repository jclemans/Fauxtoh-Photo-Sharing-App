require 'spec_helper'

describe Favorite do
  it { should validate_uniqueness_of(:user_id).scoped_to(:photo_id) }
  it { should belong_to :user }
  it { should belong_to :photo }
end
