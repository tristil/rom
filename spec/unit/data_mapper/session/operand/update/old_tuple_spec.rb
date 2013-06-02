require 'spec_helper'

describe Rom::Session::Operand::Update, '#old_tuple' do
  subject { object.old_tuple }

  let(:object) { described_class.new(state, old_tuple) }

  let(:identity)      { mock('Identity')      }
  let(:domain_object) { mock('Domain Object') }
  let(:tuple)         { mock('Tuple')         }
  let(:old_tuple)     { mock('Old Tuple')     }

  let(:state) do
    mock('State',
      :tuple    => tuple,
      :object   => domain_object,
      :identity => identity
    )
  end

  it { should be(old_tuple) }

  it_should_behave_like 'an idempotent method'
end
