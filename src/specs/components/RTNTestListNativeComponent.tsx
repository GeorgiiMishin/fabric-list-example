import type {HostComponent, ViewProps} from 'react-native';
import codegenNativeComponent from 'react-native/Libraries/Utilities/codegenNativeComponent';

// import type {} from 'react-native/Libraries/Types/CodegenTypes';

export interface NativeProps extends ViewProps {
  data: ReadonlyArray<string>;
  mode: string;
}

export default codegenNativeComponent<NativeProps>(
  'RTNTestList',
) as HostComponent<NativeProps>;
