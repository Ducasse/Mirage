tests-actions
testOpen
	| blockExecuted1 blockExecuted2 |
	blockExecuted1 := blockExecuted2 := false.	
	model announcer when: WPOpenRequest do: [ blockExecuted1 := true ].
	model announcer when: WPThumbnailSelected do: [ blockExecuted2 := true ].
	model open.
	self
		assert: blockExecuted1;
		assert: blockExecuted2 