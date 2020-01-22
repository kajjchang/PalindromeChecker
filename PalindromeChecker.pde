public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palindrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word)
{
  word = clean(word);
  for (int i = 0; i < word.length() / 2; i++) {
  	if (word.charAt(i) != word.charAt(word.length() - 1 - i)) return false;
  }
  return true;
}
public String clean(String str)
{
    String cleaned = "";
    for (int i = 0; i < str.length(); i++) {
    	if (Character.isLetter(str.charAt(i))) cleaned += str.charAt(i);
    }
    return cleaned.toLowerCase();
}


