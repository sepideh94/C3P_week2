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
MiageStudents >> passed_units: anInteger [
	passed_units := anInteger 
]

{ #category : 'as yet unclassified' }
MiageStudents >> remain_units [
	| remain_units |
	remain_units := 160 -passed_units .
	^ remain_units 
]

{ #category : 'as yet unclassified' }
MiageStudents >> returnself [
	^  self
]

{ #category : 'handling' }
MiageStudents >> returnsuper [ 
	^  super
]
