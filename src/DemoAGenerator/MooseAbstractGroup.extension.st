Extension { #name : #MooseAbstractGroup }

{ #category : #'*DemoAGenerator' }
MooseAbstractGroup >> allComponent [
	
	<navigation: 'All component'>
	^self allWithType: DmAComponent  
]

{ #category : #'*DemoAGenerator' }
MooseAbstractGroup >> allComposite [
	
	<navigation: 'All composite'>
	^self allWithType: DmAComposite  
]

{ #category : #'*DemoAGenerator' }
MooseAbstractGroup >> allLeaf [
	
	<navigation: 'All leaf'>
	^self allWithType: DmALeaf   
]
