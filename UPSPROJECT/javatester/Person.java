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
        if(o instanceof Person) {
            Person p = (Person) o;
            if(p.age == age) {
                return p.name.compareTo(name);
            }
            return p.age - age;
        }
        throw new ClassCastException("Cannot compare Person with " + o.getClass());

    }
   
    @Override
    public boolean equals(Object o) {
        if(o instanceof Person) {
            Person p = (Person) o;
            if(age == p.age) {
                return p.name.equals(name);
            }
            return false;
        }
        throw new ClassCastException("Cannot compare Person with " + o.getClass());

    }
    @Override
    public int hashCode() {
       return age + name.hashCode();
    }

}
