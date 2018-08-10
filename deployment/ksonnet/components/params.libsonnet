{
  global: {
    // User-defined global parameters; accessible to all component and environments, Ex:
    // replicas: 4,
  },
  components: {
    // Component-level parameters, defined initially from 'ks prototype use ...'
    // Each object below should correspond to a component in the components/ directory
    "vottingapp-vote": {
      containerPort: 80,
      image: "dockersamples/examplevotingapp_vote:before",
      name: "vottingapp-vote",
      replicas: 1,
      servicePort: 80,
      type: "NodePort",
    },
    "vottingapp-result": {
      containerPort: 80,
      image: "dockersamples/examplevotingapp_result:before",
      name: "vottingapp-result",
      replicas: 1,
      servicePort: 80,
      type: "NodePort",
    },
  },
}
