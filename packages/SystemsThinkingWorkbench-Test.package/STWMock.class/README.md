A STWMock is a configurable mock object. Using the method dictionary it can be programmed to mimick any objects behavior.

instance var 	Type 									Description 
methods		Dictionary<Symbol -> Block/Object>	Contains all methods this mock objects supports, block closures will be evaluated with the given arguments, objects will be returned
