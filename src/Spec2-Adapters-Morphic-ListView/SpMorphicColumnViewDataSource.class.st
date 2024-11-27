Class {
	#name : 'SpMorphicColumnViewDataSource',
	#superclass : 'SpMorphicTableDataSource',
	#instVars : [
		'rowHeights'
	],
	#category : 'Spec2-Adapters-Morphic-ListView',
	#package : 'Spec2-Adapters-Morphic-ListView'
}

{ #category : 'accessing' }
SpMorphicColumnViewDataSource >> cellColumn: column row: rowIndex [
	| cell contentPresenter contentMorph |

	cell := FTCellMorph new.

	contentPresenter := column setupAction value: self model.	
	column bindAction 
		value: contentPresenter
		value: (self elementAt: rowIndex).
		
	contentMorph := contentPresenter build.

	"register for height"
	rowHeights at: rowIndex put: contentMorph height.

	self setHeaderColumnLazyProperties: column.
		
	^ cell addMorphBack: contentMorph
]

{ #category : 'initialization' }
SpMorphicColumnViewDataSource >> initialize [

	super initialize.
	rowHeights := Dictionary new
]

{ #category : 'accessing' }
SpMorphicColumnViewDataSource >> rowHeight: index [

	^ rowHeights 
		at: index 
		ifAbsent: [ super rowHeight: index ]
]
