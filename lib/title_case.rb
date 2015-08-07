class String	
  define_method(:title_case) do
   input_string = self.split(" ")
   filler_words = ["and", "the", "of", "or"]
   counter = 0
 	input_string.each() do |word|
 		if filler_words.include?(word) && counter != 0 
 		  next
 		  counter+=1
 		else
 		  word.capitalize!()
 		  counter+=1
 		end
 	end
 	output_string=input_string.join(" ")
  end
end