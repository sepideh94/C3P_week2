Class {
	#name : 'EarthMap',
	#superclass : 'Object',
	#instVars : [
		'countries'
	],
	#category : 'EarthTutorial',
	#package : 'EarthTutorial'
}

{ #category : 'as yet unclassified' }
EarthMap >> importCountriesFrom: aFilePath [
   
   | fileContents |
   fileContents := aFilePath asFileReference readStream contents.
   
   self parseSVGFile: fileContents.
]

{ #category : 'as yet unclassified' }
EarthMap >> importCountryFromXMLNode: aXMLElement [
countries add: (EarthMapCountry new fromXML: aXMLElement)
]

{ #category : 'initialization' }
EarthMap >> initialize [
super initialize.
countries := OrderedCollection new
]

{ #category : 'as yet unclassified' }
EarthMap >> openPopulatedCanvas [
self populatedCanvas open
]

{ #category : 'parsing' }
EarthMap >> parseSVGFile: svgContents [
   
   Transcript show: 'SVG Contents: ', svgContents; cr.

]

{ #category : 'as yet unclassified' }
EarthMap >> populatedCanvas [
^ RSCanvas new
addAll: (countries collect: [ :country | country asRSShape ]);
@ RSCanvasController;
yourself
]

{ #category : 'as yet unclassified' }
EarthMap >> xmlTreeFromFile: aFileName [
^ aFileName asFileReference readStreamDo: [ :stream |
(XMLDOMParser parse: stream) document ]
]
