Class {
	#name : 'SpTextInputFieldAdapterTest',
	#superclass : 'SpAbstractTextAdapterTest',
	#category : 'Spec2-Backend-Tests-Base',
	#package : 'Spec2-Backend-Tests',
	#tag : 'Base'
}

{ #category : 'accessing' }
SpTextInputFieldAdapterTest >> classToTest [
	^ SpTextInputFieldPresenter
]

{ #category : 'tests' }
SpTextInputFieldAdapterTest >> testChangeWidgetTextUpdatesPresenter [

	self adapter text: 'some text'.
	
	self assert: presenter text equals: 'some text'
]

{ #category : 'tests' }
SpTextInputFieldAdapterTest >> testEnablePasswordKeepsText [

	presenter
		text: '123';
		bePassword.

	self assert: self adapter isPassword.
	self assert: presenter text equals: '123'.
	
	presenter typeByChar: '45'.
	self assert: presenter text equals: '12345'.
]

{ #category : 'tests' }
SpTextInputFieldAdapterTest >> testMaxLengthIsSetInWidget [

	presenter maxLength: 10.
	
	presenter 
		text: '123456789';
		type: '0';
		type: 'a'.

	self assert: presenter text equals: '1234567890'
]

{ #category : 'tests' }
SpTextInputFieldAdapterTest >> testNotPasswordIsSetInWidget [

	presenter bePassword: false.
	self deny: self adapter isPassword
]

{ #category : 'tests' }
SpTextInputFieldAdapterTest >> testPasswordIsSetInWidget [

	presenter bePassword.
	self assert: self adapter isPassword
]

{ #category : 'tests' }
SpTextInputFieldAdapterTest >> testPresenterTextIsSetInWidget [

	presenter text: 'something'.
	self assert: self widget text equals: 'something'
]
