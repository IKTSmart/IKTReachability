


## IKTReachability
@(iOS)[网络|网络监测]

> 监测网络框架

1、初始化监测网络

2、监听网络变化


### 初始化监听
``` objectivec
_internetReachability = [IKTReachability reachabilityForInternetConnection];
[[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(reachabilityChanged:) name:IKTReachabilityChangedNotification object:nil];
[_internetReachability startNotifier];
```

### 监听回调
``` objectivec
- (void)reachabilityChanged:(NSNotification *)note{
IKTReachability* curReach = [note object];
NSParameterAssert([curReach isKindOfClass:[IKTReachability class]]);

NSLog(@"state:%@",[curReach currentReachabilityStatusString]);
/*
* Do something
*/
}
```

### cocoapods下载
``` 
target 'DemoName' do

pod 'IKTReachability'

end

```


## 反馈与建议
- QQ交流群：314846081

