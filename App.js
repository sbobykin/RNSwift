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
