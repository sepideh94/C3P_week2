"
test if the miagestudent calculate right or not.
"
Class {
	#name : 'Unit_test',
	#superclass : 'TestCase',
	#category : 'MiageStudents',
	#package : 'MiageStudents'
}

{ #category : 'tests' }
Unit_test >> testRemainUnits [
	| s1 |
	s1:= MiageStudents new.
	s1 passedunits: 40.
	
self assert: s1 remainunits equals: 160 - 40. 
]
