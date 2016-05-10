var Hamming = function () {};

Hamming.prototype.compute = function (string1, string2) {
  var counter = 0;
  for(var i = 0; i < string1.length; i ++ ) {
    if (string1[i] != string2[i]) {
      counter += 1
    }
  }
  return counter
}
// Hamming.prototype.compute = function(str1, str2){
//   if(str1.length != str2.length) {throw "DNA strands must be of equal length."}
//
//   var distance = 0;
//
//   for(var i = 0; i < str1.length; i ++){
//     if(str1[i] != str2[i]){
//       distance += 1
//     }
//   }
//   return distance;
// }

module.exports = Hamming;
