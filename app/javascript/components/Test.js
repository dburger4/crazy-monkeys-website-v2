import React from "react"
import PropTypes from "prop-types"
class Test extends React.Component {
  render () {
    return (
      <React.Fragment>
        {process.env.TEST_ENV}
        {process.env.YOUTUBE_API_KEY}
        {process.env.YOUTUBE_CHANNEL_ID}
      </React.Fragment>
    );
  }
}

export default Test
