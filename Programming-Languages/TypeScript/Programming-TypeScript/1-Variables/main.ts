
function christmasTree() {
  let n = 10;

  for (let i = 0; i < n; i++) {
    for (let j = 1; j <= n - i; j++) {
      console.log(" ");
    }
    console.log("*");
    for (let k = 0; k <= i - 1; k++) {
      console.log("| ");
    }
    for (let j = 1; j < i; j++) {
      console.log("|");
    }
    if (i > 0) {
      console.log("*");
    }
    console.log("");
  }
}

christmasTree();

