import io.ceylon.herd.views { main }
import io.ceylon.herd.controllers { Asset }

shared String guidelines() => main {
  title = "Module publishing guidelines";
 "<h1>Module publishing guidelines</h1>
  <p>
      There are a few general guidelines for publishing <a href=\"http://ceylon-lang.org/documentation/1.0/reference/structure/module/\">modules</a> on Herd:
  </p>
  <ul>
      <li>You must be allowed to publish that module. If the module license does not grant you authorisation to publish it, you should not.</li>
      <li>The module should not contain malicious code, such as worms, viruses or trojans.</li>
      <li>We only accept modules published under an <a href=\"http://opensource.org/licenses\">open-source</a>
          or <a href=\"http://www.fsf.org/licensing/\">free software</a> license.
          (You may of course host your own module repository to publish proprietary modules.)</li>
      <li>We also encourage you to upload source code and API documentation for your module.</li>
  </ul>
  
  <h2>Module naming guidelines</h2>
  <p>
      For Ceylon module, we require that you follow the following guidelines for your module name, which are based on the 
      <a href=\"http://www.oracle.com/technetwork/java/javase/documentation/codeconventions-135099.html#367\">Java naming conventions</a> 
      and the <a href=\"http://maven.apache.org/guides/mini/guide-naming-conventions.html\">Maven naming conventions</a>.
  </p>
  <p>
      A Ceylon module name must:
  </p>
  <ul>
      <li>Be lower-case ASCII.</li>
      <li>Start with a toplevel Internet domain name that you own, which means have at least two parts,</li>
      <li>alternatively, start with the reserved \"herd\" toplevel if you do not own any Internet domain,</li>
      <li>alternatively, start with the reserved \"ceylon\" toplevel if you have explicit permission from the Ceylon team.</li>
  </ul>
  
  <div class=\"alert alert-info\">
    <i class=\"icon-info-sign\"></i> If you do not own any Internet domain name, you can use the <code>herd</code> prefix.
  </div>
  
  <h3>Examples</h3>
  <ul>
      <li><span class=\"label label-important\"><i class=\"icon-remove\"></i> myapplication</span>: Invalid because <code>myapplication</code> is not a valid Internet domain name.</li>
      <li><span class=\"label label-success\"><i class=\"icon-ok\"></i> org.myapplication</span>: valid, if you own the <code>myapplication.org</code> Internet domain name.</li>
      <li><span class=\"label label-success\"><i class=\"icon-ok\"></i> herd.myapplication</span>: valid, if you do not own the <code>myapplication.org</code> Internet domain name.</li>
      <li><span class=\"label label-warning\"><i class=\"icon-ok\"></i> ceylon.myapplication</span>: valid, if you get explicit permission from the Ceylon team.</li>
  </ul>
  
  <h2>Importing Maven modules in Herd</h2>
  
  <p>
      Herd allows you to resolve your Ceylon module dependencies directly from Maven central, without the need for publishing
      them to Herd. Users of your module will have to 
      <a href=\"http://ceylon-lang.org/documentation/1.0/reference/repository/#legacy_repositories\">use the Maven central repository explicitly</a>.
  </p>
  <p>
      For the Ceylon SDK, we encourage you to add any Maven dependencies to Herd to make it easier to use for SDK users, therefore
      we have special guidelines for Maven modules you wish to import in Herd:
  </p>
  <ul>
      <li>The general module naming guidelines apply, except that the <code>-</code> sign is allowed in the module name if it is present in the original Maven module name.</li>
      <li>The module name should consist of the Maven <code>groupId</code> and <code>artifactId</code> separated with a <code>.</code> (dot).</li>
      <li>You should describe the Maven module dependencies in a 
          <a href=\"http://ceylon-lang.org/documentation/1.0/reference/structure/module/#legacy_modules\">legacy module descriptor file</a>.
          We do not support <code>pom.xml</code> descriptors in Herd module imports.</li>
  </ul>";
};
