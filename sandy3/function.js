/*let ans = additio(50,20);
console.log("addtion: " ans); */
/*addition*/
function addition(x, y) {
  let res = x + y;
  return res;
}
let ans = addition(50, 20);
console.log(ans);

/* squares*/
function square(x, y) {
  let res = x ** 2 + y ** 2;
  return res;
}
let anss = square(20, 40);
console.log(anss);

//arrow function//
let anns = (x, y) => {
  let res1 = squaree(x) - squaree(y);
  return res1;
};
let squaree = (z) => z**2;
console.log(anns(5,2));
