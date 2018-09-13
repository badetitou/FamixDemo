Extension { #name : #DmAComponent }

{ #category : #'*DemoAExtension' }
DmAComponent >> depth [
	<computed>
	<MSEProperty: #depth type: #Number>
	^ self composite ifNil: [ ^ 1 ] ifNotNil: [ ^ 1 + self composite depth ]
]
