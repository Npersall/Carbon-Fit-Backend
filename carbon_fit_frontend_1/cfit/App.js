import React, { Component } from 'react';
import { StyleSheet, View, Text, TouchableOpacity } from 'react-native';

class App extends Component {
  state = { data: 0 };
  onButtonPress() {
    console.log('hello');
    //calculation of carbon footprint for 45000 miles
    this.setState({ data: 19.4 * (45000 / 25) / 2204.62 });
  }
  //render data to device
  render() {
    return (
      <View style={styles.container}>
        <Text style={styles.buttonText}> What is my Carbon Footprint?</Text>
        <Text />
        <Text />
        <Text />
        <Text />
        <Text style={styles.buttonText}> Life time Distance: 45000 </Text>
        <Text style={styles.buttonText}> Avrage MPG: 25 </Text>
        <Text style={styles.buttonText}> Metric Tons: {this.state.data} </Text>
        <TouchableOpacity onPress={this.onButtonPress.bind(this)} style={styles.startButton}>
          <Text style={styles.buttonText}> Calculate</Text>
        </TouchableOpacity>
      </View>
    );
  }
}
const styles = StyleSheet.create({
  //styles content of app
  container: {
    flex: 1,
    alignItems: 'center',
    justifyContent: 'center',
    backgroundColor: '#F5FCFF'
  },
  titleText: {
    fontSize: 30
  },
  startButton: {
    borderWidth: 3,
    borderRadius: 3,
    justifyContent: 'center',
    width: '50%',
    height: '10%',
    marginBottom: '-15%',
    borderColor: 'black',
    backgroundColor: 'rgba(50, 50, 50, .5)'
  },
  buttonText: {
    textAlign: 'center',
    fontSize: 30,
    color: 'black',
    backgroundColor: 'transparent'
  }
});
//exports app component
export default App;
