class HighScores
    attr_reader :scores

    def initialize(scores)
        @scores = scores
        #@latest_score = scores[-1]
        #@personal_best_score = @scores.max
        #@top_scores = @scores.sort.reverse
    end


    def latest
        scores.last
    end
    
    def personal_best
        scores.max
    end
    
    def personal_top
        scores.max(3)
    end
    
    def report
      if (scores.last >= scores.max) then 
         message = "That's your personal best!" 
      else message = "That's #{(scores.max-scores.last)} short of your personal best!" end
         "Your latest score was #{scores.last}. #{message}"
    end
end

