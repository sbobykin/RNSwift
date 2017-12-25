/**
 * Sample React Native App
 * https://github.com/facebook/react-native
 * @flow
 */

import React, { Component } from 'react';
import {
  Platform,
  StyleSheet,
  Text,
  Button,
  View
} from 'react-native';

import SwiftView from './SwiftView.js';

const instructions = Platform.select({
  ios: 'Press Cmd+R to reload,\n' +
    'Cmd+D or shake for dev menu',
  android: 'Double tap R on your keyboard to reload,\n' +
    'Shake or press menu button for dev menu',
});

export default class App extends Component<{}> {
  constructor(props) {
    super(props);
    this.state = {
      jsText: "JS Side",
      swiftText: "Swift Side"
    }

    this.num = 0;
  }

  render() {
    if (Platform.OS === 'ios') {
      /*return (
          <SwiftView text="Text from JS side in SwiftView" style={{
            marginTop: 50,
            marginLeft: 20,
            flex: 1
          }} />
      )*/
      return (
        <View style={{
          flex: 1,
          marginTop: 40
        }}>
          <View style={{
            marginTop: 10,
            flex: 0.5
          }}>
            <Text style={{
              textAlign: 'center'
            }}>{this.state.jsText}</Text>
            <Button
              title="JS Button"
              onPress={ () => {
                this.setState({
                  jsText: "JS side: JS Button tapped",
                  swiftText: "Swift side: JS Button tapped"
                });
              }}
            />
          </View>
          <View style={{
            flex: 0.5
          }}>
            <SwiftView text={this.state.swiftText}
                       onSwiftButtonPressed={ () => this.setState({
                         jsText: "JS side: Swift Button tapped",
                         swiftText: "Swift side: Swift Button tapped"
                       }) }
                       style={{
              flex: 1
            }} />
          </View>
        </View>
      )
    } else {
      return (
        <View style={{
            flex: 1,
            justifyContent: 'center',
            alignItems: 'center',
        }}>
          <Text style={{
            fontSize: 20,
            textAlign: 'center'
          }}>Only ios is supported</Text>
        </View>
      )
    }
  }
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
    backgroundColor: '#F5FCFF',
  },
  welcome: {
    fontSize: 20,
    textAlign: 'center',
    margin: 10,
  },
  instructions: {
    textAlign: 'center',
    color: '#333333',
    marginBottom: 5,
  },
});
