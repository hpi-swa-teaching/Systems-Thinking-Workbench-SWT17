mock objects
withMethods: aCollection

	^ STWMock new
		methods: (aCollection asDictionary);
		yourself
