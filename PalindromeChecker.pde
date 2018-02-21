public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  String lines2[] = loadStrings("palindromes.txt");
  for (int i = 0; i< lines.length; i++ ) {
    lines[i] = noSpaces(lines[i]);
    lines[i] = lines[i].toLowerCase();
    lines[i] = noSymbols(lines[i]);
  }
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(isPalindrome(lines[i])==true)
    {
      println(lines2[i] + " IS a palindrome.");
    }
    else
    {
      println(lines2[i] + " is NOT a palindrome.");
    }
  }
}
public boolean isPalindrome(String sWord){
  String [] temp = new String [sWord.length()];
  for (int i = 0; i < sWord.length(); i++) {
    temp[i] = (sWord.substring(sWord.length()-i-1,sWord.length()-i ));
  }
  String n = "";
  for (int i = 0; i < sWord.length(); i++) {
    n = n + temp[i];
  }
  return n.equals(sWord);
}

public String noSpaces(String sWord){
  String [] temp = new String [sWord.length()];
  int no = 0;
  for (int i = 0; i < sWord.length(); i++) {
    if ((sWord.substring(i, i+1)).equals(" ")) {
    }
    else {
      temp[no] = sWord.substring(i,i+1 );
      no+=1;
    }
  }
  String n = "";
  for (int i = 0; i < no; i++) {
    n = n + temp[i];
  }
  return n;
}

public String noSymbols(String sWord){
  String [] temp = new String [sWord.length()];
  int no = 0;
  for (int i = 0; i < sWord.length(); i++) {
    if (Character.isLetter(sWord.charAt(i))) {
      temp[no] = sWord.substring(i,i+1);
      no +=1;
    }
  }

  String n = "";
  for (int i = 0; i < no; i++) {
    n = n + temp[i];
  }
  return n;
}

//Obselete
public String reverse(String sWord){
  String [] temp = new String [sWord.length()];
  for (int i = 0; i < sWord.length(); i++) {
    temp[i] = sWord.substring(sWord.length()-i-1,sWord.length()-i );
  }
  String n = "";
  for (int i = 0; i < sWord.length(); i++) {
    n = n + temp[i];
  }
  return n;
}