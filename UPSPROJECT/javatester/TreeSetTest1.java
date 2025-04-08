package javatester;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.TreeSet;
import java.util.Iterator;
import java.util.Scanner;

public class TreeSetTest {
    private static TreeSet<Integer> intSet;
    private static TreeSet<String> StringSet;
    private static TreeSet<Person> PersonSet;
    private static ArrayList<Person> PersonList;
    private static ArrayList<Integer> IntList;
    private static ArrayList<String> StringList;

    private static final int SmallestInt = 1;
    private static final int BiggestInt = 2;
    private static final int MiddleInt = 3;

    private static final String SmallestString = "a";
    private static final String BiggestString = "b";
    private static final String MiddleString = "c";

    private static final Person SmallestPerson = new Person(1, "a");
    private static final Person BiggestPerson = new Person(2, "b");
    private static final Person MiddlePerson = new Person(3, "c");

    /*
     * 16 filer som parametrar?
     * 4 första är inputfiler, int, string, age, name.
     * 12 följande är 4 vardera för int, string och person.
     * Där första är insättning, följ av sök minst, median, störst.
     */
    public static void main(String[] args) {

        try {
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
            IntList = new ArrayList<>();
            StringList = new ArrayList<>();

            while (inputPersonAgeFile.hasNext()) {
                int age = Integer.parseInt(inputPersonAgeFile.next());
                String name = inputPersonNameFile.next();
                Person p = new Person(age, name);
                PersonList.add(p);
            }

            while(inputIntFile.hasNext()){
                IntList.add(Integer.parseInt(inputIntFile.next()));
            }

            while(inputStringFile.hasNext()){
                StringList.add(inputStringFile.next());
            }

            

            // Tiden att sätta in integers
            addInt(IntList, outputAddIntFile);

            // Tiden att finna minsta, mellan, största elementen
            findInt(intSet, SmallestInt, outputFindSmallestIntFile);
            findInt(intSet, MiddleInt, outputFindMiddleIntFile);
            findInt(intSet, BiggestInt, outputFindBiggestIntFile);

            // Tiden att sätta in strings
            addString(StringList, outputAddStringFile);

            // Tiden att finna minsta, mellan, största elementen
            findString(StringSet, SmallestString, outputFindSmallestStringFile);
            findString(StringSet, MiddleString, outputFindMiddleStringFile);
            findString(StringSet, BiggestString, outputFindBiggestStringFile);

            // Tiden att sätta in personer
            addPerson(PersonList, outputAddPersonFile);

            // Tiden att finna minsta, mellan och största elementen
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
            inputPersonAgeFile.close();
            inputPersonNameFile.close();

        } catch (FileNotFoundException e) {
            System.out.println("Filen hittades inte!");
        } catch (IOException e) {
            System.out.println("Filen hittades inte!");
        }

    }

    public static void addInt(ArrayList<Integer> input, FileWriter output) throws IOException {
        for (int i = 1; i <= 600; i++) {
            intSet = new TreeSet<Integer>();
            Iterator<Integer> itr = input.iterator();

            long startInputInt = System.nanoTime();
            while (itr.hasNext()) {

                intSet.add(itr.next());
            }
            long stopInputInt = System.nanoTime();

            output.write(i + ", " + (stopInputInt - startInputInt) / 1000 + "\n");
        }
    }

    public static void addString(ArrayList<String> input, FileWriter output) throws IOException {
        for (int i = 1; i <= 600; i++) {
            StringSet = new TreeSet<String>();
            Iterator<String> itr = input.iterator();


            long startInputInt = System.nanoTime();
            while (itr.hasNext()) {

                StringSet.add(itr.next());
            }
            long stopInputInt = System.nanoTime();

            output.write(i + ", " + (stopInputInt - startInputInt) / 1000 + "\n");
        }
    }

    public static void addPerson(ArrayList<Person> PersonList, FileWriter output) throws IOException {
        for (int i = 1; i <= 600; i++) {
            PersonSet = new TreeSet<Person>();
            Iterator<Person> itr = PersonList.iterator();

            long startInputInt = System.nanoTime();
            while (itr.hasNext()) {

                PersonSet.add(itr.next());
            }
            long stopInputInt = System.nanoTime();

            output.write(i + ", " + (stopInputInt - startInputInt) / 1000 + "\n");
        }
    }

    public static void findInt(TreeSet<Integer> set, int e, FileWriter file) throws IOException {
        for (int i = 1; i <= 600; i++) {

            long startInputInt = System.nanoTime();
            set.contains(e);
            long stopInputInt = System.nanoTime();

            file.write(i + ", " + (stopInputInt - startInputInt) / 1000 + "\n");
        }
    }

    public static void findString(TreeSet<String> set, String e, FileWriter file) throws IOException {
        for (int i = 1; i <= 600; i++) {

            long startInputInt = System.nanoTime();
            set.contains(e);
            long stopInputInt = System.nanoTime();

            file.write(i + ", " + (stopInputInt - startInputInt) / 1000 + "\n");
        }
    }

    public static void findPerson(TreeSet<Person> set, Person e, FileWriter file) throws IOException {
        for (int i = 1; i <= 600; i++) {

            long startInputInt = System.nanoTime();
            set.contains(e);
            long stopInputInt = System.nanoTime();

            file.write(i + ", " + (stopInputInt - startInputInt) / 1000 + "\n");
        }
    }
}
