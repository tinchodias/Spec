Class {
	#name : #SpGridLayout,
	#superclass : #SpExecutableLayout,
	#instVars : [
		'borderWidth',
		'columnSpacing',
		'rowSpacing',
		'columnHomogeneous',
		'rowHomogeneous'
	],
	#category : #'Spec2-Layout-Grid'
}

{ #category : #initialization }
SpGridLayout class >> defaultBorderWidth [

	^ 20
]

{ #category : #initialization }
SpGridLayout class >> defaultColumnSpacing [

	^ 10
]

{ #category : #initialization }
SpGridLayout class >> defaultRowSpacing [

	^ 5
]

{ #category : #private }
SpGridLayout >> adapterName [

	^ #GridAdapter
]

{ #category : #adding }
SpGridLayout >> add: aName at: aPoint [

	^ self 
		add: aName 
		at: aPoint
		span: 1@1
]

{ #category : #adding }
SpGridLayout >> add: aName at: aPoint span: spanPoint [

	^ self 
		add: aName 
		withConstraints: [ :constraints |
			constraints 
				position: aPoint;
				span: spanPoint ]
]

{ #category : #accessing }
SpGridLayout >> beColumnHomogeneous [

	self columnHomogeneous: true
]

{ #category : #accessing }
SpGridLayout >> beColumnNotHomogeneous [

	self columnHomogeneous: false
]

{ #category : #accessing }
SpGridLayout >> beRowHomogeneous [

	self rowHomogeneous: false
]

{ #category : #accessing }
SpGridLayout >> beRowNotHomogeneous [

	self rowHomogeneous: false
]

{ #category : #accessing }
SpGridLayout >> borderWidth [

	^ borderWidth ifNil: [ self class defaultBorderWidth ]
]

{ #category : #accessing }
SpGridLayout >> borderWidth: anObject [
	borderWidth := anObject
]

{ #category : #accessing }
SpGridLayout >> children [

	^ children
]

{ #category : #private }
SpGridLayout >> columnHomogeneous: anObject [
	columnHomogeneous := anObject
]

{ #category : #accessing }
SpGridLayout >> columnSpacing [

	^ columnSpacing ifNil: [ self class defaultColumnSpacing ]
]

{ #category : #accessing }
SpGridLayout >> columnSpacing: anObject [
	columnSpacing := anObject
]

{ #category : #private }
SpGridLayout >> constraintsClass [

	^ SpGridConstraints
]

{ #category : #initialization }
SpGridLayout >> initialize [ 

	super initialize.
	self beColumnHomogeneous.
	self beRowHomogeneous.
]

{ #category : #testing }
SpGridLayout >> isColumnHomogeneous [
	^ columnHomogeneous
]

{ #category : #testing }
SpGridLayout >> isRowHomogeneous [
	^ rowHomogeneous
]

{ #category : #private }
SpGridLayout >> rowHomogeneous: anObject [
	rowHomogeneous := anObject
]

{ #category : #accessing }
SpGridLayout >> rowSpacing [

	^ rowSpacing ifNil: [ self class defaultRowSpacing ]
]

{ #category : #accessing }
SpGridLayout >> rowSpacing: anObject [
	rowSpacing := anObject
]