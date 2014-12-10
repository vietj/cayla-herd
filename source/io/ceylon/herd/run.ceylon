import io.cayla.web { Application,
  Config, dev }

"Run the module `io.ceylon.herd`."
shared void run() => Application(`package io.ceylon.herd.controllers`, Config {
  runMode = dev;
}).run();
