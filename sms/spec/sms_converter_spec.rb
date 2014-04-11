require 'spec_helper'

describe SmsConverter do
  subject { described_class.parse(phrase) }

  context 'when I type a returns' do
    let(:phrase) { 'a' }
    it { expect(subject).to eq '2' }
  end

  context 'when I type b returns' do
    let(:phrase) { 'b' }
    it { expect(subject).to eq '22' }
  end

  context 'when I type a b returns' do
    let(:phrase) { 'a b' }
    it { expect(subject).to eq '2022' }
  end

  context 'when I type a d returns' do
    let(:phrase) { 'a d' }
    it { expect(subject).to eq '203' }
  end

  context 'when I type a a returns' do
    let(:phrase) { 'aa' }
    it { expect(subject).to eq '2_2' }
  end

  context 'when I type cwi dojo returns' do
    let(:phrase) { 'cwi dojo' }
    it { expect(subject).to eq '2229444036665666' }
  end
end
