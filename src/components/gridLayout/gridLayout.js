import $ from 'jquery';
import Masonry from 'masonry-layout'
import './gridLayout.scss';

const grid = document.querySelector('.grid')
const msnry = new Masonry(grid, {
  // options
  itemSelector: '.grid-item',
  columnWidth: 200,
  percentPosition: true
});


export default {msnry};
