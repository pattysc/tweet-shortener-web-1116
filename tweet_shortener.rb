# Write your code here.
def dictionary
{
  "hello" => 'hi',
  "to" => '2',
  "two" => '2',
  "too" => '2',
  "for" => '4',
  "four" => '4',
  "be" => 'b',
  "you" => 'u',
  "at" => "@",
  "and" => "&"
}
end

def word_substituter(tweet)
  tweet.split.map {|word| dictionary.include?(word) ? dictionary[word] : word}.join(" ")
end

def bulk_tweet_shortener(arrayoftweets)
  arrayoftweets.each do |tweet|
    puts "#{tweet.split.map {|word| dictionary.include?(word.downcase) ? dictionary[word.downcase] : word}.join(" ")}"
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    return tweet.split.map {|word| dictionary.include?(word) ? dictionary[word] : word}.join(" ")
  else
    return tweet
  end
end

def shortened_tweet_truncator(tweet)
  if tweet.length > 140
    return "#{tweet[0..136]}..."
  else
    return tweet
  end
end
