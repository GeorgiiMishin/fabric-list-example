import type {HostComponent, ViewProps} from 'react-native';
import codegenNativeComponent from 'react-native/Libraries/Utilities/codegenNativeComponent';

import type {
  DirectEventHandler,
  Int32,
} from 'react-native/Libraries/Types/CodegenTypes';

export interface NativeProps extends ViewProps {
  onDirectEventHandler?: DirectEventHandler<Readonly<{value: Int32}>>;
}

export default codegenNativeComponent<NativeProps>(
  'RTNTestListCell',
) as HostComponent<NativeProps>;
