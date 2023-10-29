# Service Wrapper for Factory Talk Optix Runtime

FT Optix does not support running as a service natively, however services is expected in Optix 1.4 ETA Q1 2024. Which is too late for our needs...

Uses the `winsw` project for service wrapping.
[https://github.com/winsw/winsw/](https://github.com/winsw/winsw/)


### Configuration:
The `\OptixServiceInstaller.xml` configuration file definies the service name. edit the `<name>` tag to match the project required.

Helper batch files are provided to assist site staff in maintaining the service.

**Service must be stopped before pushing a new version**

Assumes the runtime file is located in the `\Runtime` directory.
E.G if this file is located at `C:\Optix` then the installation directory in Optix is `C:\Optix\Runtime`

### Development Set-up.

There is issues with a graceful stop of the service, and windows service manager detects a failure and will attempt to restart. This is great in production because you can't kill the service. When in development not so much.

comment out the `<onfailure action="restart" />` line to disable the automatic restart.

Also setting the service to manual is handy for development.

If in production run as restart on failure, and automatic start.

