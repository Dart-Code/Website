1. Set `{{ include.setting }}` to a file path, for example `/Users/dantup/Desktop/{{ include.sampleFilename }}.txt`
{{ include.steps | strip }}
1. Take a copy of the log file
1. Review the log and **remove any sensitive data**
1. {% include email-logs-info.md %}
