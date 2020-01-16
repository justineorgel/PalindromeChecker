public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    String sTwo=onlyLetters(lines[i]);
    String sThree=sTwo.toLowerCase();

    if(palindrome(sThree)==true)
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
  if(word.equals(reverse(word))){
    return true;
  }
  return false;
}
public String reverse(String str)
{
    String sNew = new String();
    for(int i=str.length()-1;i>=0;i--){
      sNew=sNew+str.substring(i,i+1);
    }
    //String sTwo= onlyLetters(sNew);
    return sNew;
}
public String noSpaces(String sWord){
  String s=new String();
  for(int i=0; i<sWord.length();i++){
    if(!sWord.substring(i,i+1).equals(" ")){
      s+=sWord.substring(i,i+1);
    }
  }
  return s;
}
public String onlyLetters(String sString){
  String s="";
  for(int i=0;i<sString.length();i++){
    if(Character.isLetter(sString.charAt(i))==true){
      s+=sString.substring(i,i+1);
    }
  }
  return s;
}
