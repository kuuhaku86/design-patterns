package main

type IAuth interface {
	authenticate(username, password string)
}