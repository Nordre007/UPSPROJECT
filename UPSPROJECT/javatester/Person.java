package javatester;


public class Person implements Comparable {
    private int age;
    private String name;

    public Person(int age, String name){
        this.name = name;
        this.age = age;
    }

    @Override
    public int compareTo(Object o) {
        // TODO Auto-generated method stub
        throw new UnsupportedOperationException("Unimplemented method 'compareTo'");
    }

}
