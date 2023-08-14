# Tree
A simple lua module inspired by bash's tree command.

# Example
```lua
local Tree = Tree({
	{"Fruit", {
		{"Strawberry", {
			{"Seed"},
			{"Seed"}
		}}
	}},
	{"Vegetable", {
		{"WTF"}
	}}
})

print(Tree)
```

# Output
```
├── Fruit
│	└── Strawberry
│	 	├── Seed
│	 	└── Seed
└── Vegetable
 	└── WTF
```
