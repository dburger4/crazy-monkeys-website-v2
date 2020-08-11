import React from "react"
import ReactLivestream from 'react-livestream'
import PropTypes from "prop-types"

// function OfflineComponent() {
//   return (
//     <div>
//       <p>Currently Not Streaming</p>
//     </div>
//   )
// }

class Livestream extends React.Component {
  render () {
    return (
        <ReactLivestream 
          platform="youtube"
          youtubeApiKey={process.env.YOUTUBE_API_KEY}
          youtubeChannelId={process.env.YOUTUBE_CHANNEL_ID}
        />
    );
  }
}

export default Livestream
