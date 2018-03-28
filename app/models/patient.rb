class Patient < ApplicationRecord

  before_create :calculateASA
  before_update :calculateASA


  def calculateASA
  	#initialise the risk score as 0
  	risk = 0
  	#Q1
  	if self.q1 == "Very good" 
  		risk = risk
  	end

  	if self.q1 == "No abnormalities" 
  		risk = risk -2
  	end

  	if self.q1 == "Not good" 
  		risk = risk +2
  	end

  	if self.q1 == "I am diagnosed with dementia" 
  		risk = risk + 2
  	end

  	if self.q1 == "Very sick" 
  		risk = risk +2
  	end

  	if self.q1 == "Bedbound at all times" 
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

  	if self.q5 == "Yes, longer than 12 months ago" 
  		risk = risk+2
  	end

  	if self.q5 == "Yes, longer than 6 months ago" 
  		risk = risk +3
  	end

  	if self.q5 == "Yes, longer than 3 months ago" 
  		risk = risk +4
  	end

  	if self.q5 == "Yes, in the last 3 months" 
  		risk = risk +6
  	end
  	#Q6 Arrest
  	if self.q6 == "No" 
  		risk = risk
  	end

  	if self.q6 == "Yes, longer than 12 months ago" 
  		risk = risk+1
  	end

  	if self.q6 == "Yes, longer than 6 months ago" 
  		risk = risk +3
  	end

  	if self.q6 == "Yes, longer than 3 months ago" 
  		risk = risk +4
  	end

  	if self.q6 == "Yes, in the last 3 months" 
  		risk = risk +6
  	end
  	#Q7 Cathlab
  	if self.q7 == "No" 
  		risk = risk
  	end

  	if self.q7 == "Yes, longer than 6 months ago" 
  		risk = risk+1
  	end

  	if self.q7 == "Yes, longer than 3 months ago" 
  		risk = risk +3
  	end

  	if self.q7 == "Yes, longer than 3 weeks ago" 
  		risk = risk +4
  	end

  	if self.q7 == "Yes, in the last 3 weeks" 
  		risk = risk +6
  	end
  	#Q8 Palps
  	if self.q8 == "No" 
  		risk = risk
  	end

  	if self.q8 == "Yes, and I do not take treatment for it" 
  		risk = risk+1
  	end

  	if self.q8 == "Yes, and I take treatment for it" 
  		risk = risk +2
  	end
    #Q9 Murmur
    if self.q9 == "No" 
      risk = risk
    end

    if self.q9 == "Yes" 
      risk = risk+2
    end

    if self.q9 == "Yes, and I've had a procedure to fix it" 
      risk = risk +2
    end
    #Q10 Htn
    if self.q10 == "No" 
      risk = risk
    end

    if self.q10 == "I don't know" 
      risk = risk
    end

    if self.q10 == "Yes/it's controlled on tablets" 
      risk = risk +2
    end
    #Q11 Cholesterol
    if self.q11 == "No" 
      risk = risk
    end

    if self.q11 == "Yes/it's controlled on tablets" 
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

    if self.q13 == "Yes, but I've completely recovered" 
      risk = risk
    end

    if self.q13 == "Yes, and I have not fully recovered" 
      risk = risk +2
    end

    if self.q13 == "Yes, in the last two months" 
      risk = risk +4
    end
    #Q14 Asthma
    if self.q14 == "No" 
      risk = risk
    end

    if self.q14 == "Yes, but I rarely need my inhailer" 
      risk = risk
    end

    if self.q14 == "Yes, I need my inhaler about once a week" 
      risk = risk +1
    end

    if self.q14 == "Yes, I need my inhaler every day" 
      risk = risk +3
    end

    if self.q14 == "Yes, I need my inhaler every day and it's been getting worse over the past 6 months" 
      risk = risk +4
    end
    #Q15 COPD
    if self.q15 == "No" 
      risk = risk
    end

    if self.q15 == "Yes, it affects me during heavy exercise" 
      risk = risk+1
    end

    if self.q15 == "Yes, it affects me when climbing the stairs, in the wind, during stress" 
      risk = risk +4
    end

    if self.q15 == "Yes, I'm breathless at rest or I need oxygen therapy at home" 
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

    if self.q17 == "Yes, I had a problem before but it has completely resolved (acute injury)" 
      risk = risk
    end

    if self.q17 == "Yes, my doctor has told me I must limit how much fluid I drink each day" 
      risk = risk+3
    end

    if self.q17 == "Yes, I am getting dialysis" 
      risk = risk+6
    end

    if self.q17 == "Yes, I have had a kidney transplant or kidney opperation" 
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

    if self.q18 == "Yes, I've had a procedure done on my liver" 
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
    
    if self.q20 == "I've quit in the last five years" 
      risk = risk+3
    end

    if self.q20 == "Yes" 
      risk = risk+4
    end
    #Q21 Alcohol
    if self.q21 == "No" 
      risk = risk
    end

    if self.q21 == "Yes, but less than 2 bottles of wine or 8 pints a week" 
      risk = risk
    end

    if self.q21 == "Yes, but more than 2 bottles of wine or 8 pints a week" 
      risk = risk
    end

    if self.q19 == "Yes, more than a bottle of wine or 4 pints most days" 
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
