package main

type Group struct {
	Users []IUser
}

func NewGroup() *Group {
	return &Group{
		Users: make([]IUser, 0),
	}
}

func (group *Group) add(user IUser) {
	group.Users = append(group.Users, user)
}

func (group *Group) getUserDetail() {
	for _, user := range group.Users {
		user.getUserDetail()
	}
}