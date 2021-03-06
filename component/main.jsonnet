// main template for traefik
local kap = import 'lib/kapitan.libjsonnet';
local kube = import 'lib/kube.libjsonnet';
local inv = kap.inventory();
// The hiera parameters for the component
local params = inv.parameters.traefik;

// Define outputs below
{
  namespace: kube.Namespace(params.namespace),
  extraYAMLs: params.extraYAMLs,
}
