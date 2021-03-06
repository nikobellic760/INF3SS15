note
	description: "Summary description for {NODE}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	NODE

inherit
 	WURZEL

create
	make


feature --Node Initialisation
	parent: detachable Node assign setParent

feature 

	setParent (P :detachable Node) --Sets the parent
	do
		parent:=P
	end

feature
	getParent:detachable NODE	-- Returns parent Node
	do
		if attached parent as P then
			Result:=P
		end
		ensure
			Result = parent
	end

end
