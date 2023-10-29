# Service Wrapper for Factory Talk Optix Runtime.\

FT Optix does not support running as a service natively, however services is expected in Optix 1.4 ETA Q1 2024. Which is too late...


Uses the `winsw` project for service wrapping.
[https://github.com/winsw/winsw/](https://github.com/winsw/winsw/)


Helper batch files are provided to assist site staff in maintaining the service.

**Service must be stopped before pushing a new version**

Assumes the runtime file is located in the `\Runtime` directory.
E.G if this file is located at `C:\Optix` then the installation directory in Optix is `C:\Optix\Runtime`
