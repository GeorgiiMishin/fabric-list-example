/**
 * Sample React Native App
 * https://github.com/facebook/react-native
 *
 * Generated with the TypeScript template
 * https://github.com/react-native-community/react-native-template-typescript
 *
 * @format
 */

import React from 'react';
import {AppRegistry, Text} from 'react-native';
import RTNTestListNativeComponent from './src/specs/components/RTNTestListNativeComponent';
import RTNTestListCellNativeComponent from './src/specs/components/RTNTestListCellNativeComponent';

const Test: React.FC<{index: number}> = props => {
  const [index, setIdnex] = React.useState(props.index);

  return (
    <RTNTestListCellNativeComponent
      onDirectEventHandler={event => {
        setIdnex(event.nativeEvent.value);
      }}>
      <Text>{index}</Text>
    </RTNTestListCellNativeComponent>
  );
};

AppRegistry.registerComponent('test', () => Test);

const data = Array(10000)
  .fill(null)
  .map((_, index) => (index + 1).toString());

const App = () => {
  return (
    <RTNTestListNativeComponent data={data} mode={'list'} style={{flex: 1}} />
  );
};

export default App;
