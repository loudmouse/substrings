#this is the dictionary array which contains all the words
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
#this is the substrings method which takes a string (word or phrase in this case) and the dictionary array as parameters
def substrings (string, dictionary)
  #creating a new hash called collection which will be used to store the collection of substrings we find from the dictionary
  collection = {}
  #for each word in the dictionary
  dictionary.each do |word|
    #take the string provided in the argument,
    #downcase it so we're not worrying about capitalized words (particulary in the phrase section),
    #then us the scan method to see what characters from the dictionary matche the string we've passed in the argument
    #run the size method on that scan to get the number of matching characters
    count = string.downcase.scan(word).size
    #if the count of matching characters is greater than 0
    #this is to say a substring match was found between the dictionary word and the string we passed
    if count > 0
      #add that dictionary word to the collection as a key with the number of times it shows up in the string
      #this is stored as the value of count
      collection[word] = count
    end
  end
  #puts the hash collection to the terminal
  puts collection
end


substrings("below", dictionary)
substrings("Howdy partner, sit down! How's it going?", dictionary)
