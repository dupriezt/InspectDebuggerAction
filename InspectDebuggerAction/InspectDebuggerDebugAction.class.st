Class {
	#name : #InspectDebuggerDebugAction,
	#superclass : #DebugAction,
	#category : #InspectDebuggerAction
}

{ #category : #registration }
InspectDebuggerDebugAction class >> actionType [
	<contextMenuDebuggingAction>
]

{ #category : #registration }
InspectDebuggerDebugAction class >> gtActionFor: aDebugger [
	<gtStackDebuggingAction>
	
	^ (self forDebugger: aDebugger)
			order: 35
]

{ #category : #accessing }
InspectDebuggerDebugAction >> defaultLabel [
	^ 'Inspect debugger'
]

{ #category : #accessing }
InspectDebuggerDebugAction >> defaultOrder [
	^ 110
]

{ #category : #accessing }
InspectDebuggerDebugAction >> executeAction [ 
	self debugger inspect.
]

{ #category : #accessing }
InspectDebuggerDebugAction >> help [
	^ 'Opens an inspector on the underlying debugger object'
]

{ #category : #accessing }
InspectDebuggerDebugAction >> id [
	^ #inspectDebugger
]
