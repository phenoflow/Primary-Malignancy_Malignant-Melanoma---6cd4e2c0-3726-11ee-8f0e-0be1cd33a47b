cwlVersion: v1.0
steps:
  read-potential-cases-fhir:
    run: read-potential-cases-fhir.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
  primary-malignancy_malignant-melanoma-mmalignant---primary:
    run: primary-malignancy_malignant-melanoma-mmalignant---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-fhir/output
  primary-malignancy_malignant-melanoma---primary:
    run: primary-malignancy_malignant-melanoma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: primary-malignancy_malignant-melanoma-mmalignant---primary/output
  primary-malignancy_malignant-melanoma-level---primary:
    run: primary-malignancy_malignant-melanoma-level---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: primary-malignancy_malignant-melanoma---primary/output
  canal-primary-malignancy_malignant-melanoma---primary:
    run: canal-primary-malignancy_malignant-melanoma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: primary-malignancy_malignant-melanoma-level---primary/output
  primary-malignancy_malignant-melanoma-surface---primary:
    run: primary-malignancy_malignant-melanoma-surface---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: canal-primary-malignancy_malignant-melanoma---primary/output
  primary-malignancy_malignant-melanoma-scalp---primary:
    run: primary-malignancy_malignant-melanoma-scalp---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: primary-malignancy_malignant-melanoma-surface---primary/output
  primary-malignancy_malignant-melanoma-trunk---primary:
    run: primary-malignancy_malignant-melanoma-trunk---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: primary-malignancy_malignant-melanoma-scalp---primary/output
  primary-malignancy_malignant-melanoma-shoulder---primary:
    run: primary-malignancy_malignant-melanoma-shoulder---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: primary-malignancy_malignant-melanoma-trunk---primary/output
  upper-primary-malignancy_malignant-melanoma---primary:
    run: upper-primary-malignancy_malignant-melanoma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: primary-malignancy_malignant-melanoma-shoulder---primary/output
  lower-primary-malignancy_malignant-melanoma---primary:
    run: lower-primary-malignancy_malignant-melanoma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: upper-primary-malignancy_malignant-melanoma---primary/output
  primary-malignancy_malignant-melanoma-unspecified---primary:
    run: primary-malignancy_malignant-melanoma-unspecified---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: lower-primary-malignancy_malignant-melanoma---primary/output
  primary-malignancy_malignant-melanoma-[m]melanocarcinoma---primary:
    run: primary-malignancy_malignant-melanoma-[m]melanocarcinoma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: primary-malignancy_malignant-melanoma-unspecified---primary/output
  primary-malignancy_malignant-melanoma-[m]melanoma---primary:
    run: primary-malignancy_malignant-melanoma-[m]melanoma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: primary-malignancy_malignant-melanoma-[m]melanocarcinoma---primary/output
  melanotic-primary-malignancy_malignant-melanoma---primary:
    run: melanotic-primary-malignancy_malignant-melanoma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: primary-malignancy_malignant-melanoma-[m]melanoma---primary/output
  primary-malignancy_malignant-melanoma-naevu---primary:
    run: primary-malignancy_malignant-melanoma-naevu---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: melanotic-primary-malignancy_malignant-melanoma---primary/output
  primary-malignancy_malignant-melanoma-freckle---primary:
    run: primary-malignancy_malignant-melanoma-freckle---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: primary-malignancy_malignant-melanoma-naevu---primary/output
  primary-malignancy_malignant-melanoma-mlentigo---primary:
    run: primary-malignancy_malignant-melanoma-mlentigo---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: primary-malignancy_malignant-melanoma-freckle---primary/output
  primary-malignancy_malignant-melanoma-mspindle---primary:
    run: primary-malignancy_malignant-melanoma-mspindle---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: primary-malignancy_malignant-melanoma-mlentigo---primary/output
  malignant-primary-malignancy_malignant-melanoma-skin-melanoma---secondary:
    run: malignant-primary-malignancy_malignant-melanoma-skin-melanoma---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: primary-malignancy_malignant-melanoma-mspindle---primary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: malignant-primary-malignancy_malignant-melanoma-skin-melanoma---secondary/output
class: Workflow
inputs:
  inputModule1:
    id: inputModule1
    doc: Js implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
  inputModule18:
    id: inputModule18
    doc: Python implementation unit
    type: File
  inputModule19:
    id: inputModule19
    doc: Python implementation unit
    type: File
  inputModule20:
    id: inputModule20
    doc: Python implementation unit
    type: File
  inputModule21:
    id: inputModule21
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
