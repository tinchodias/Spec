Class {
	#name : 'SpEasyTreeListViewPresenterTest',
	#superclass : 'SpEasyTreeColumnViewPresenterTest',
	#category : 'Spec2-ListView-Tests',
	#package : 'Spec2-ListView-Tests'
}

{ #category : 'accessing' }
SpEasyTreeListViewPresenterTest >> classToTest [
	
	^ SpEasyTreeListViewPresenter
]

{ #category : 'initialization' }
SpEasyTreeListViewPresenterTest >> initializeTestedInstance [

	presenter display: [ :aClass | aClass asString ]
]
