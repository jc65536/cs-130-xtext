package xtext {
	package terminals {
		class ID:
		class STRING:
		class FQN:
	}
	package nonterminals {
		class Package(Member):
			name: terminals.ID
			members: List(Member)
		class Member:
		class User(Member):
		class Class(User):
			name: terminals.ID
			super: Class
			attributes: List(Attribute)
		class Enum(User):
			name: terminals.ID
			literals: Set(Literal)
		class Attribute:
			name: terminals.ID
			type: Type
		class Literal:
			name: terminals.ID
			symbol: terminals.STRING
		class Type:
		class Builtin(Type):
			t: StrBool
		enum StrBool:
			STR = "str"
			BOOL = "bool"
		class Ref(Type):
			t: User
		class Gist(Type):
			t: User
		class Get(Type):
			t: User
	}
}