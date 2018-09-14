"
generator := DemoAMetamodelGenerator new.
generator generate.
DemoAMetamodelGenerator resetMetamodel.

model := DemoAExample generateDemo.
model.

DmAGlobalView new openViewForModel: model.

mooseModel := MooseModel importFromMSEStream: 'D:\lucene.mse' asFileReference readStream.
mooseModel
"
Class {
	#name : #DemoAMetamodelGenerator,
	#superclass : #FamixMetamodelGenerator,
	#instVars : [
		'component',
		'composite',
		'leaf'
	],
	#category : #DemoAGenerator
}

{ #category : #accessing }
DemoAMetamodelGenerator class >> packageName [

	^ #'DemoA'
]

{ #category : #accessing }
DemoAMetamodelGenerator class >> prefix [
	^ #DmA
]

{ #category : #definition }
DemoAMetamodelGenerator >> defineClasses [
	component := builder newClassNamed: #Component.
	composite := builder newClassNamed: #Composite.
	leaf := builder newClassNamed: #Leaf.
	
	leaf --|> component.
	composite --|> component.
	component --|> #TNamed.
	
]

{ #category : #definition }
DemoAMetamodelGenerator >> defineProperties [
	(composite property: #code type: #String)
		comment: 'A code name'.
]

{ #category : #definition }
DemoAMetamodelGenerator >> defineRelations [
	((composite property: #components) <>-* (component property: #composite)) withNavigation.
]

{ #category : #definition }
DemoAMetamodelGenerator >> newBuilder [
	^ FamixGenerator builderWithDefinitions
		doNotGenerateCurrent;
		generator: self;
		yourself
]
