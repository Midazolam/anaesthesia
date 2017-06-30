class Patient < ApplicationRecord

  before_create :calculateASA
  before_update :calculateASA


  def calculateASA
  	risk = 0

  	if self.q1 == "No abnormalities" 
  		risk = risk
  	end

  	if self.q1 == "Better than expected" 
  		risk = risk
  	end

  	if self.q1 == "Worse  than expected" 
  		risk = risk + 1
  	end

  	if self.q1 == "Dementia" 
  		risk = risk + 2
  	end

  	if self.q1 == "Sick" 
  		risk = risk +3
  	end

  	if self.q1 == "Moribund" 
  		risk = risk +4
  	end

  	if risk >= 2
  		self.asa = 2
  	end

  	if risk >= 4
  		self.asa = 3
  	end

  end
end
