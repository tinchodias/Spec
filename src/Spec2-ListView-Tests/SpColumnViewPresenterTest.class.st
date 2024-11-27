Class {
	#name : 'SpColumnViewPresenterTest',
	#superclass : 'SpAbstractListPresenterTest',
	#category : 'Spec2-ListView-Tests',
	#package : 'Spec2-ListView-Tests'
}

{ #category : 'testing' }
SpColumnViewPresenterTest class >> shouldInheritSelectors [

	^ true
]

{ #category : 'accessing' }
SpColumnViewPresenterTest >> classToTest [
	
	^ SpColumnViewPresenter
]

{ #category : 'initialization' }
SpColumnViewPresenterTest >> initializeTestedInstance [

	presenter 
		addColumnTitle: 'Test' 
		setup: [ :aPresenter | aPresenter newLabel ]
		bind: [ :aPresenter :anObject | aPresenter label: anObject asString ]
]
