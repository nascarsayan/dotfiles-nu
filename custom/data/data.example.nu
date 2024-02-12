let db_vcenters = [
  [VC_ENV, GOVC_URL, GOVC_USERNAME, GOVC_PASSWORD];
  ["vc80", "https://vcenter80.contoso.com/sdk", "user", "pass"]
  ["vc70", "https://vcenter70.contoso.com/sdk", "user", "pass"]
  ["vc67", "https://vcenter67.contoso.com/sdk", "user", "pass"]
  ["avs", "https://avs.contoso.com/sdk", "user", "pass"]
]

const default_tenant = "72f988bf-86f1-41af-91ab-2d7cd011db47"

let db_az_spns = [
  [n, tenant, user, password];
  [
    "default",
    $default_tenant, 
    "01234567-0123-0123-0123-0123456789ab",
    "We haven't yet uncovered the secrets of life"
  ]
  [
    "acr-prod",
    $default_tenant,
    "fedcba98-7654-3210-fedc-ba9876543210",
    "In exchange for better insurance contracts, we seem to have given up the search for secrets about longevity."
  ]
]

# 
let db_az_blobs = [
  [n, account-name, container-name, account-key];
  [
    "default",
    "contosodl",
    "scripts",
    "Why search for a new secret if you can comfortably collect rents on everything that has already been done?"
  ],
  [
    "vmw",
    "foobar",
    "dl",
    "There are two kinds of secrets: secrets of nature and secrets about people."
  ]
]