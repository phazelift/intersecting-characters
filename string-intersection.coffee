{ allString }	= require 'types.js'
MessageEvents	= require 'message-events'



message = new MessageEvents

message.format 'error', (text) ->
	sender	: 'string-intersection'
	type		: 'error'
	text		: text


#
# collects all characters from string that are found in a second string
# always returns an array, containing the found characters, if any
#
intersection = (a, b) ->
	found = []
	if not (allString a, b)
		message.error 'requires string type arguments'
	else for ch in a
		if b.indexOf(ch) > -1
			if found.indexOf(ch) < 0
				found.push ch
	return found



intersection.onError = (handler) -> message.on 'error', handler



module.exports = intersection