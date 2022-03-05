package main

type UserIterator struct {
	Position int
	Collection []*User
}

func (userIterator *UserIterator) hasNext() bool  {
	return userIterator.Position < len(userIterator.Collection)
}

func (userIterator *UserIterator) next() *User  {
	if userIterator.Position < len(userIterator.Collection) {
		user := userIterator.Collection[userIterator.Position]

		if userIterator.hasNext() {
			userIterator.Position++
		}

		return user
	}

	return nil
}