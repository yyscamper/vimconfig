# FAQ

* YouCompleteMe problems in MacOS

Q: After installing YouCompleteMe, the following error message is always shown after opening the vim:
```
YouCompleteMe unavailable: dlopen(/usr/local/Cellar/python/2.7.11/Frameworks/Pyt
hon.framework/Versions/2.7/lib/python2.7/lib-dynload/_io.so, 2): Symbol not foun
d: __PyCodecInfo_GetIncrementalDecoder
Referenced from: /usr/local/Cellar/python/2.7.11/Frameworks/Python.framework/V
ersions/2.7/lib/python2.7/lib-dynload/_io.so
Expected in: flat namespace
in /usr/local/Cellar/python/2.7.11/Frameworks/Python.framework/Versions/2.7/lib
```

A:
Actually this is only happens for MacOS's default vim 7.4, if you brew install the latest 8.0 vim, this problem disappears.
For vim 7.4, I fixed it via "brew unlink python".
Please refer to https://github.com/Valloric/YouCompleteMe/issues/2218 for detail.
