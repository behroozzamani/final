@rem
@rem Copyright 2015 the original author or authors.
@rem
@rem Licensed under the Apache License, Version 2.0 (the "License");
@rem you may not use this file except in compliance with the License.
@rem You may obtain a copy of the License at
@rem
@rem      https://www.apache.org/licenses/LICENSE-2.0
@rem
@rem Unless required by applicable law or agreed to in writing, software
@rem distributed under the License is distributed on an "AS IS" BASIS,
@rem WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
@rem See the License for the specific language governing permissions and
@rem limitations under the License.
@rem

@if "%DEBUG%" == "" @echo off
@rem ##########################################################################
@rem
@rem  final startup script for Windows
@rem
@rem ##########################################################################

@rem Set local scope for the variables with windows NT shell
if "%OS%"=="Windows_NT" setlocal

set DIRNAME=%~dp0
if "%DIRNAME%" == "" set DIRNAME=.
set APP_BASE_NAME=%~n0
set APP_HOME=%DIRNAME%..

@rem Resolve any "." and ".." in APP_HOME to make it shorter.
for %%i in ("%APP_HOME%") do set APP_HOME=%%~fi

@rem Add default JVM options here. You can also use JAVA_OPTS and FINAL_OPTS to pass JVM options to this script.
set DEFAULT_JVM_OPTS=

@rem Find java.exe
if defined JAVA_HOME goto findJavaFromJavaHome

set JAVA_EXE=java.exe
%JAVA_EXE% -version >NUL 2>&1
if "%ERRORLEVEL%" == "0" goto execute

echo.
echo ERROR: JAVA_HOME is not set and no 'java' command could be found in your PATH.
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:findJavaFromJavaHome
set JAVA_HOME=%JAVA_HOME:"=%
set JAVA_EXE=%JAVA_HOME%/bin/java.exe

if exist "%JAVA_EXE%" goto execute

echo.
echo ERROR: JAVA_HOME is set to an invalid directory: %JAVA_HOME%
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:execute
@rem Setup the command line

set CLASSPATH=%APP_HOME%\lib\final-1.0-SNAPSHOT.jar;%APP_HOME%\lib\EE-IO-main-SNAPSHOT.jar;%APP_HOME%\lib\EE-Visualization-master-SNAPSHOT.jar;%APP_HOME%\lib\EE-Control-master-SNAPSHOT.jar;%APP_HOME%\lib\SC-Core-main-SNAPSHOT.jar;%APP_HOME%\lib\EE-Docker-master-SNAPSHOT.jar;%APP_HOME%\lib\EE-Enactables-master-SNAPSHOT.jar;%APP_HOME%\lib\EE-Guice-main-SNAPSHOT.jar;%APP_HOME%\lib\EE-Model-main-SNAPSHOT.jar;%APP_HOME%\lib\EE-Core-master-SNAPSHOT.jar;%APP_HOME%\lib\opendse-master-SNAPSHOT.jar;%APP_HOME%\lib\build-master-SNAPSHOT.jar;%APP_HOME%\lib\opendse-encoding-master-SNAPSHOT.jar;%APP_HOME%\lib\opendse-tutorial-master-SNAPSHOT.jar;%APP_HOME%\lib\opendse-optimization-master-SNAPSHOT.jar;%APP_HOME%\lib\opendse-realtime-master-SNAPSHOT.jar;%APP_HOME%\lib\opendse-visualization-master-SNAPSHOT.jar;%APP_HOME%\lib\opt4j-master-SNAPSHOT.jar;%APP_HOME%\lib\gson-2.8.6.jar;%APP_HOME%\lib\vertx-web-4.1.1.jar;%APP_HOME%\lib\vertx-web-client-4.1.1.jar;%APP_HOME%\lib\vertx-web-common-4.1.1.jar;%APP_HOME%\lib\vertx-auth-common-4.1.1.jar;%APP_HOME%\lib\vertx-bridge-common-4.1.1.jar;%APP_HOME%\lib\vertx-core-4.1.1.jar;%APP_HOME%\lib\AFCLCore-AFCLv1.1-master-SNAPSHOT.jar;%APP_HOME%\lib\logback-classic-1.2.3.jar;%APP_HOME%\lib\opt4j-benchmarks-master-SNAPSHOT.jar;%APP_HOME%\lib\opt4j-tutorial-master-SNAPSHOT.jar;%APP_HOME%\lib\opt4j-optimizers-master-SNAPSHOT.jar;%APP_HOME%\lib\opt4j-operators-master-SNAPSHOT.jar;%APP_HOME%\lib\opt4j-satdecoding-master-SNAPSHOT.jar;%APP_HOME%\lib\opt4j-viewer-master-SNAPSHOT.jar;%APP_HOME%\lib\opt4j-core-master-SNAPSHOT.jar;%APP_HOME%\lib\guice-5.0.1.jar;%APP_HOME%\lib\docker-java-transport-httpclient5-3.2.11.jar;%APP_HOME%\lib\docker-java-core-3.2.13.jar;%APP_HOME%\lib\netty-handler-proxy-4.1.65.Final.jar;%APP_HOME%\lib\netty-codec-http2-4.1.65.Final.jar;%APP_HOME%\lib\netty-codec-http-4.1.65.Final.jar;%APP_HOME%\lib\netty-resolver-dns-4.1.65.Final.jar;%APP_HOME%\lib\netty-handler-4.1.65.Final.jar;%APP_HOME%\lib\netty-codec-socks-4.1.65.Final.jar;%APP_HOME%\lib\netty-codec-dns-4.1.65.Final.jar;%APP_HOME%\lib\netty-codec-4.1.65.Final.jar;%APP_HOME%\lib\netty-transport-4.1.65.Final.jar;%APP_HOME%\lib\netty-buffer-4.1.65.Final.jar;%APP_HOME%\lib\netty-resolver-4.1.65.Final.jar;%APP_HOME%\lib\netty-common-4.1.65.Final.jar;%APP_HOME%\lib\jackson-dataformat-yaml-2.9.8.jar;%APP_HOME%\lib\jackson-module-jsonSchema-2.9.8.jar;%APP_HOME%\lib\json-schema-validator-2.2.6.jar;%APP_HOME%\lib\json-schema-core-1.2.5.jar;%APP_HOME%\lib\jackson-coreutils-1.8.jar;%APP_HOME%\lib\jackson-databind-2.10.3.jar;%APP_HOME%\lib\jackson-core-2.11.4.jar;%APP_HOME%\lib\Library-master-SNAPSHOT.jar;%APP_HOME%\lib\opendse-generator-master-SNAPSHOT.jar;%APP_HOME%\lib\opendse-io-master-SNAPSHOT.jar;%APP_HOME%\lib\opendse-model-master-SNAPSHOT.jar;%APP_HOME%\lib\snakeyaml-1.23.jar;%APP_HOME%\lib\docker-java-api-3.2.13.jar;%APP_HOME%\lib\jackson-annotations-2.10.3.jar;%APP_HOME%\lib\commons-io-2.6.jar;%APP_HOME%\lib\logback-core-1.2.3.jar;%APP_HOME%\lib\httpclient5-5.0.3.jar;%APP_HOME%\lib\slf4j-api-1.7.30.jar;%APP_HOME%\lib\javax.inject-1.jar;%APP_HOME%\lib\aopalliance-1.0.jar;%APP_HOME%\lib\jung-graph-impl-2.1.1.jar;%APP_HOME%\lib\jung-visualization-2.1.1.jar;%APP_HOME%\lib\jung-algorithms-2.1.1.jar;%APP_HOME%\lib\jung-api-2.1.1.jar;%APP_HOME%\lib\uri-template-0.9.jar;%APP_HOME%\lib\guava-30.1-jre.jar;%APP_HOME%\lib\docker-java-transport-3.2.13.jar;%APP_HOME%\lib\jna-5.8.0.jar;%APP_HOME%\lib\commons-compress-1.21.jar;%APP_HOME%\lib\commons-lang3-3.12.0.jar;%APP_HOME%\lib\bcpkix-jdk15on-1.64.jar;%APP_HOME%\lib\org.ow2.sat4j.pb-2.3.5.jar;%APP_HOME%\lib\org.ow2.sat4j.core-2.3.5.jar;%APP_HOME%\lib\org.ow2.sat4j.core-2.3.5-tests.jar;%APP_HOME%\lib\xom-1.2.10.jar;%APP_HOME%\lib\commons-collections4-4.4.jar;%APP_HOME%\lib\jmpi-solver-gurobi-0.6.jar;%APP_HOME%\lib\jmpi-main-0.6.jar;%APP_HOME%\lib\glazedlists_java15-1.9.1.jar;%APP_HOME%\lib\validation-api-1.1.0.Final.jar;%APP_HOME%\lib\msg-simple-1.1.jar;%APP_HOME%\lib\btf-1.2.jar;%APP_HOME%\lib\jsr305-3.0.2.jar;%APP_HOME%\lib\joda-time-2.3.jar;%APP_HOME%\lib\libphonenumber-6.2.jar;%APP_HOME%\lib\mailapi-1.4.3.jar;%APP_HOME%\lib\jopt-simple-4.6.jar;%APP_HOME%\lib\failureaccess-1.0.1.jar;%APP_HOME%\lib\listenablefuture-9999.0-empty-to-avoid-conflict-with-guava.jar;%APP_HOME%\lib\checker-qual-3.5.0.jar;%APP_HOME%\lib\error_prone_annotations-2.3.4.jar;%APP_HOME%\lib\j2objc-annotations-1.3.jar;%APP_HOME%\lib\httpcore5-5.0.2.jar;%APP_HOME%\lib\commons-codec-1.13.jar;%APP_HOME%\lib\bcprov-jdk15on-1.64.jar;%APP_HOME%\lib\xercesImpl-2.8.0.jar;%APP_HOME%\lib\xalan-2.7.0.jar;%APP_HOME%\lib\rhino-1.7R4.jar;%APP_HOME%\lib\activation-1.1.jar


@rem Execute final
"%JAVA_EXE%" %DEFAULT_JVM_OPTS% %JAVA_OPTS% %FINAL_OPTS%  -classpath "%CLASSPATH%" at.uibk.dps.ee.guice.starter.EeConfiguration %*

:end
@rem End local scope for the variables with windows NT shell
if "%ERRORLEVEL%"=="0" goto mainEnd

:fail
rem Set variable FINAL_EXIT_CONSOLE if you need the _script_ return code instead of
rem the _cmd.exe /c_ return code!
if  not "" == "%FINAL_EXIT_CONSOLE%" exit 1
exit /b 1

:mainEnd
if "%OS%"=="Windows_NT" endlocal

:omega
