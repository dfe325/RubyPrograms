#My submission to Launch Academy's Shipping Up to Boston Coding Challenge
#http://blog.launchacademy.com/shipping-up-to-boston-coding-challenge/
 
puts "What didja say?"

user_input = gets.chomp
user_input[0] = user_input[0].downcase 
 
/if statement translates 'so doan I' to grammatically correct 'so do I'/
 
if user_input.include? 'so doan I'
user_input.gsub!('so doan I', 'so do I')
elsif user_input.include? 'So doan I'
user_input.gsub!('So doan I', 'So do I')	
end
 
translate_hash = {
 
		'bah' => 'bar',
		'lobstah' => 'lobster'
		'didja' => 'did you', 
		'cahds' => 'cards', 
		'wicked' => 'really', 
		'ovah' => 'over', 
		'doan' => 'don\'t', 
		'coadin' => 'coding', 
		'capsha' => 'capture', 
		'yoah' => 'your', 
		'errah' => 'error', 
		'ahnt' => 'aunt', 
		'developah' => 'developer', 
		'smaht' => 'smart', 
		'stoah' => 'store',  
		'pahk' => 'park',
		'cah' => 'car',
		'Hahvihd' => 'Harvard',
		'Yahd' => 'Yard',
		'nooomaaa' => 'Nomar Garciaparra, former shortstop for the Boston Red Sox',
		'Sawx' => 'Red Sox',
		'God' => 'Brady', 
		'ya bastids' => 'my friends', 
		'-av' => ' Avenue',
		'b\'daydahs' => 'potatoes',
		'uey' => 'u-turn',
		'bubla' => 'water fountain',
		'the Bury' => 'Roxbury',
		'Da Broons' => 'Boston\'s National Hocky League franchise, the Boston Bruins',
		'the Cawmun' => 'Boston Common',
		'the Cape' => 'Cape Cod',
		'Chowdahead' => 'unintelligent fellow',
		'Cumbie\'s' => 'Cumberland Farms, miniature mart',
		'shuah' => 'sure',
		'dingah' => 'party',
		'kegga' => 'festive gathering of keg beer enthusiasts',
		'Dunkies' => 'Dunkin Donuts™'
		'pissa' => 'cool'
		'what\'s doin?' => 'how are you this fine day?'
		}

translate_hash.each do | bostonian, english | 
 
	while user_input.include? bostonian 
		user_input = user_input.gsub!(bostonian, english)
	end
	
end
 
user_input[0] = user_input[0].upcase
puts user_input
 
