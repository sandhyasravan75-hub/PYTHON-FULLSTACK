/* let arr = [1, 2, 3, 4];
console.log(arr[2]);
/*same
let arr2 = new Array(99, 88, 22);
console.log(arr[2]);

let arr2 = new Array(99, 88, 22);
console.log(arr); */

let arr = [888, 3, 66, 667];
console.log(arr);
console.log("length of the arr is: ", arr.length);

arr.push(100);
console.log(arr);

arr.unshift(111);
console.log(arr);

let res = arr.pop();

console.log("poped ele: ", res);
console.log(arr);
