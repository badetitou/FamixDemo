Class {
	#name : #DmAGlobalView,
	#superclass : #Object,
	#category : #DemoAQuery
}

{ #category : #'as yet unclassified' }
DmAGlobalView >> legend: b [
	| lb |
	lb := RTLegendBuilder new.
	lb view: b view.
	lb left.
	lb textSize: 5.
	lb addColor: DmAComposite color text: 'Composite'.
	lb addColor: DmALeaf color text: 'Leaf'.
	lb build
]

{ #category : #'as yet unclassified' }
DmAGlobalView >> openViewForModel: aModel [
	| b |
	b := RTMondrian new.
	b shape circle color: [ :cl | cl color ].
	b nodes: aModel allComposite , aModel allLeaf.
	b edges connectFrom: #composite.
	b layout tree.
	self legend: b.
	^ b
]
