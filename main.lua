
local function Tree(Branch, Indent)
	local String = {"\n"}
	
	for Index, Leaf in Branch do
		local Indent = Indent or {}
		local Final = Index == #Branch

		table.insert(String, table.concat(Indent))
		table.insert(String, Final and "└── " or "├── ")
		table.insert(String, Leaf[1])
		table.insert(Indent, Final and " \t" or "│\t")
		table.insert(String, Tree(Leaf[2] or {}, Indent))
		table.remove(Indent, #Indent)
	end
	
	return table.concat(String)
end

return Tree
