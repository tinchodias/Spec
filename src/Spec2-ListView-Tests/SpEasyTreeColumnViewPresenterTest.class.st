Class {
	#name : 'SpEasyTreeColumnViewPresenterTest',
	#superclass : 'SpAbstractTreePresenterTest',
	#category : 'Spec2-ListView-Tests',
	#package : 'Spec2-ListView-Tests'
}

{ #category : 'testing' }
SpEasyTreeColumnViewPresenterTest class >> shouldInheritSelectors [

	^ true
]

{ #category : 'accessing' }
SpEasyTreeColumnViewPresenterTest >> classToTest [

	^ SpEasyTreeColumnViewPresenter
]

{ #category : 'initialization' }
SpEasyTreeColumnViewPresenterTest >> initializeTestedInstance [

	presenter addColumn: (SpStringTableColumn title: 'Test' evaluated: #asString)
]

{ #category : 'tests' }
SpEasyTreeColumnViewPresenterTest >> testDisableActivationDuring [ 
	
	self skip
]

{ #category : 'tests' }
SpEasyTreeColumnViewPresenterTest >> testPathIndexOf [

	self skip
]

{ #category : 'tests' }
SpEasyTreeColumnViewPresenterTest >> testPathItemOf [

	self skip
]
