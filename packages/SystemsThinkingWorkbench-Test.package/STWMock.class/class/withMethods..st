mock objects
withMethods: aCollection

	^ STWMock new
		methods: (aCollection as: Dictionary);
		yourself
