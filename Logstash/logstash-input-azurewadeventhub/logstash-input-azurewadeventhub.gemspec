Gem::Specification.new do |s|
  s.name          = 'logstash-input-azurewadeventhub'
  s.version       = '0.9.4'
  s.licenses      = ['Apache License (2.0)']
  s.summary       = "This plugin will collect Microsoft Azure Diagnostics data from Azure Event Hubs."
  s.description   = "This gem is a logstash plugin required to be installed on top of the Logstash core pipeline using $LS_HOME/bin/plugin install gemname. This gem is not a stand-alone program."
  s.authors       = ["Microsoft Corporation"]
  s.email         = 'azdiag@microsoft.com'
  s.homepage      = "https://github.com/Azure/azure-diagnostics-tools"
  s.require_paths = ["lib"]

  # Files
  s.files = `git ls-files`.split($\)
  # Tests
  s.test_files = s.files.grep(%r{^(test|spec|features)/})

  # Special flag to let us know this is actually a logstash plugin
  s.metadata = { "logstash_plugin" => "true", "logstash_group" => "input" }

  # Gem dependencies
  s.add_runtime_dependency 'logstash-core', '>= 1.4.0'
  s.add_runtime_dependency 'azure', '~> 0.7.1'
  s.add_development_dependency 'logstash-devutils'
  
  #Jar dependencies
  s.requirements << "jar 'org.apache.qpid:qpid-amqp-1-0-common', '0.32'"
  s.requirements << "jar 'org.apache.qpid:qpid-amqp-1-0-client-jms', '0.32'"
  s.requirements << "jar 'org.apache.qpid:qpid-client', '0.32'"
  s.requirements << "jar 'org.apache.geronimo.specs:geronimo-jms_1.1_spec', '1.1.1'"
  s.add_runtime_dependency 'jar-dependencies'
end