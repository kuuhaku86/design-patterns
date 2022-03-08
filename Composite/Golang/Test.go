package main

func main()  {
	group := NewGroup()

	user := User{
		Name: "Jack",
	}
	group.add(user)

	user = User{
		Name: "King",
	}
	group.add(user)

	user = User{
		Name: "Queen",
	}
	group.add(user)

	group.getUserDetail()
}