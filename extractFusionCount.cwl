baseCommand: [fusioncount]
class: CommandLineTool
cwlVersion: v1.0
doc: 'rapmap: fusion count detection'
hints:
- {class: DockerRequirement, dockerPull: 'quay.io/smc-rna-challenge/tnv-7269246-rnadt-fusion:1.0.0'}
inputs:
- id: actionType
  inputBinding: {position: 1}
  type: string
- id: fastq1
  inputBinding: {position: 4, prefix: '-1'}
  type: File
- id: fastq2
  inputBinding: {position: 5, prefix: '-2'}
  type: File
- id: indexDir
  inputBinding: {position: 2, prefix: -i}
  type: Directory
- id: libtype
  inputBinding: {position: 3, prefix: -l}
  type: string
- id: output_name
  inputBinding: {position: 7, prefix: -o}
  type: string
- id: threads
  inputBinding: {position: 6, prefix: -p}
  type: ['null', int]
outputs:
- id: output
  outputBinding: {glob: $(inputs.output_name)}
  type: Directory
requirements:
- {class: InlineJavascriptRequirement}
- {class: ResourceRequirement, coresMin: 1, ramMin: 80000}
