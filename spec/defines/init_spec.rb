require 'spec_helper'
describe 'aix_no', :type => :define do

  context 'compiles when invoked correctly' do
    let :title do
      "makeitgofast"
    end
    let :params do
      {
        :value => "666",
      }
    end
    it { should compile }
  end

end
