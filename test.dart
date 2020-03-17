class Person{
  static var people = [];
  String name;
  var skills=[];
  bool isMentor;
  int availTime;

  Person(String name){
    this.name = name;
    Person.add(this);
  }
  static add(Person obj) {
      Person.people.add(obj);
  }
  addStack(String skill){
    skills.add(skill);
    
  }

  setMentorOrLearner(String type){
    if(type=="mentor" || type=="Mentor"){
      isMentor=true;
    }
    else{
      isMentor=false;
    }
  }

  setAvailableTime(int time){
    if(isMentor){
      availTime=time;
    }
    
  } 

  static getMentor(String skill,int time){
    var Mentors = [];
    for(int i=0;i<Person.people.length;i++) {
        var current = Person.people[i];
        if(!current.isMentor) continue;
        if(!current.skills.contains(skill)) continue;
        if(current.availTime==time) Mentors.add(current);
    }
    return Mentors;
  }

}

void main()
{
  Person p1 = new Person("sam");
  Person p2 = new Person("George");
  Person p3 = new Person("Dave");
  p1.addStack("code");
  p2.addStack("draw");
  p3.addStack("sports");
  p1.setMentorOrLearner("learner");
  p2.setMentorOrLearner("mentor");
  p3.setMentorOrLearner("mentor");
  p1.setAvailableTime(10);
  p2.setAvailableTime(10);
  p3.setAvailableTime(5);
  var Mentors = Person.getMentor("draw",10);
  for(int i=0;i<Mentors.length;i++){
      print(Mentors[i].name);
  }
}