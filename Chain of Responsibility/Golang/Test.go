package main

import (
	"fmt"
)

func main()  {
	authentication 	:= Authentication{}
	authorization	:= Authorization{}
	caching			:= Caching{}
	system			:= System{}
	
	authentication.setNextHandler(&authorization)
	authorization.setNextHandler(&caching)
	caching.setNextHandler(&system)

	fmt.Println("Test Unauthenticated")

	request := &Request{
		Authenticated: false,
	}

	result := authentication.execute(request)

	fmt.Println(result)

	fmt.Println("\nTest Unauthorized")

	request = &Request{
		Authenticated: 	true,
		Authorized: 	false,	
	}

	result = authentication.execute(request)

	fmt.Println(result)

	fmt.Println("\nTest Get to System")

	request = &Request{
		Authenticated: 	true,
		Authorized: 	true,
		Route: 			"/test",
	}

	result = authentication.execute(request)

	fmt.Println(result)

	fmt.Println("\nTest Cached")

	result = authentication.execute(request)

	fmt.Println(result)
}