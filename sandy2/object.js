//creation of object
let Student1 = {
  id: 1,
  name: "Sravanthi",
  branch: "CSE",
};

let Studentt = new Object({
  id: 2,
  name: "Naga Sravanthi",
  branch: "EEE",
});

console.log(Student1);
console.log(Studentt);

//rading individual item
console.log(Student1.id);
console.log(Student1.name);
console.log(Student1.branch);

//adding an item to existing object
Student1.marks = 80;
console.log(Student1);

//updating an item to exisiting object
Student1.name = "Sandhya";
console.log(Student1);

//deleting the object
delete Student1.branch;

//for-in loop
for (let key in Student1) {
  console.log(`${key} => ${Student1[key]}`);
}
