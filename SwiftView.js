import React from 'react';
import { requireNativeComponent } from 'react-native';
import PropTypes from 'prop-types';


class SwiftView extends React.Component {
  _onSwiftButtonPressed = (event) => {

    if (!this.props.onSwiftButtonPressed) {
      return;
    }

    this.props.onSwiftButtonPressed(event.nativeEvent);
  }

  render() {
    return <NativeSwiftView {...this.props} />
  }
}

SwiftView.propTypes = {
  text: PropTypes.string,
  onSwiftButtonPressed: PropTypes.func
};

let NativeSwiftView = requireNativeComponent('SwiftView', SwiftView);

export default SwiftView;

