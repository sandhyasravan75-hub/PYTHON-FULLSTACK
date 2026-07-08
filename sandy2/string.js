let s1 = "single quote";
let s2 = "double quotes";
let s3 = `back tic ${s1}`;

console.log(typeof s1);
console.log(typeof s2);
console.log(typeof s3);
console.log(s3);

let a1 = "sandhya";

console.log(a1.toUpperCase());
console.log(a1.toLowerCase());
console.log(a1.length);
console.log(a1[0]);
console.log(a1.at(-4));

//slicing cut
let s = "sravanthi";
//slice(start_idx,end_idx)
new_S = s.slice(-3);
console.log(s);

new_S = s.substring(2, 5);
console.log(new_S);

let b = "ABC";

console.log(b.at(0));
console.log(b.charAt(1));
console.log(b.charCodeAt("B"));
