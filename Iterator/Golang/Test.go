package main

func main() {
	userCollection := UserCollection{}

	user := &User{Name: "David"}
	userCollection.add(user)
	user = &User{Name: "Jack"}
	userCollection.add(user)
	user = &User{Name: "King"}
	userCollection.add(user)

	iterator := userCollection.createIterator()

	for iterator.hasNext() {
		user = iterator.next()
		user.describe()
	}
}