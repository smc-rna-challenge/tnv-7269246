baseCommand: [Rscript]
class: CommandLineTool
cwlVersion: v1.0
doc: detect fusion genes
hints:
- {class: DockerRequirement, dockerPull: 'quay.io/smc-rna-challenge/tnv-7269246-rnadt-fusion:1.0.0'}
inputs:
- id: RscriptFile
  inputBinding: {position: 1}
  type: string
- id: fusionCountDir
  inputBinding: {position: 2}
  type: Directory
- id: gtfSqlite
  inputBinding: {position: 3}
  type: File
- id: output_name
  inputBinding: {position: 4}
  type: string
outputs:
- id: fusionout
  outputBinding: {glob: $(inputs.output_name)}
  type: File
requirements:
- {class: InlineJavascriptRequirement}
- {class: ResourceRequirement, coresMin: 1, ramMin: 80000}
