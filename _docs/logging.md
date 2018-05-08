---
title: Enabling Logging
---

There are several settings for enabling logging of various services used by Dart Code. For more information about setting these up and troubleshooting please see [](). Each of these settings takes a file path and the containing folder must have already been created.

* TOC
{:toc}

## Analysis Server Instrumentation Logging
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

## Analysis Server Logging
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

## Flutter Daemon Logging
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

## Flutter Run Logging
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

## Flutter Test Logging
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

## Observatory (Debugger) Logging
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

