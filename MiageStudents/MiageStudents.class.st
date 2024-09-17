"
This class will calculate how many units are left for a student to pass.
"
Class {
	#name : 'MiageStudents',
	#superclass : 'Object',
	#classVars : [
		'passed_units'
	],
	#category : 'MiageStudents',
	#package : 'MiageStudents'
}

{ #category : 'as yet unclassified' }
MiageStudents >> passedunits: aninteger [
	passed_units := aninteger 
	
]

{ #category : 'as yet unclassified' }
MiageStudents >> remainunits [
	| remain_units |
	remain_units:= 160 - passed_units.
	^ remain_units 
]
