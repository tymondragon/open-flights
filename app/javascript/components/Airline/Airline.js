import axios from 'axios';
import React, { useState, useEffect } from 'react';
import { useParams } from 'react-router-dom';
import Header from './Header';

const Airline = () => {
  const [airline, setAirline] = useState({});
  const [review, setReview] = useState({});
  const [loaded, setLoaded] = useState(false);

  let params = useParams();
  useEffect(() => {
    const slug = params.slug
    const url = `/api/v1/airlines/${slug}`;
    axios.get(url)
    .then( resp => {
      setAirline(resp.data)
      setLoaded(true)
    })
    .catch( err => console.log(err))
  }, [])
  console.log("PROPS: ", airline.included);
  return (
    <div className='wrapper'>
      <div className='column'>
        { 
          loaded &&
          <Header
          attributes={airline.data.attributes}
          reviews={airline.included}
          />
        }
        <div className='reviews'></div>
      </div>
      <div className='column'>
        <div className='reviews'>[Review Form Goes Here.]</div>
      </div>
    </div>
  );
};

export default Airline;