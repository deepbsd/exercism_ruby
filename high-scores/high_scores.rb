class HighScores
    def initialize(scores)
        @scores = scores
        @latest_score = scores[-1]
        @personal_best_score = @scores.max
        @top_scores = @scores.sort.reverse
    end

    def scores
        @scores
    end

    def latest
        @latest_score
    end
    
    def personal_best
        @personal_best_score
    end
    
    def personal_top
        @top_scores[0,3]
    end
    
    def report
        if (@latest_score >= @personal_best_score) then 
            message = "That's your personal best!" 
        else message = "That's #{(@personal_best_score-@latest_score)} short of your personal best!" end
        "Your latest score was #{@latest_score}. #{message}"
    end
end

