
//Program prints the lyrics for the song "This Old Man"

class ThisOldMan

//Main method establishes parameters for verses 1 - 10
//Changing numbers and phrases have been factored out

{
public static void main (String [] args)

{
verse(1 , "on my drum");
verse(2 , "on my shoe");
verse(3 , "on my tree");
verse(4 , "on my door");
verse(5 , "on my hive");
verse(6 , "on my sticks");
verse(7 , "up in heaven");
verse(8 , "on my gate");
verse(9 , "on my spine");
verse(10 , "on my hen");
}

//static method verse is passes variables
//as it prints the appropriate lyrics

public static void verse (int number, String place)

{
System.out.println("This old man, he played " + number + ",");
System.out.println("He played nick-nack " + place + ";");
System.out.println("With a nick-nack paddy-whack, give a dog a bone,");
System.out.println("This old man came running home.");
System.out.println();


}

}
