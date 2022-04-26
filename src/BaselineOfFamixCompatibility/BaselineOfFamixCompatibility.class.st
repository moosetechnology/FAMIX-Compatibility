Class {
	#name : #BaselineOfFamixCompatibility,
	#superclass : #BaselineOf,
	#category : #BaselineOfFamixCompatibility
}

{ #category : #baselines }
BaselineOfFamixCompatibility >> baseline: spec [

	<baseline>
	spec for: #common do: [ 
		self famix: spec.
		self packages: spec.
		self groups: spec ]
]

{ #category : #'as yet unclassified' }
BaselineOfFamixCompatibility >> famix: spec [

	spec
		baseline: 'Famix'
		with: [ 
		spec repository: 'github://moosetechnology/Famix:development/src' ]
]

{ #category : #baseline }
BaselineOfFamixCompatibility >> groups: spec [

	^ spec
		  group: 'Entities' with: #( 'Famix-Compatibility-Entities' );
		  group: 'model' with: #( 'Famix-Compatibility-Generator' )
]

{ #category : #accessing }
BaselineOfFamixCompatibility >> packages: spec [

	spec
		package: 'Famix-Compatibility-Generator'
		with: [ spec requires: #( 'Famix' ) ];
		package: 'Famix-Compatibility-Entities'
		with: [ spec requires: #( 'Famix' ) ];
		package: 'Famix-Compatibility-Tests-C'
		with: [ spec requires: #( 'Famix-Compatibility-Entities' ) ];
		package: 'Famix-Compatibility-Tests-Core'
		with: [ spec requires: #( 'Famix-Compatibility-Entities' ) ]
]
