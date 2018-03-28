-- Constants
global chars, answer
set chars to "abcdefghijkmnopqrstuvwxyzABCDEFGHJKLMNPQRSTUVWXYZ0123456789"

-- Main
displayAlert()

-- Display Alert
on displayAlert()
	set generatedPassword to generatePassword()
	set question to display alert "New password copied to clipboard" message generatedPassword buttons {"Another Password", "Thanks"} default button 2
	set answer to button returned of question
	
	if answer is equal to "Another Password" then
		displayAlert()
	end if
end displayAlert

-- Password Generator

on generatePassword()
	set result to ""
	repeat 4 times
		set result to result & generateSegment()
	end repeat
	-- Strip the trailer hyphen
	set newPassword to text 1 thru -2 of result
	set the clipboard to newPassword
	return newPassword
end generatePassword

on generateSegment()
	set result to ""
	repeat 3 times
		set result to result & some item of chars
	end repeat
	set result to result & "-"
	return result
end generateSegment