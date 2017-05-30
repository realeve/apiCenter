var viewList = [
  //'chart',
  //'preload',
  //'table',
  //'index',
  //'login',
  //'lockscreen',
  //'search',
  //'searchFeedback',
  //'PaperPara',
  //'demo',
  //'datainterface',
  // 'noteAnany',
  'settings_menu'
];

var taskList = {};

viewList.map(function(item) {
  taskList[item] = require('./view/' + item + '.js');
});

module.exports = taskList;
