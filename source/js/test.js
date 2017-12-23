import "../css/index.scss";

const a = [{
  a: 1,
  b: 2
}, {
  a: 2,
  c: 3
}];

const demo = {
  a: 1,
  b: 2,
  c: 3
}

const { a:value } = demo;

document.querySelector('#content').innerHTML = value;
