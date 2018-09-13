Class {
	#name : #DemoAExample,
	#superclass : #Object,
	#category : #DemoAGenerator
}

{ #category : #'as yet unclassified' }
DemoAExample class >> generateDemo [
	| model c1 c11 c12 f11 c121 c122 f1221 |
	model := MooseModel new.
	model name: 'Demo'.
	c1 := DmAComposite new name: 'c1'; code: 'Alpha'.
	c11 := DmAComposite new name: 'c11'; code: 'Beta'.
	c12 := DmAComposite new name: 'c12'; code: 'Gamma'.
	c121 := DmAComposite new name: 'c121'; code: 'Delta'.
	c122 := DmAComposite new name: 'c122'; code: 'Epsilon'.
	f11 := DmALeaf new name: 'f11'; help: 'Coucou'.
	f1221 := DmALeaf new name: 'f1221'.
	c1 components addAll: {c11.c12.f11}.
	c12 components addAll: { c121. c122 }.
	c122 components addAll: { f1221 }.
	model addAll: { 
	c1. c11. c12. c121. c122. f11. f1221 }.
	^ model
]
