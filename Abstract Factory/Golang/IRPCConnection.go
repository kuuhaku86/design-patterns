package main

type IRPCConnection interface {
	callProcedure()
}