"
I'm a ""print it"" command. 
I will evalute the selection (or line) of the playground and print the result as string
"
Class {
	#name : 'SpCodePrintItCommand',
	#superclass : 'SpCodeSelectionCommand',
	#category : 'Spec2-Code-Commands-Base',
	#package : 'Spec2-Code-Commands',
	#tag : 'Base'
}

{ #category : 'accessing' }
SpCodePrintItCommand class >> defaultDescription [

	^ 'Evaluate selection and print the result.'
]

{ #category : 'default' }
SpCodePrintItCommand class >> defaultIconName [

	^ #smallPrintIt
]

{ #category : 'default' }
SpCodePrintItCommand class >> defaultName [

	^ 'Print it'
]

{ #category : 'default' }
SpCodePrintItCommand class >> defaultShortcutKey [

	^ $p actionModifier
]

{ #category : 'execution' }
SpCodePrintItCommand >> execute [
	"Treat the current text selection as an expression; evaluate it. Insert the 
	description of the result of evaluation after the selection and then make 
	this description the new text selection."

	self evaluateSelectionAndDo: [ :result | 
		self printObject: result ]
]

{ #category : 'private' }
SpCodePrintItCommand >> printObject: anObject [

	self context insertPrintPopoverAfterCurrentSelection: anObject
]

{ #category : 'private' }
SpCodePrintItCommand >> toPrintableString: printString [

	self flag: #TODO. "This is maybe not the best? 
	I think I need to add a popover, but that then means I need to 
	have a special way to handle this special 'insertion' (to transmit the correct insertion 
	to the presenter's adapter)."
	^ String streamContents: [ :stream |
		stream << ' ' << printString  ]
]
