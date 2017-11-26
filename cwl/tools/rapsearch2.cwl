#!/usr/bin/env cwl-runner

cwlVersion: cwl:draft-3
class: CommandLineTool
baseCommand: rapsearch

# rapsearch -q query.fa -d nr -o output_file -z 4 -v 50

requirements:
- class: InlineJavascriptRequirement

hints:
  - class: DockerRequirement
    dockerPull: jorvis/gales-gce

inputs:
  - id: database_file
    type: File
    inputBinding:
      prefix: -d
      separate: true
      position: 1
  - id: query_file
    type: File
    inputBinding:
      position: 2
      prefix: -q
      separate: true
  - id: output_file_base
    type: string
    inputBinding:
      position: 3
      prefix: -o
      separate: true
  - id: thread_count
    type: int
    inputBinding:
      position: 4
      prefix: -z
      separate: true
  - id: one_line_desc_count
    type: int
    inputBinding:
      position: 5
      prefix: -v
      separate: true
outputs:
  - id: output_base
    type: File
    outputBinding:
      glob: $(inputs.output_file_base + '.m8')