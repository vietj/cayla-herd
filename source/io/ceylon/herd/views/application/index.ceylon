import io.ceylon.herd.views { main }
import io.ceylon.herd.controllers { Asset,
  application }

shared String index() => main {
  title = "Home to the Herd";
 "<div class=\"hero-unit\" style=\"min-height: 300px;\">
    <h1>Welcome to the Ceylon Herd</h1>
    <img class=\"pull-left\" src=\"``Asset("/images/herd-200.png")``\"/> 
    <p>The biggest elephantest Ceylon module repository of the world in the whole universe!</p>
    <p>Every Ceylon module is published here.</p>
    <p>
      <a href=\"``application.Usage()``\">Start using Ceylon Herd today</a>.
    </p>
    <p>
      Find out more about the <a href=\"http://ceylon-lang.org\">Ceylon programming language</a>.
    </p>
  </div>";
};
