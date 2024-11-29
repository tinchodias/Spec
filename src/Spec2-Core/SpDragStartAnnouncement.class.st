"
Announces when a drag starts passing to the listener a transfer presenter (that can be modified to user intents).
"
Class {
	#name : 'SpDragStartAnnouncement',
	#superclass : 'Announcement',
	#instVars : [
		'transfer'
	],
	#category : 'Spec2-Core-Widgets',
	#package : 'Spec2-Core',
	#tag : 'Widgets'
}

{ #category : 'instance creation' }
SpDragStartAnnouncement class >> newTransfer: aTransferPresenter [

	^ self new 
		transfer: aTransferPresenter;
		yourself
]

{ #category : 'accessing' }
SpDragStartAnnouncement >> transfer [

	^ transfer
]

{ #category : 'accessing' }
SpDragStartAnnouncement >> transfer: aTransferPresenter [

	transfer := aTransferPresenter
]
