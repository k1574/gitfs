Tables: module {
	PATH: con "/dis/git/tables.dis";
	Table: adt[T] {
		items:	array of list of (int, T);
		nilval:	T;
	
		new: fn(nslots: int, nilval: T): ref Table[T];
		add:	fn(t: self ref Table, id: int, x: T): int;
		del:	fn(t: self ref Table, id: int): int;
		find:	fn(t: self ref Table, id: int): T;
		all:    fn(t: self ref Table): list of T;
	};
	
	Strhash: adt[T] {
		items:	array of list of (string, T);
		nilval:	T;
	
		new: fn(nslots: int, nilval: T): ref Strhash[T];
		add:	fn(t: self ref Strhash, id: string, x: T);
		del:	fn(t: self ref Strhash, id: string);
		find:	fn(t: self ref Strhash, id: string): T;
		all:    fn(t: self ref Strhash): list of T;
	};

	hash: fn(s: string, n: int): int;
};
