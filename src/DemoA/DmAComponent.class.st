Class {
	#name : #DmAComponent,
	#superclass : #MooseEntity,
	#traits : 'FamixTNamed',
	#classTraits : 'FamixTNamed classTrait',
	#instVars : [
		'#composite => FMOne type: #DmAComposite opposite: #components'
	],
	#category : #'DemoA-Entities'
}

{ #category : #meta }
DmAComponent class >> annotation [

	<MSEClass: #Component super: #MooseEntity>
	<package: #DemoA>
	<generated>
	^self
]

{ #category : #generator }
DmAComponent class >> generatedSlotNames [
	<generated>
	'DmAComponent class>>#generatedSlotNames'.
	^ #(composite)
]

{ #category : #generator }
DmAComponent class >> generatedTraitNames [
	<generated>
	^ #(FamixTNamed)
]

{ #category : #meta }
DmAComponent class >> metamodel [

	<generated>
	^ (self class environment at: #DemoAMetamodelGenerator) metamodel
]

{ #category : #meta }
DmAComponent class >> requirements [

	<generated>
	^ { DmAComponent }
]

{ #category : #accessing }
DmAComponent >> composite [

	<generated>
	<container>

	^ composite
]

{ #category : #accessing }
DmAComponent >> composite: anObject [

	<generated>
	composite := anObject

]

{ #category : #navigation }
DmAComponent >> compositeGroup [

	<generated>
	<navigation: 'Composite'>
	^ MooseGroup
			with: (self composite)
]

{ #category : #testing }
DmAComponent >> isAccess [

	<generated>
	^ false
]

{ #category : #testing }
DmAComponent >> isAssociation [

	<generated>
	^ false
]

{ #category : #testing }
DmAComponent >> isAttribute [

	<generated>
	^ false
]

{ #category : #testing }
DmAComponent >> isClass [

	<generated>
	^ false
]

{ #category : #testing }
DmAComponent >> isFunction [

	<generated>
	^ false
]

{ #category : #testing }
DmAComponent >> isInheritance [

	<generated>
	^ false
]

{ #category : #testing }
DmAComponent >> isInvocation [

	<generated>
	^ false
]

{ #category : #testing }
DmAComponent >> isMethod [

	<generated>
	^ false
]

{ #category : #testing }
DmAComponent >> isNamespace [

	<generated>
	^ false
]

{ #category : #testing }
DmAComponent >> isPackage [

	<generated>
	^ false
]

{ #category : #testing }
DmAComponent >> isReference [

	<generated>
	^ false
]

{ #category : #testing }
DmAComponent >> isType [

	<generated>
	^ false
]
