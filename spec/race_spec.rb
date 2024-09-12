require './spec/spec_helper'

RSpec.describe Race do
    before(:each) do
        @race = Race.new("Texas Governor")
    end

    it "can initialize and assign variables" do
        expect(@race).to be_an_instance_of(Race)
        expect(@race.office).to eq("Texas Governor")
    end

    it 'has a candidates array' do
        expect(@race.candidates).to eq([])
    end

    it 'can register candidates' do
        candidate1 = @race.register_candidate!({name: "Diana D", party: :democrat})
        expect(@race.candidates.length).to eq(1)
        candidate2 = @race.register_candidate!({name: "Roberto R", party: :republican})
        expect(@race.candidates.length).to eq(2)
    end
end