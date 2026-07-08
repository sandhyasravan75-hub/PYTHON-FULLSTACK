/* console.log("This is progm2.js");

let arr = ["apple", "banana", "grapes"];
//          0         1        2
//syntax => splice(startIndex,delect_count,item1,item2...);

arr.splice(1, 1, "goa", "carrot");
console.log(arr); */

let arr = [1, 2, 3, 4, 5];
//genral for loop for array

for (let i = 0; i < arr.length; i++) {
  console.log(`${arr[i]} power 2 is : $ {arr[i] ** 2}`);
}

//for -of loop for array
for (let item of arr) {
  console.log(`${item} power 3 is : ${item ** 3}`);
}


//for-in loop for array
for (let idx in arr) {
    console.log(`${arr[idx]} power 4 is : ${arr[idx] ** 4}`);
}

//for-while loop for array
