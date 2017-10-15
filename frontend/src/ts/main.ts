'use strict';

import '../../node_modules/bootstrap-sass/assets/javascripts/bootstrap';

$(document).ready(function () {
  //  console.log('Hello world!');

  $('.loginFB, loginVK').bind('click', function (e) {
    // console.log(this);
    $('.stage, .navbar-nav.no-login').hide();
    $('.feed').show();
    $('.navbar-nav.login').removeClass('disnone');
    e.preventDefault();
    return false;
  })

  $('.add-story').bind('click', function (e) {
    $('.stage').hide();
    $('.addStory.step-1').show();
    e.preventDefault();
    return false;
  })

  $('.addStory.step-1 .done.btn').bind('click', function (e) {
    $('.stage').hide();
    $('.addStory.step-2').show();
    e.preventDefault();
    return false;
  })

})
