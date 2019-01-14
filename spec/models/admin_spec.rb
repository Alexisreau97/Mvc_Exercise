require 'rails_helper'

RSpec.describe Admin, type: :model do
	describe 'Database' do
    	it { is_expected.to have_db_column(:email).of_type(:string).with_options(default: "", null: false) }
    	it { is_expected.to have_db_column(:encrypted_password).of_type(:string).with_options(default: "", null: false) }
	end
end
