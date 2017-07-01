class Patient < ApplicationRecord

  before_create :calculateASA
  before_update :calculateASA


  def calculateASA
  	#initialise the risk score as 0
  	risk = 0
  	#Q1
  	if self.q1 == "No abnormalities" 
  		risk = risk
  	end

  	if self.q1 == "Better than expected" 
  		risk = risk -2
  	end

  	if self.q1 == "Worse  than expected" 
  		risk = risk +2
  	end

  	if self.q1 == "Dementia" 
  		risk = risk + 2
  	end

  	if self.q1 == "Sick" 
  		risk = risk +2
  	end

  	if self.q1 == "Moribund" 
  		risk = risk +24
  	end
  	#Q2
  	if self.q2 == "I can do everything I want" 
  		risk = risk-2
  	end

  	if self.q2 == "Slightly impaired, but I feel no impairments in daily activities" 
  		risk = risk
  	end

  	if self.q2 == "Impaired, I can only take care of domestic chores" 
  		risk = risk +2
  	end

  	if self.q2 == "I am completely dependent on help from others" 
  		risk = risk +4
  	end
  	#Q3 CCF
  	if self.q3 == "No" 
  		risk = risk
  	end

  	if self.q3 == "Yes, only during heavy labour" 
  		risk = risk+1
  	end

  	if self.q3 == "Yes, during climbing the stairs, in the wind, stress" 
  		risk = risk +2
  	end

  	if self.q3 == "Yes, daily, not at rest" 
  		risk = risk +5
  	end

  	if self.q3 == "Yes, at rest and increased during any activity" 
  		risk = risk +8
  	end
  	#Q4 Angina
  	if self.q4 == "No" 
  		risk = risk
  	end

  	if self.q4 == "Yes, only during heavy labour" 
  		risk = risk+1
  	end

  	if self.q4 == "Yes, during climbing the stairs, in the wind, stress" 
  		risk = risk +2
  	end

  	if self.q4 == "Yes, daily, not at rest" 
  		risk = risk +5
  	end

  	if self.q4 == "Yes, at rest and increased during any activity" 
  		risk = risk +8
  	end
  	#Q5 Infarct
  	if self.q5 == "No" 
  		risk = risk
  	end

  	if self.q5 == "Yes, > 12 months ago" 
  		risk = risk+2
  	end

  	if self.q5 == "Yes, >6 and < 12 months ago" 
  		risk = risk +3
  	end

  	if self.q5 == "Yes, >3 and < 6 months ago" 
  		risk = risk +4
  	end

  	if self.q5 == "Yes, < 3 months ago" 
  		risk = risk +6
  	end
  	#Q6 Arrest
  	if self.q6 == "No" 
  		risk = risk
  	end

  	if self.q6 == "Yes, > 12 months ago" 
  		risk = risk+1
  	end

  	if self.q6 == "Yes, >6 and < 12 months ago" 
  		risk = risk +3
  	end

  	if self.q6 == "Yes, >3 and < 6 months ago" 
  		risk = risk +4
  	end

  	if self.q6 == "Yes, < 3 months ago" 
  		risk = risk +6
  	end
  	#Q7 Cathlab
  	if self.q7 == "No" 
  		risk = risk
  	end

  	if self.q7 == "Yes, > 6 months ago" 
  		risk = risk+1
  	end

  	if self.q7 == "Yes, >3 and < 6 months ago" 
  		risk = risk +3
  	end

  	if self.q7 == "Yes, >3 and < 6 weeks ago" 
  		risk = risk +4
  	end

  	if self.q7 == "Yes, < 6 weeks ago" 
  		risk = risk +6
  	end
  	#Q8 Palps
  	if self.q8 == "No" 
  		risk = risk
  	end

  	if self.q8 == "Yes, I have no treatment" 
  		risk = risk+1
  	end

  	if self.q8 == "Yes, I am treated with medication" 
  		risk = risk +2
  	end
    #Q9 Murmur
    if self.q9 == "No" 
      risk = risk
    end

    if self.q9 == "Yes, but no operation" 
      risk = risk+2
    end

    if self.q9 == "Yes, I have had an operation" 
      risk = risk +2
    end
    #Q10 Htn
    if self.q10 == "No" 
      risk = risk
    end

    if self.q10 == "I don't know" 
      risk = risk
    end

    if self.q10 == "Yes" 
      risk = risk +2
    end
    #Q11 Cholesterol
    if self.q11 == "No" 
      risk = risk
    end

    if self.q11 == "Yes" 
      risk = risk+2
    end
    #Q12 Diabetes
    if self.q12 == "No" 
      risk = risk
    end

    if self.q12 == "Yes, treatment with diet" 
      risk = risk+1
    end

    if self.q12 == "Yes, treatment with oral medication" 
      risk = risk +3
    end

    if self.q12 == "Yes, treatment with insulin" 
      risk = risk +4
    end
    #Q13 Stroke
    if self.q13 == "No" 
      risk = risk
    end

    if self.q13 == "Yes, but complete recovery" 
      risk = risk
    end

    if self.q13 == "Yes, with physical impairment/ disability" 
      risk = risk +2
    end

    if self.q13 == "Yes, < 2 months ago" 
      risk = risk +4
    end
    #Q14 Asthma
    if self.q14 == "No" 
      risk = risk
    end

    if self.q14 == "Yes, sometimes" 
      risk = risk
    end

    if self.q14 == "Yes, often" 
      risk = risk +1
    end

    if self.q14 == "Yes, daily" 
      risk = risk +3
    end

    if self.q14 == "Yes, daily and increased over the last six months" 
      risk = risk +4
    end
    #Q15 COPD
    if self.q15 == "No" 
      risk = risk
    end

    if self.q15 == "Yes, only during heavy labour" 
      risk = risk+1
    end

    if self.q15 == "Yes, always during climbing the stairs, in the wind, stress" 
      risk = risk +4
    end

    if self.q15 == "Yes, always even at rest, I need oxygen therapy" 
      risk = risk+8
    end
    #Q16 OSA
    if self.q16 == "No" 
      risk = risk
    end

    if self.q16 == "Yes" 
      risk = risk+4
    end
    #Q17 Kidney
    if self.q17 == "No" 
      risk = risk
    end

    if self.q17 == "Yes, but with complete recovery" 
      risk = risk
    end

    if self.q17 == "Yes, treatment with fluid restriction only" 
      risk = risk+3
    end

    if self.q17 == "Yes, treatment with dialysis" 
      risk = risk+6
    end

    if self.q17 == "Yes, other serious kidney condition (e.g. kidney resection)" 
      risk = risk+2
    end
    #Q18 Liver
    if self.q18 == "No" 
      risk = risk
    end

    if self.q18 == "Yes, but with complete recovery" 
      risk = risk
    end

    if self.q18 == "Yes, liver cirrhosis has been diagnosed" 
      risk = risk+4
    end

    if self.q18 == "Yes, other serious liver condition (e.g. partial resection)" 
      risk = risk+1
    end
    #Q19 Weight Loss
    if self.q19 == "No" 
      risk = risk
    end

    if self.q19 == "Yes" 
      risk = risk+1
    end

    if self.q19 == "Yes, more than 25% of previous bodyweight" 
      risk = risk+2
    end
    #Q20 Smoker
    if self.q20 == "No" 
      risk = risk
    end

    if self.q20 == "Yes" 
      risk = risk+4
    end
    #Q21 Alcohol
    if self.q21 == "No" 
      risk = risk
    end

    if self.q21 == "Yes, < 3 Units/day" 
      risk = risk
    end

    if self.q21 == "Yes, > 3 and < 6 Units/day" 
      risk = risk
    end

    if self.q19 == "Yes, > 6 Units/day" 
      risk = risk+4
    end
    #Q22 Drugs
    if self.q22 == "No" 
      risk = risk
    end

    if self.q22 == "No, not anymore" 
      risk = risk
    end

    if self.q22 == "Yes, every once in a while" 
      risk = risk
    end

    if self.q22 == "Yes, more the once a week" 
      risk = risk+2
    end


    #Q22 Drugs - convert score to cASA grade
    if risk <= 3
      self.asa = 1
    end

  	if risk >= 3
  		self.asa = 2
  	end

  	if risk >= 10
  		self.asa = 3
  	end

    if risk >= 20
      self.asa = 4
    end

  end
end
