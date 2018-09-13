Extension { #name : #DmALeaf }

{ #category : #'*DemoAExtension' }
DmALeaf >> help [
	<MSEProperty: #help type: #String>
	^ self privateState attributeAt: #help ifAbsent: [ 'coucou' ]
]

{ #category : #'*DemoAExtension' }
DmALeaf >> help: anObject [
	self privateState attributeAt: #help put: anObject
]
