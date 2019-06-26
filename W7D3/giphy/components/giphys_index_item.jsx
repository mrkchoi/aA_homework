import React from 'react';

const GiphysIndexItem = ({ giphy }) => (
  <li>
    <img src={giphy.images.fixed_width.url} />
  </li>
);

export default GiphysIndexItem;

