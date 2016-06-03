<?php

$spec = [
    'BIOMART_USER' => [
        ['BIOMART',      '*TABLE',                    'READ', ''],
        ['BIOMART',      '*VIEW',                     'READ', ''],
        ['DEAPP',        '*TABLE',                    'READ', ''],
        ['DEAPP',        '*VIEW',                     'READ', ''],
        ['SEARCHAPP',    '*TABLE',                    'WRITE', ''],
        ['SEARCHAPP',    '*VIEW',                     'READ', ''],
        ['SEARCHAPP',    '*SEQUENCE',                 'READ', ''],
        ['FMAPP',        '*TABLE',                    'WRITE', ''],
        ['AMAPP',        '*TABLE',                    'WRITE', ''],
        ['DEAPP',        'DE_SAVED_COMPARISON',       'WRITE', ''],
        ['BIOMART',      'BIO_ASSAY_FEATURE_GROUP',   'WRITE', ''],
        ['BIOMART',      'BIO_MARKER',                'WRITE', ''],
        ['BIOMART',      'BIO_ASSAY_DATA_ANNOTATION', 'WRITE', ''],
        ['GALAXY',       '*TABLE',                    'WRITE', ''],
    ],
    'TM_CZ' => [
        ['BIOMART',      '*TABLE',             'FULL', ''],
        ['BIOMART',      '*VIEW',              'READ', ''],
        ['BIOMART',      'TEA_NPV_PRECOMPUTE', 'EXECUTE', ''], /* I2B2_LOAD_OMICSOFT_DATA */
        ['DEAPP',        '*TABLE',             'FULL', ''],
        ['DEAPP',        '*SEQUENCE',          'READ', ''],
        ['SEARCHAPP',    '*TABLE',             'FULL', ''],
        ['SEARCHAPP',    '*VIEW',              'READ', ''],
        ['TM_LZ',        '*TABLE',             'FULL', ''],
        ['TM_LZ',        '*VIEW',              'READ', ''],
        ['TM_WZ',        '*TABLE',             'FULL', ''],
        ['TM_WZ',        '*VIEW',              'READ', ''],
        ['FMAPP',        '*TABLE',             'FULL', ''],
        ['AMAPP',        '*TABLE',             'FULL', ''],
        ['GALAXY',       '*TABLE',             'FULL', ''],
    ],
    'SEARCHAPP' => [
        ['BIOMART', 'BIO_ASSAY_DATA_ANNOTATION', 'READ', 'GRANT_OPTION'],
        ['BIOMART', 'BIO_MARKER_CORREL_MV',      'READ', 'GRANT_OPTION']
    ],
    'BIOMART' => [
        ['DEAPP', 'DE_METABOLITE_SUPER_PATHWAYS', 'READ', 'GRANT_OPTION'],
        ['DEAPP', 'DE_METABOLITE_SUB_PATHWAYS',   'READ', 'GRANT_OPTION'],
        ['DEAPP', 'DE_METABOLITE_SUB_PWAY_METAB', 'READ', 'GRANT_OPTION'],
        ['DEAPP', 'DE_METABOLITE_ANNOTATION',     'READ', 'GRANT_OPTION'],
        ['DEAPP', 'DE_MRNA_ANNOTATION',           'READ', 'GRANT_OPTION'],
    ],
    'AMAPP' => [
        ['BIOMART', 'BIO_DATA_UID',       'READ', 'GRANT_OPTION'],
        ['BIOMART', 'BIO_CONCEPT_CODE',   'READ', 'GRANT_OPTION'],
        ['BIOMART', 'BIO_DISEASE',        'READ', 'GRANT_OPTION'],
        ['BIOMART', 'BIO_ASSAY_PLATFORM', 'READ', 'GRANT_OPTION'],
        ['BIOMART', 'BIO_COMPOUND',       'READ', 'GRANT_OPTION'],
        ['BIOMART', 'BIO_MARKER',         'READ', 'GRANT_OPTION'],
        ['BIOMART', 'BIO_OBSERVATION',    'READ', 'GRANT_OPTION'],
    ],
];

// vim: et ts=4:
