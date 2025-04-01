package javatester;

import java.io.File;
import java.io.FileNotFoundException;
import java.util.Scanner;


public class HashSet {
    HashSet<Integer> intSet;
    HashSet<String> StringSet;
    HashSet<Person> PersonSet;
    ArrayList<Person> PersonList;

    int SmallestInt; 
    int BiggestInt;
    int middleInt;

    String SmallestString; 
    String BiggestString;
    String MiddleString;

    Person SmallestPerson; 
    Person BiggestPerson;
    Person MiddlePerson;

/* 
* 9 parametrar. 3 inputFiler och 6 outputfiler.  
*
*/
    public static void main(String[] args) {
        
        try{
            Scanner inputIntFile = new Scanner(new File(args[0]));
            Scanner inputStringFile = new Scanner(new File(args[1]));
            Scanner inputPersonAgeFile = new Scanner(new File(args[2]));
            Scanner inputPersonNameFile = new Scanner(new File(args[3]));

            FileWriter outputAddIntFile = new FileWriter(args[4]);
            FileWriter outputFindSmallestIntFile = new FileWriter(args[5]);
            FileWriter outputFindMiddleIntFile = new FileWriter(args[6]);
            FileWriter outputFindBiggestIntFile = new FileWriter(args[7]);
            FileWriter outputAddStringFile = new FileWriter(args[8]);
            FileWriter outputFindSmallestStringFile = new FileWriter(args[9]);
            FileWriter outputFindMiddleStringFile = new FileWriter(args[10]);
            FileWriter outputFindBiggestStringFile = new FileWriter(args[11]);
            FileWriter outputAddPersonFile = new FileWriter(args[12]);
            FileWriter outputFindSmallestPersonFile = new FileWriter(args[13]);
            FileWriter outputFindMiddlePersonFile = new FileWriter(args[14]);
            FileWriter outputFindBiggestPersonFile = new FileWriter(args[15]);

            outputAddIntFile.write("Löporder, Tid (mikrosekund) \n");
            outputFindSmallestIntFile.write("Löporder, Tid (mikrosekund) \n");
            outputFindMiddleIntFile.write("Löporder, Tid (mikrosekund) \n");
            outputFindBiggestIntFile.write("Löporder, Tid (mikrosekund) \n");
            outputAddStringFile.write("Löporder, Tid (mikrosekund) \n");
            outputFindSmallestStringFile.write("Löporder, Tid (mikrosekund) \n");
            outputFindMiddleStringFile.write("Löporder, Tid (mikrosekund) \n");
            outputFindBiggestStringFile.write("Löporder, Tid (mikrosekund) \n");
            outputAddPersonFile.write("Löporder, Tid (mikrosekund) \n");
            outputFindSmallestPersonFile.write("Löporder, Tid (mikrosekund) \n");
            outputFindMiddlePersonFile.write("Löporder, Tid (mikrosekund) \n");
            outputFindBiggestPersonFile.write("Löporder, Tid (mikrosekund) \n");

            PersonList = new ArrayList<Person>();

            while(inputPersonAgeFile.hasNext()){
                int age = inputPersonAgeFile.next();
                String name = inputPersonNameFile.next();
                Person p = new Person(age, name);
                PersonList.add(p);
            }

            Iterator<Person> itr = PersonList.iterator();


            // Tiden att sätta in integers
            addInt(inputIntFile, outputAddIntFile);

            // Tiden att finna minsta, mellan, största elementen
            findInt(intSet, SmallestElem, outputFindSmallIntFile);
            findInt(intSet, middleElem, outputFindMiddleIntFile);
            findInt(intSet, SmallestElem, outputFindBiggestIntFile);

            // Tiden att sätta in strings
            addString(inputStringFile, outputAddStringFile):

            //Tiden att finna minsta, mellan, största elementen
            findString(StringSet, SmallestString, outputFindSmallestStringFile);
            findString(StringSet, MiddleString, outputFindMiddleStringFile);
            findString(StringSet, BiggestString, outputFindBiggestStringFile);

            //Tiden att sätta in personer
            addPerson(itr, outputAddPersonFile);

            //Tiden att finna minsta, mellan och största elementen
            findPerson(PersonSet, SmallestPerson, outputFindSmallestPersonFile);
            findPerson(PersonSet, MiddlePerson, outputFindMiddlePersonFile);
            findPerson(PersonSet, BiggestPerson, outputFindBiggestPersonFile);

            outputAddIntFile.close();
            outputFindSmallestIntFile.close();
            outputFindMiddleIntFile.close();
            outputFindBiggestIntFile.close();
            outputAddStringFile.close();
            outputFindSmallestStringFile.close();
            outputFindMiddleStringFile.close();
            outputFindBiggestStringFile.close();
            outputAddPersonFile.close();
            outputFindSmallestPersonFile.close();
            outputFindMiddlePersonFile.close();
            outputFindBiggestPersonFile.close();



        public void addInt(File input, FileWriter output){
            for(int i = 1; i <= 600; i++){
                intSet = new HashSet<Integer>();

                long startInputInt = System.nanoTime();
                while(inputIntFile.hasNext()){
                    
                    intSet.add(Integer.parseInt(inputIntFile.next()));
                }
                long stopInputInt = System.nanoTime();
                
                outputAddIntFile.write(i + ", " + (stopInputInt - startInputInt) / 1000 + "\n");
            }
        }

        public void addString(File input, FileWriter output){
            for(int i = 1; i <= 600; i++){
                intSet = new HashSet<Integer>();

                long startInputInt = System.nanoTime();
                while(inputIntFile.hasNext()){
                    
                    StringSet.add(inputIntFile.next());
                }
                long stopInputInt = System.nanoTime();
                
                outputAddIntFile.write(i + ", " + (stopInputInt - startInputInt) / 1000 + "\n");
            }
        }

        public void addPerson(Iterator<Person> itr, FileWriter output){
            for(int i = 1; i <= 600; i++){
                intSet = new HashSet<Integer>();

                long startInputInt = System.nanoTime();
                while(itr.hasNext()){
                    
                    PersonSet.add(itr.next());
                }
                long stopInputInt = System.nanoTime();
                
                outputAddIntFile.write(i + ", " + (stopInputInt - startInputInt) / 1000 + "\n");
            }
        }



        public void findInt(HashSet<Integer> set, int e, FileWriter file){
            for(int i = 1; i <= 600; i++){

                long startInputInt = System.nanoTime();
                set.contains(e);
                long stopInputInt = System.nanoTime();
                
                file.write(i + ", " + (stopInputInt - startInputInt) / 1000 + "\n");
            } 
        }

        public void findString(HashSet<String> set, String e, FileWriter file){
            for(int i = 1; i <= 600; i++){

                long startInputInt = System.nanoTime();
                set.contains(e);
                long stopInputInt = System.nanoTime();
                
                file.write(i + ", " + (stopInputInt - startInputInt) / 1000 + "\n");
            } 
        }

        public void findPerson(HashSet<Person>, set Person e, FileWriter file){
            for(int i = 1; i <= 600; i++){

                long startInputInt = System.nanoTime();
                set.contains(e);
                long stopInputInt = System.nanoTime();
                
                file.write(i + ", " + (stopInputInt - startInputInt) / 1000 + "\n");
            } 
        }


}catch (FileNotFoundException e) {
            System.out.println("Filen hittades inte!");
        }

    }
}
