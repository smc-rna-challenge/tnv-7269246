baseCommand: [fusioncount]
class: CommandLineTool
cwlVersion: v1.0
doc: indexing transcript sequence
hints:
- {class: DockerRequirement, dockerPull: 'quay.io/smc-rna-challenge/tnv-7269246-rnadt-fusion:1.0.0'}
inputs:
- id: actionType
  inputBinding: {position: 1}
  type: string
- id: output_name
  inputBinding: {position: 3, prefix: -o}
  type: string
- id: txFasta
  inputBinding: {position: 2, prefix: -t}
  type: File
outputs:
- id: output
  outputBinding: {glob: $(inputs.output_name)}
  type: Directory
requirements:
- {class: InlineJavascriptRequirement}
- {class: ResourceRequirement, coresMin: 1, ramMin: 80000}
