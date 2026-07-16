
/* character using own ga chesa */
let s = "a";
let ch = s;
for (let i = 0; i < structuredClone.length; i++) {
  if ((ch >= "A" && ch <= "Z") || (ch >= "a" && ch <= "z")) {
    console.log("it is Alphabet");
  } else if (ch >= "0" && ch <= "9") {
    console.log("it is degit");
  } else {
    console.log("it is special character");
  }
}
/* ascci value sir cheparu */
let ch = "@";
if (ch.length != 1) {
  console.log("Please give only single character: ");
} else {
  let ascii = ch.charCodeAt();
  if ((ascii >= 65 && ascii <= 90) || (ascii >= 97 && ascii <= 122)) {
    console.log("Alphabet");
  } else if (ascii >= 48 && ascii <= 57) {
    console.log("Digit");
  } else {
    console.log("special symbol");
  }
}

