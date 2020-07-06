SELECT vid,capacity
From venue
Where ((area='B' OR area='C') AND (capacity > 100))
Order By capacity DESC
;