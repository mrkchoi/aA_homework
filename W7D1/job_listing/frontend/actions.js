
const selectLocation = (cityStr, jobsArr) => {
  return ({
    type: "SWITCH_LOCATION",
    city: cityStr,
    jobs: jobsArr
  });
};

export default selectLocation;

window.selectLocation = selectLocation;