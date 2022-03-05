package main

type UserCollection struct {
	Collection []*User
}

func (userCollection *UserCollection) createIterator() IIterator {
	return &UserIterator{
		Position: 0,
		Collection: userCollection.Collection,
	}
}

func (userCollection *UserCollection) add(user *User)  {
	userCollection.Collection = append(userCollection.Collection, user)
}