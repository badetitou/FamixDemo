Class {
	#name : #DmAComposite,
	#superclass : #DmAComponent,
	#instVars : [
		'#code',
		'#components => FMMany type: #DmAComponent opposite: #composite'
	],
	#category : #'DemoA-Entities'
}

{ #category : #meta }
DmAComposite class >> annotation [

	<MSEClass: #Composite super: #DmAComponent>
	<package: #DemoA>
	<generated>
	^self
]

{ #category : #generator }
DmAComposite class >> generatedSlotNames [
	<generated>
	'DmAComposite class>>#generatedSlotNames'.
	^ #(code components)
]

{ #category : #generator }
DmAComposite class >> generatedTraitNames [
	<generated>
	^ #()
]

{ #category : #meta }
DmAComposite class >> requirements [

	<generated>
	^ {  }
]

{ #category : #accessing }
DmAComposite >> code [

	<MSEProperty: #code type: #String>
	<generated>
	<MSEComment: 'A code name'>
	^ code
]

{ #category : #accessing }
DmAComposite >> code: anObject [

	<generated>
	code := anObject

]

{ #category : #accessing }
DmAComposite >> components [

	<generated>
	^ components
]

{ #category : #accessing }
DmAComposite >> components: anObject [

	<generated>
	components value: anObject

]

{ #category : #navigation }
DmAComposite >> componentsGroup [

	<generated>
	<navigation: 'Components'>
	^ MooseGroup
			withAll: (self components asSet)
]
