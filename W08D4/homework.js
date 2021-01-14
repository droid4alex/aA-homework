const integerArray = [1, 2, 3, 4, 5, -5];
const namesArray = ["Mary", "Brian", "Leo"];

Array.prototype.myEach = function(callback) {
  for (let i = 0; i < this.length; i++) {
    callback(this[i]);
  }
};

// integerArray.myEach(console.log);

Array.prototype.myMap = function(callback) {
  const arrMap = [];
  this.myEach(el => arrMap.push(callback(el)))
  return arrMap;
};

// console.log(integerArray.myMap(num => num * 2));

function titleize(array, callback){
  const arr = [];
  arr = array.myMap(el => `Mx. ${el} Jingleheimer Schmidt`);
  console.log(arr);
  callback(arr);
}

console.log(namesArray.titleize);
