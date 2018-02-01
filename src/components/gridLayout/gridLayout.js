import $ from 'jquery';
import Masonry from 'masonry-layout';
import './gridLayout.scss';

var sizer = '.sizer3';
const grid = document.querySelector('#gallery')
const msnry = new Masonry(grid, {
  // options
  itemSelector: '.item-masonry',
  columnWidth: sizer,
  percentPosition: true
});


export default {msnry};
