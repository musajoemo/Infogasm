#Library

#Reminder: When to add rewind functionality I can use the index of the words.
#array = text.each_with_index


def text
	%W("Facing dissent from his own party and growing pressure from anxious Congressional Democrats, President Obama is to propose on Thursday an administrative fix to a central element of his signature health care law, allowing Americans who are losing their health insurance coverage because of the Affordable Care Act to retain it.A House Democrat with knowledge of the president’s plan said that the fix would allow insurance companies to renew plans that do not meet the higher standard of the new health care law for a year for existing policyholders, though they would be required to notify the policy holder of alternative available coverage options, as well any benefits they might lose by staying on their existing plan.

The president’s proposal would apply only to people who have had their existing policies already cancelled — those currently without insurance would not be able to buy these old plans, said the lawmaker, who declined to be identified discussing the proposal before the president’s announcement.

State insurance commissioners would have the right to override the administrative proposal.

Mr. Obama is scheduled to make remarks on his changes to the law at 11:30 a.m. on Thursday.")
end

#To give the max value for the while loop because I am currently a programming luddite.
def limit
	text.count.to_i
end

# This was made to deal with a problem I had running the program in console
# It adds spaces to get rid of ghost characters using regex and then clears it with strip "\r" 
def clean_up(word)
		if word.length < 30
			word + ("\s"*(30-word.length)+"\r")
		end
end

#I know this is crude but it works
def read
i = 0
	while (i < limit)
		print clean_up(text[i])
		sleep (0.08+(text[i].length*0.01)) 
		i += 1
	end
end

read