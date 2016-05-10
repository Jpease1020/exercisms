//
// This is only a SKELETON file for the 'Hello World' exercise. It's been provided as a
// convenience to get you started writing code faster.
//

var HelloWorld = function() {};

HelloWorld.prototype.hello = function(input) {
  // why doesn't this first solution work?????? (I'm new to javascript)

  // if(input == null || input == "") {
  //   return "Hello, world!"
  // } else {
  //   return 'Hello, ' + input + '!'
  // }

  input = input || 'World';

    return 'Hello, ' + input + '!';
};

module.exports = HelloWorld;
