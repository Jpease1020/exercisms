var DnaTranscriber = function(){};

DnaTranscriber.prototype.toRna = function(input){
  var rnaConverter = {
    'C': 'G',
    'G': 'C',
    'A': 'U',
    'T': 'A'
  }

  var convertedInput = input.split("")
  return convertedInput.map(function(letter){
    return rnaConverter[letter]
  }).join("")
};

module.exports = DnaTranscriber
