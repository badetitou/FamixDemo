Class {
	#name : #DmALeaf,
	#superclass : #DmAComponent,
	#category : #'DemoA-Entities'
}

{ #category : #meta }
DmALeaf class >> annotation [

	<MSEClass: #Leaf super: #DmAComponent>
	<package: #DemoA>
	<generated>
	^self
]

{ #category : #generator }
DmALeaf class >> generatedSlotNames [
	<generated>
	'DmALeaf class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
DmALeaf class >> generatedTraitNames [
	<generated>
	^ #()
]

{ #category : #meta }
DmALeaf class >> requirements [

	<generated>
	^ {  }
]
