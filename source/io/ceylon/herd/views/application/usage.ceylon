import io.ceylon.herd.views { main }
import io.ceylon.herd.controllers { Asset }

shared String usage() => main {
  title = "Start using Ceylon Herd today";
 "<h1>Start using Ceylon Herd today</h1>
  
  <h3>Discover</h3>
  
  <p>
      You can <a href=\"${util.Util.viewRepoUrl('')}\"><i class=\"icon-folder-open\"></i> browse</a> the Ceylon Herd repo, or
      view the current <a href=\"@{Repo.index()}\"><i class=\"icon-list\"></i> module list</a>, and even
      <span class=\"action-tip\"><i class=\"icon-search\"></i> search</span>
      for a module, using the menu at the top of each page.
  </p>
  
  <h3>The Ceylon Herd repo URL</h3>
  
  <form class=\"form-horizontal\">
      <fieldset>
          <div class=\"input-prepend\">
              <span class=\"add-on\"
                  title=\"Copy this URL to use it as a module repo\"
                  ><i class=\"icon-bookmark\"></i></span
              ><input value=\"@@{Repo.viewFile('').insecure()}\" class=\"input-xxlarge\"
                  onfocus=\"this.select();\" onclick=\"this.select();\" onmouseup=\"return false;\"
                  title=\"Copy this URL to use it as a module repo\"
                  type=\"text\" readonly/>
          </div>
      </fieldset>
  </form>
  
  <h3>Access Ceylon Herd directly from your Ceylon tools</h3>
  <pre>$ <span class=\"xml-tag\">ceylon compile</span> <span class=\"xml-attr\">--rep</span> <span class=\"xml-val\">@@{Repo.viewFile('').insecure()}</span> <span class=\"xml-tag\">com.acme.module</span>
  $ <span class=\"xml-tag\">ceylon doc</span> <span class=\"xml-attr\">--rep</span> <span class=\"xml-val\">@@{Repo.viewFile('').insecure()}</span> <span class=\"xml-tag\">com.acme.module</span>
  $ <span class=\"xml-tag\">ceylon run</span> <span class=\"xml-attr\">--rep</span> <span class=\"xml-val\">@@{Repo.viewFile('').insecure()}</span> <span class=\"xml-tag\">com.acme.module/1.2</span></pre>";
};
