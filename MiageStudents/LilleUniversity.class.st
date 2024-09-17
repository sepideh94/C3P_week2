"
This is an example to have a better understanding of dispatch.
"
Class {
	#name : 'LilleUniversity',
	#superclass : 'Object',
	#classVars : [
		'name'
	],
	#category : 'MiageStudents',
	#package : 'MiageStudents'
}

{ #category : 'private - requesting' }
LilleUniversity >> Get: astring [
	name := astring 
]

{ #category : 'as yet unclassified' }
LilleUniversity >> Name [ 
	^ 'you are a student in University of Lille but your department is not confirmed yet.'
]
