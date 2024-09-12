class Candidate
    attr_reader :name,
                :party,
                :votes
    attr_writer :votes

    def initialize(candidate)
        @name = candidate[:name]
        @party = candidate[:party]
        @votes = 0
    end

    def vote_for!
        @votes += 1
    end
end
