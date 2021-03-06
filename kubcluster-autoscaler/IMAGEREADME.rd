## this is image options for cluster image, i.e Command option in deployment.yam    
    
       --address string                                                     The address to expose prometheus metrics. (default ":8085")
      --alsologtostderr                                                    log to standard error as well as files
      --application-metrics-count-limit int                                Max number of application metrics to store (per container) (default 100)
      --azure-container-registry-config string                             Path to the file containing Azure container registry configuration information.
      --balance-similar-node-groups                                        Detect similar node groups and balance the number of nodes between them
      --boot-id-file string                                                Comma-separated list of files to check for boot-id. Use the first one that exists. (default "/proc/sys/kernel/random/boot_id")
      --cloud-config string                                                The path to the cloud provider configuration file.  Empty string for no configuration file.
      --cloud-provider string                                              Cloud provider type. Available values: [aws,azure,gce,gke,kubemark] (default "gce")
      --cloud-provider-gce-lb-src-cidrs cidrs                              CIDRs opened in GCE firewall for LB traffic proxy & health checks (default 130.211.0.0/22,209.85.152.0/22,209.85.204.0/22,35.191.0.0/16)
      --cluster-name string                                                Autoscaled cluster name, if available
      --configmap string                                                   The name of the ConfigMap containing settings used for dynamic reconfiguration. Empty string for no ConfigMap.
      --container-hints string                                             location of the container hints file (default "/etc/cadvisor/container_hints.json")
      --containerd string                                                  containerd endpoint (default "unix:///var/run/containerd.sock")
      --cores-total string                                                 Minimum and maximum number of cores in cluster, in the format <min>:<max>. Cluster autoscaler will not scale the cluster beyond these numbers. (default "0:320000")
      --docker string                                                      docker endpoint (default "unix:///var/run/docker.sock")
      --docker-env-metadata-whitelist string                               a comma-separated list of environment variable keys that needs to be collected for docker containers
      --docker-only                                                        Only report docker containers in addition to root stats
      --docker-root string                                                 DEPRECATED: docker root is read from docker info (this is a fallback, default: /var/lib/docker) (default "/var/lib/docker")
      --docker-tls                                                         use TLS to connect to docker
      --docker-tls-ca string                                               path to trusted CA (default "ca.pem")
      --docker-tls-cert string                                             path to client certificate (default "cert.pem")
      --docker-tls-key string                                              path to private key (default "key.pem")
      --enable-load-reader                                                 Whether to enable cpu load reader
      --estimator string                                                   Type of resource estimator to be used in scale up. Available values: [basic,binpacking] (default "binpacking")
      --event-storage-age-limit string                                     Max length of time for which to store events (per type). Value is a comma separated list of key values, where the keys are event types (e.g.: creation, oom) or "default" and the value is a duration. Default is applied to all non-specified event types (default "default=0")
      --event-storage-event-limit string                                   Max number of events to store (per type). Value is a comma separated list of key values, where the keys are event types (e.g.: creation, oom) or "default" and the value is an integer. Default is applied to all non-specified event types (default "default=0")
      --expander string                                                    Type of node group expander to be used in scale up. Available values: [random,most-pods,least-waste,price] (default "random")
      --expendable-pods-priority-cutoff int                                Pods with priority below cutoff will be expendable. They can be killed without any consideration during scale down and they don't cause scale up. Pods with null priority (PodPriority disabled) are non expendable.
      --gke-api-endpoint string                                            GKE API endpoint address. This flag is used by developers only. Users shouldn't change this flag.
      --global-housekeeping-interval duration                              Interval between global housekeepings (default 1m0s)
      --housekeeping-interval duration                                     Interval between container housekeepings (default 10s)
      --httptest.serve string                                              if non-empty, httptest.NewServer serves on this address and blocks
      --kubeconfig string                                                  Path to kubeconfig file with authorization and master location information.
      --kubernetes string                                                  Kubernetes master location. Leave blank for default
      --leader-elect                                                       Start a leader election client and gain leadership before executing the main loop. Enable this when running replicated components for high availability. (default true)
      --leader-elect-lease-duration duration                               The duration that non-leader candidates will wait after observing a leadership renewal until attempting to acquire leadership of a led but unrenewed leader slot. This is effectively the maximum duration that a leader can be stopped before it is replaced by another candidate. This is only applicable if leader election is enabled. (default 15s)
      --leader-elect-renew-deadline duration                               The interval between attempts by the acting master to renew a leadership slot before it stops leading. This must be less than or equal to the lease duration. This is only applicable if leader election is enabled. (default 10s)
      --leader-elect-resource-lock endpoints                               The type of resource object that is used for locking duringleader election. Supported options are endpoints (default) and `configmap`. (default "endpoints")
      --leader-elect-retry-period duration                                 The duration the clients should wait between attempting acquisition and renewal of a leadership. This is only applicable if leader election is enabled. (default 2s)
      --log-backtrace-at traceLocation                                     when logging hits line file:N, emit a stack trace (default :0)
      --log-cadvisor-usage                                                 Whether to log the usage of the cAdvisor container
      --log-dir string                                                     If non-empty, write log files in this directory
      --log-flush-frequency duration                                       Maximum number of seconds between log flushes (default 5s)
      --logtostderr                                                        log to standard error instead of files (default true)
      --machine-id-file string                                             Comma-separated list of files to check for machine-id. Use the first one that exists. (default "/etc/machine-id,/var/lib/dbus/machine-id")
      --max-autoprovisioned-node-group-count int                           The maximum number of autoprovisioned groups in the cluster. (default 15)
      --max-empty-bulk-delete int                                          Maximum number of empty nodes that can be deleted at the same time. (default 10)
      --max-failing-time duration                                          Maximum time from last recorded successful autoscaler run before automatic restart (default 15m0s)
      --max-graceful-termination-sec int                                   Maximum number of seconds CA waits for pod termination when trying to scale down a node. (default 600)
      --max-inactivity duration                                            Maximum time from last recorded autoscaler activity before automatic restart (default 10m0s)
      --max-node-provision-time duration                                   Maximum time CA waits for node to be provisioned (default 15m0s)
      --max-nodes-total int                                                Maximum number of nodes in all node groups. Cluster autoscaler will not grow the cluster beyond this number.
      --max-total-unready-percentage float                                 Maximum percentage of unready nodes in the cluster.  After this is exceeded, CA halts operations (default 45)
      --memory-total string                                                Minimum and maximum number of gigabytes of memory in cluster, in the format <min>:<max>. Cluster autoscaler will not scale the cluster beyond these numbers. (default "0:6400000")
      --min-replica-count int                                              Minimum number or replicas that a replica set or replication controller should have to allow their pods deletion in scale down
      --namespace string                                                   Namespace in which cluster-autoscaler run. If a --configmap flag is also provided, ensure that the configmap exists in this namespace before CA runs. (default "kube-system")
      --node-autoprovisioning-enabled                                      Should CA autoprovision node groups when needed
      --node-group-auto-discovery <name of discoverer>:[<key>[=<value>]]   One or more definition(s) of node group auto-discovery. A definition is expressed <name of discoverer>:[<key>[=<value>]]. The `aws` and `gce` cloud providers are currently supported. AWS matches by ASG tags, e.g. `asg:tag=tagKey,anotherTagKey`. GCE matches by IG name prefix, and requires you to specify min and max nodes per IG, e.g. `mig:namePrefix=pfx,min=0,max=10` Can be used multiple times. (default [])
      --nodes MultiStringFlag                                              sets min,max size and other configuration data for a node group in a format accepted by cloud provider.Can be used multiple times. Format: <min>:<max>:<other...> (default [])
      --ok-total-unready-count int                                         Number of allowed unready nodes, irrespective of max-total-unready-percentage (default 3)
      --regional                                                           Cluster is regional.
      --scale-down-candidates-pool-min-count int                           Minimum number of nodes that are considered as additional non empty candidatesfor scale down when some candidates from previous iteration are no longer valid.When calculating the pool size for additional candidates we takemax(#nodes * scale-down-candidates-pool-ratio, scale-down-candidates-pool-min-count). (default 50)
      --scale-down-candidates-pool-ratio float                             A ratio of nodes that are considered as additional non empty candidates forscale down when some candidates from previous iteration are no longer valid.Lower value means better CA responsiveness but possible slower scale down latency.Higher value can affect CA performance with big clusters (hundreds of nodes).Set to 1.0 to turn this heuristics off - CA will take all nodes as additional candidates. (default 0.1)
      --scale-down-delay-after-add duration                                How long after scale up that scale down evaluation resumes (default 10m0s)
      --scale-down-delay-after-delete duration                             How long after node deletion that scale down evaluation resumes, defaults to scanInterval (default 10s)
      --scale-down-delay-after-failure duration                            How long after scale down failure that scale down evaluation resumes (default 3m0s)
      --scale-down-enabled                                                 Should CA scale down the cluster (default true)
      --scale-down-non-empty-candidates-count int                          Maximum number of non empty nodes considered in one iteration as candidates for scale down with drain.Lower value means better CA responsiveness but possible slower scale down latency.Higher value can affect CA performance with big clusters (hundreds of nodes).Set to non posistive value to turn this heuristic off - CA will not limit the number of nodes it considers. (default 30)
      --scale-down-unneeded-time duration                                  How long a node should be unneeded before it is eligible for scale down (default 10m0s)
      --scale-down-unready-time duration                                   How long an unready node should be unneeded before it is eligible for scale down (default 20m0s)
      --scale-down-utilization-threshold float                             Node utilization level, defined as sum of requested resources divided by capacity, below which a node can be considered for scale down (default 0.5)
      --scan-interval duration                                             How often cluster is reevaluated for scale up or down (default 10s)
      --skip-nodes-with-local-storage                                      If true cluster autoscaler will never delete nodes with pods with local storage, e.g. EmptyDir or HostPath (default true)
      --skip-nodes-with-system-pods                                        If true cluster autoscaler will never delete nodes with pods from kube-system (except for DaemonSet or mirror pods) (default true)
      --stderrthreshold severity                                           logs at or above this threshold go to stderr (default 2)
      --storage-driver-buffer-duration duration                            Writes in the storage driver will be buffered for this duration, and committed to the non memory backends as a single transaction (default 1m0s)
      --storage-driver-db string                                           database name (default "cadvisor")
      --storage-driver-host string                                         database host:port (default "localhost:8086")
      --storage-driver-password string                                     database password (default "root")
      --storage-driver-secure                                              use secure connection with database
      --storage-driver-table string                                        table name (default "stats")
      --storage-driver-user string                                         database username (default "root")
      --test.bench regexp                                                  run only benchmarks matching regexp
      --test.benchmem                                                      print memory allocations for benchmarks
      --test.benchtime d                                                   run each benchmark for duration d (default 1s)
      --test.blockprofile file                                             write a goroutine blocking profile to file
      --test.blockprofilerate rate                                         set blocking profile rate (see runtime.SetBlockProfileRate) (default 1)
      --test.count n                                                       run tests and benchmarks n times (default 1)
      --test.coverprofile file                                             write a coverage profile to file
      --test.cpu list                                                      comma-separated list of cpu counts to run each test with
      --test.cpuprofile file                                               write a cpu profile to file
      --test.failfast                                                      do not start new tests after the first test failure
      --test.list regexp                                                   list tests, examples, and benchmarks matching regexp then exit
      --test.memprofile file                                               write a memory profile to file
      --test.memprofilerate rate                                           set memory profiling rate (see runtime.MemProfileRate)
      --test.mutexprofile string                                           write a mutex contention profile to the named file after execution
      --test.mutexprofilefraction int                                      if >= 0, calls runtime.SetMutexProfileFraction() (default 1)
      --test.outputdir dir                                                 write profiles to dir
      --test.parallel n                                                    run at most n tests in parallel (default 2)
      --test.run regexp                                                    run only tests and examples matching regexp
      --test.short                                                         run smaller test suite to save time
      --test.testlogfile file                                              write test action log to file (for use only by cmd/go)
      --test.timeout d                                                     panic test binary after duration d (default 0, timeout disabled) (default 0s)
      --test.trace file                                                    write an execution trace to file
      --test.v                                                             verbose: print additional output
  -v, --v Level                                                            log level for V logs
      --version version[=true]                                             Print version information and quit
      --vmodule moduleSpec                                                 comma-separated list of pattern=N settings for file-filtered logging
      --write-status-configmap                                             Should CA write status information to a configmap (default true)

