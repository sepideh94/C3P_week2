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
	s1 passed_units: 40.
	
self assert: s1 remain_units equals: 160-40.
]
