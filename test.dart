
import 'dart:io';
class Person{
  String name;
  var skills=[];
  bool isMentor;
  int availTime;
  var obg=[];

  Person(){
    obg.add(this);
  }
  addStack(String skill){
    skills.add(skill);
    
  }

  setMentorOrLearner(String type){
    stdout.writeln("Mentor or Learner");
    var type = stdin.readLineSync();
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

  getMentor(){
    obg.forEach((p)=>print(p.name));
    
  }

}

void main()
{
  Person p1 = Person();
  p1.name="ram";
  p1.addStack("code");
  p1.addStack("draw");
  p1.addStack("dance");
  p1.setMentorOrLearner("");
  p1.setAvailableTime(10);
  print(p1.name);
  print(p1.availTime);
  print(p1.skills); 
  print(p1.isMentor); 

  
 
}