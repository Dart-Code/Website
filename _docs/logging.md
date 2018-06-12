---
title: Enabling Logging
---

The simplest way to capture logs is using the `Dart: Capture Logs` command, however there are also user settings to allow capturing detailed logs for an individual component over a longer period.

* TOC
{:toc}

## Capture Logs Command

When you're ready to reproduce your issue, run the `Dart: Capture Logs` in the command palette.

<img src="/images/capture_logs_command.png" width="700" height="100" />

You'll be prompted to select a location/filename for the log file and then a notification will appear informing you that logs are being captured.

<img src="/images/capture_logs_notification.png" width="550" height="180" />

When you click `Stop Logging` the resulting log file will be opened in the editor for you to review before you attach to a GitHub issue. Please review the logs for any sensitive data (it may include parts of your files) before sharing. This log file will currently include all types of logging (Analysis Server, Observatory, Flutter Run, Flutter Test, Flutter Daemon) so you should start it as close to reproducing your issue as possible. The option to select which log sources to capture may be added in a future update.

## Individual Logs

### Analysis Server Instrumentation Logging
{:#analyzer-instrumentation}

The [`dart.analyzerInstrumentationLogFile` setting](/docs/settings/#dartanalyzerinstrumentationlogfile) enables very detailed logging in the analysis server that may be useful when trying to diagnose analysis server issues.

To capture an analysis server instrumentation log file please do the following:

{% capture steps %}
1. Reproduce the issue
{% endcapture %}
{% include debug-info.md
	setting="dart.analyzerInstrumentationLogFile"
	sampleFilename="analyzerInstrumentation"
	steps=steps
%}

### Analysis Server Logging
{:#analyzer}

The [`dart.analyzerLogFile` setting](/docs/settings/#dartanalyzerlogfile) enables logging of communication between Dart Code and the analysis server. Messages are truncated after a few thousand characters but this is useful to when trying to understand how Dart Code is interacting with the analysis server.

To capture an analysis server log file please do the following:

{% capture steps %}
1. Reproduce the issue
{% endcapture %}
{% include debug-info.md
	setting="dart.analyzerLogFile"
	sampleFilename="analyzer"
	steps=steps
%}

### Flutter Daemon Logging
{:#flutter-daemon}

The [`dart.flutterDaemonLogFile` setting](/docs/settings/#dartflutterdaemonlogfile) enables logging of the `flutter daemon` communication which is the service that provides information about connected devices that is used in the status bar.

To capture a `flutter daemon` log file please do the following:

{% capture steps %}
1. Reproduce the issue
{% endcapture %}
{% include debug-info.md
	setting="dart.flutterDaemonLogFile"
	sampleFilename="flutterDaemon"
	steps=steps
%}

### Flutter Run Logging
{:#flutter-run}

The [`dart.flutterRunLogFile` setting](/docs/settings/#dartflutterrunlogfile) enables logging of `flutter run` which is used to launch Flutter applications from VS Code. This is useful when trying to diagnose issues with applications launching (or failing to) on simulators and devices.

To capture a `flutter run` log file please do the following:

{% capture steps %}
1. Press `F5` to run/debug the application
1. Reproduce the issue
{% endcapture %}
{% include debug-info.md
	setting="dart.flutterRunLogFile"
	sampleFilename="flutterRun"
	steps=steps
%}

### Flutter Test Logging
{:#flutter-test}

The [`dart.flutterTestLogFile` setting](/docs/settings/#dartfluttertestlogfile) enables logging of `flutter test` which is used to run unit tests from VS Code. This is useful when trying to diagnose issues with unit test executions.

To capture a `flutter test` log file please do the following:

{% capture steps %}
1. Open the file containing your tests
1. Press `F5` to run/debug the tests
1. Wait for the run to complete
{% endcapture %}
{% include debug-info.md
	setting="dart.flutterTestLogFile"
	sampleFilename="flutterTest"
	steps=steps
%}

### Observatory (Debugger) Logging
{:#observatory}

The [`dart.observatoryLogFile` setting](/docs/settings/#dartobservatorylogfile) enables logging of communication between Dart Code and Observatory (the VM debugger). This is useful when trying to diagnose issues with debugging such as missed breakpoints.

To capture an observatory log file please do the following:

{% capture steps %}
1. Press `F5` to start debugging and reproduce your issue (for example, run the code that misses the breakpoint)
1. Stop debugging
{% endcapture %}
{% include debug-info.md
	setting="dart.observatoryLogFile"
	sampleFilename="observatory"
	steps=steps
%}

