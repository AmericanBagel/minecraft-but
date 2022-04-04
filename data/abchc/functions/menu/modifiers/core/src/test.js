const colorGradient = require("javascript-color-gradient");

const gradientArray = colorGradient.setGradient("#3F2CAF", "#e9446a").getArray();

console.log(gradientArray);
// ["#502ea8", "#6131a1", "#72339a", "#833693", "#94388d", "#a53a86", "#b63d7f", "#c73f78", "#d84271", "#e9446a"]

/*
[
  '#502ea8', '#6131a1',
  '#72339a', '#833693',
  '#94388d', '#a53a86',
  '#b63d7f', '#c73f78',
  '#d84271', '#e9446a'
]
*/