class Race
    attr_reader :office
                :candidates
    attr_writer :candidates

    def initialize(race)
        @office = race
        @candidates = []
    end

    def candidates
        @candidates
    end

    def register_candidate!(new_candidate)
        @candidates << Candidate.new(new_candidate)
    end
end
