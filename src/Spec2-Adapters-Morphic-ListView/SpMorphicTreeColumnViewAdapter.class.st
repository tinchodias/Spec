Class {
	#name : 'SpMorphicTreeColumnViewAdapter',
	#superclass : 'SpMorphicTreeTableAdapter',
	#category : 'Spec2-Adapters-Morphic-ListView',
	#package : 'Spec2-Adapters-Morphic-ListView'
}

{ #category : 'private - factory' }
SpMorphicTreeColumnViewAdapter >> newColumnFrom: aTableColumn [

	^ (SpMorphicColumnViewColumn on: aTableColumn)
		width: aTableColumn width;
		yourself
]

{ #category : 'private - factory' }
SpMorphicTreeColumnViewAdapter >> newDataSource [ 

	^ SpMorphicTreeColumnViewDataSource new
		model: self model; 
		rootItem: (self rootForItems: self model roots);
		childrenBlock: [ :data :item | self model childrenFor: data ];
		yourself
]
