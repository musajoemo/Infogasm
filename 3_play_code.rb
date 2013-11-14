#Library

#Reminder: When to add rewind functionality I can use the index of the words.
#remember text.each_with_index when I want to add a pause function.

#body of the article
def text
%W(
Clifford I. Nass, a professor of communication at Stanford who died on Saturday, regaled me several times over the years about his method for torturing students in the undergraduate dorm hall where he was an adviser. He would make them communicate face to face. No devices, no texts or tweets — and no phone calls. Those were his rules on what he called face-to-face day, a periodic experiment he ran in the dorm. He said the day was a chance for students to experience life without their digital intermediaries. The results troubled and humored Dr. Nass, who had an unkempt shock of hair and a voice that went high when he got excited. Some students, he said, would struggle to look one another in the eye and deal with basic social issues because they had become so accustomed to handling those interactions in digital bursts. “One time a student came up to me and said Dr. Nass, that was really hard!” he related, describing a conversation that took place after one face-to-face day. The student asked him: What should I do to make it easier? And Dr. Nass, his voice rising to the point of cracking and breaking into a laugh, said he told her: You ought to try doing it more often! Stanford News Service said that Dr. Nass collapsed during a hike on Saturday. He was 55.Dr. Nass did far more than make students interact. He did pioneering work on multitasking and its impact on behavior and the brain. He participated in groundbreaking work that showed that people who regularly multitasked tended actually to be less good at juggling tasks then people who were light multitaskers. He theorized that heavy multitasking made people worse at juggling tasks because it prompted them to have shorter attention spans — although his experiments did not prove whether heavy multitasking caused short attention spans or if people prone to multitasking had shorter attention spans to begin with. David Strayer, a neuroscientist at the University of Utah who studies the dangers of multitasking while driving, told me that “Cliff was one of the most creative and enthusiastic people I’ve met,” and that he was “instrumental in helping us understand how modern technology is changing who and what we are. ”Dr. Nass was recently studying whether heavy use of digital communication tools — including texting, Facebook and other media — was hampering empathy. A basic human ability in reading one another’s faces, which helps people deal with confrontation and conflict in an immediate in a healthy way. Without basic day-to-day interaction, he theorized, people would begin to lose their ability to deal ably with challenging situations, big and small.  With his passing, I’ll remember him with a long period of digital silence and some face-to-face time in its place.

)end

# This was made to deal with a problem I had running the program in console
# It adds spaces to get rid of ghost characters using regex and then clears it with strip "\r" 
def fix(word)
		if word.length < 30
			word + ("\s"*(30-word.length)+"\r")
		end
end

#Crude but it works
def read
	text.each do |word|
		print fix(word)
		sleep (/\d/.match(word) ? 0.5 : 0.07+(word.length*0.015))
	end
end

#is this a normal word or is it something that should be put in its own special box?
def worthy(word)
	#for each word.match(library.doc) ? display_array[] << word : nil.
end

read