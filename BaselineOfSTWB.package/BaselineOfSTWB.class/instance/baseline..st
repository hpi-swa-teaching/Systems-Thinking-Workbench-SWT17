baseline
baseline: spec
	<baseline>
	spec
		for: #'common'
		do: [
			spec
				package: 'SystemsThinkingWorkbench-Core';
				package: 'SystemsThinkingWorkbench-Test' with: [spec requires: #('default')];
				yourself.
			spec
				group: 'default' with: #('SystemsThinkingWorkbench-Core');
				group: 'tests' with: #('SystemsThinkingWorkbench-Test')];
				yourself