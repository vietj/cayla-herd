import ceylon.html { ... }
import io.ceylon.herd.controllers { Asset,
  application }

shared String main(String title, String content) {
  value _response_encoding = "";
  return
   "<!DOCTYPE html>

    <html>
        <head>
            <title>``title``</title>
            <meta charset=\"${_response_encoding}\">
            <link rel=\"stylesheet\" media=\"screen\" href=\"``Asset("/bootstrap/css/bootstrap.css")``\">
            <link rel=\"stylesheet\" media=\"screen\" href=\"``Asset("/stylesheets/main.css")``\">
            <link rel=\"stylesheet\" media=\"screen\" href=\"``Asset("/stylesheets/ceylon.css")``\">
            #{get 'moreStyles' /}
            <link rel=\"shortcut icon\" type=\"image/vnd.microsoft.icon\" href=\"``Asset("/images/favicon.ico")``\">
            <script src=\"``Asset("/javascripts/jquery-1.7.1.min.js")``\" type=\"text/javascript\" charset=\"${_response_encoding}\"></script>
            <script src=\"``Asset("/bootstrap/js/bootstrap.min.js")``\" type=\"text/javascript\" charset=\"${_response_encoding}\"></script>
            <script src=\"``Asset("/javascripts/jstz.min.js")``\" type=\"text/javascript\" charset=\"${_response_encoding}\"></script>
            <script src=\"``Asset("/javascripts/rainbow.min.js")``\" type=\"text/javascript\" charset=\"${_response_encoding}\"></script>
            <script src=\"``Asset("/javascripts/ceylon.js")``\" type=\"text/javascript\" charset=\"${_response_encoding}\"></script>
            <script src=\"``Asset("/javascripts/main.js")``\" type=\"text/javascript\" charset=\"${_response_encoding}\"></script>
            <script type=\"text/javascript\">
    // save the user time zone in a cookie so the server can access it
    var timezone = jstz.determine_timezone();
    var name = timezone.name();
    document.cookie = \"user_tz=\"+name;
    
    function showHelp(){
    \tjQuery(\"#help\").show();
    }
    function hideHelp(){
        jQuery(\"#help\").hide();
    }
    function toggleHelp(){
        jQuery(\"#help\").toggle();
    }
    jQuery(function(){
    \t// plug in the behaviour of expendable items
        jQuery(\"[data-behaviour=expandable]\").each(function(i, elem){
            var $elem = jQuery(elem);
            $elem.click(function(){
                var shown = !$elem.hasClass(\"collapsed\");
                $elem.text(!shown ? \"Collapse\" : \"Expand\");
                $elem.siblings(\".expandable\").toggleClass(\"collapsed\");
                return false;
            });
        });
    });
            </script>
            #{get 'moreScripts' /}
            <link href=\"@{Feed.repo()}\" type=\"application/atom+xml\" rel=\"alternate\" title=\"Repository Atom Feed\" />
            <script type=\"text/javascript\">
    
      (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
      (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
      m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
      })(window,document,'script','//www.google-analytics.com/analytics.js','ga');
    
      ga('create', 'UA-24748553-2', 'auto');
      ga('send', 'pageview');
      
            </script>
        </head>
        <body>
            <div class=\"pre-footer\">" + /*
            #{if session.username != null && user && !user.isBCrypt}
                <div class=\"alert alert-error alert-change-password\">
                    We have changed the way we store passwords: you need to <a href=\"@{LoggedInUsers.passwordForm(user.userName)}\">change your password</a> soon or your password will be reset for you.
                </div>
            #{/if} */
     "      <div class=\"navbar navbar-inverse navbar-static-top\">
                <div class=\"navbar-inner\">
                    <div class=\"container\" id=\"menubar-container\">
                        <a class=\"brand\" href=\"``application.Index()``\"><img src=\"``Asset("/images/logo-top.png")``\"/> Ceylon Herd</a>
                        <ul class=\"nav\">" + /*
                            #{if session.username != null && user}
                                <li class=\"user\">
                                    #{if user.isAdmin}<i class=\"icon-star icon-white\" title=\"You are an administrator\"></i>#{/if}
                                    #{user user, img:true /}
                                </li>
                            #{/if} */
     "                      <li class=\"dropdown\">
                                <a href=\"#\" class=\"dropdown-toggle\" data-toggle=\"dropdown\">Modules<b class=\"caret\"></b></a>
                                <ul class=\"dropdown-menu\">
                                    <li><a href=\"@{Repo.categories()}\">By category</a></li>
                                    <li><a href=\"@{Repo.index()}\">By name</a>
                                    <li><a href=\"@{Repo.popular()}\">Most popular</a>
                                    <li><a href=\"@{Repo.downloaded()}\">Most downloaded</a>
                                    <li><a href=\"${util.Util.viewRepoUrl('')}\">Repository</a>
                                </ul>
                            </li>" + /*
                            #{if session.username != null && user}
                                <li class=\"dropdown\">
                                    <a href=\"#\" class=\"dropdown-toggle\" data-toggle=\"dropdown\">My stuff<b class=\"caret\"></b></a>
                                    <ul class=\"dropdown-menu\">
                                        <li><a href=\"@{Projects.index()}\">My project claims <span class=\"badge\">${user.projectsCached}</span></a>
                                        <li><a href=\"@{Uploads.index()}\">My uploads <span class=\"badge\">${user.uploadsCached}</span></a></li>
                                        <li><a href=\"@{LoggedInRepo.myModules(session.username)}\">My modules <span class=\"badge\">${user.modulesCached}</span></a></li>
                                    </ul>
                                </li>
                                #{if user.isAdmin}
                                    <li class=\"dropdown\">
                                        <a href=\"#\" class=\"dropdown-toggle\" data-toggle=\"dropdown\">Admin<b class=\"caret\"></b></a>
                                        <ul class=\"dropdown-menu\">
                                            <li><a href=\"@{Projects.pendingClaims()}\">Pending project claims <span class=\"badge\">${util.MyCache.getClaims()}</span></a></li>
                                            <li><a href=\"@{AdminCategories.index()}\">Categories</a></li>
                                            <li><a href=\"@{AdminUsers.index()}\">User List</a></li>
                                            <li><a href=\"@{Register.index()}\">Register new user</a>
                                        </ul>
                                    </li>
                                #{/if}
                            #{/if}
                            #{if session.username == null}
                                <li><a href=\"@{Register.index()}\">Register</a>
                                <li><a href=\"@{Secure.login()}\">Log in</a>
                            #{/if} */
     "                      <li class=\"dropdown\">
                                <a href=\"#\" class=\"dropdown-toggle\" data-toggle=\"dropdown\">Help<b class=\"caret\"></b></a>
                                <ul class=\"dropdown-menu\">
                                    <li><a href=\"``application.Usage()``\">Start using Ceylon Herd</a></li>
                                    <li><a href=\"@{Application.publish()}\">Publish your first module</a></li>
                                    <li><a href=\"``application.Guidelines()``\">Module publishing guidelines</a></li>" + /*
                                    #{if help}
                                        <li><a href=\"#\" onclick=\"showHelp(); return false;\">About this page</a></li>
                                    #{/if} */
    "                               <li><a href=\"http://ceylon-lang.org\">All about Ceylon</a></li>
                                </ul>
                            </li>
                            <li><a href=\"@{Feed.repo()}\" title=\"Subscribe to the repository feed\"><img src=\"``Asset("/images/feed.png")``\"/></a></li>" + /*
                            #{if session.username !=null && user}
                                <li><a href=\"@{Secure.logout()}\">Logout</a></li>
                            #{/if} */
    "                   </ul>
                        <ul class=\"nav pull-right\">
                            <form class=\"navbar-search\" action=\"@{Repo.search}\">
                                <input name=\"q\" type=\"text\" class=\"search-query\" placeholder=\"Search module\">
                            </form>
                            <li>
                                <a href=\"@{Repo.searchAdvanced}\"\" title=\"Advanced search\">
                                    <i class=\"icon-search icon-white\"></i>
                                </a>
                            </li>
                            <li id=\"keyboard-shortcuts-dropdown\" class=\"dropdown\">
                                <a href=\"#\" title='Show keyboard shortcuts [Shortcut: ?]' role='button' class=\"dropdown-toggle\" data-toggle=\"dropdown\"><i class=\"icon-info-sign icon-white\"></i></a>
                                <ul id=\"keyboard-shortcuts-panel\" class=\"dropdown-menu\">
                                    <h3>Keyboard Shortcuts</h3>
                                    <li class=\"divider\"/></li>
                                    <table>
                                        <tr class=\"key-s\">
                                            <td><span class=\"badge badge-info\">s</span></td>
                                            <td><span class=\"text-info\">Focus search module bar</span></td>
                                        </tr>
                                        <tr class=\"key-?\">
                                            <td><span class=\"badge badge-info\">?</span></td>
                                            <td><span class=\"text-info\">Open this information panel</span></td>
                                        </tr>
                                        <tr class=\"key-j\">
                                            <td><span class=\"badge\">j</span></td>
                                            <td><span class=\"muted\">Move selection down</span></td>
                                        </tr>
                                        <tr class=\"key-k\">
                                            <td><span class=\"badge\">k</span></td>
                                            <td><span class=\"muted\">Move selection up</span></td>
                                        </tr>
                                        <tr class=\"key-enter\">
                                            <td><span class=\"badge\">enter</span></td>
                                            <td><span class=\"muted\">Open current selection</span></td>
                                        </tr>
                                    </table>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class=\"container\">" + /*
                #{if flash.message || flash.message2}
                    <div class=\"alert alert-success\">
                        #{if flash.message}<li>${flash.message}</li>#{/if}
                        #{if flash.message2}<li>${flash.message2}</li>#{/if}
                    </div>
                #{/if}
                #{if flash.warning}
                    <div class=\"alert\">
                        ${flash.warning}
                    </div>
                #{/if}
                #{ifErrors}
                    #{if !hasForm}
                        <div class=\"alert alert-error\">
                            Please correct the following errors:
                            <ul>
                            #{list items:play.data.validation.Validation.errors(), as:'error'}
                                    <li>#{if error.key != 'null'}${error.key}#{/if} ${error.message}</li>
                            #{/list}
                            </ul>
                        </div>
                    #{/if}
                #{/ifErrors}
                #{if help}
                    <div id=\"help-button\"><a href=\"#\" onclick=\"toggleHelp(); return false;\">Help!</a></div>
                    <div class=\"alert alert-block alert-info\" id=\"help\">
                        <a href=\"#\" class=\"close\" title=\"Enough with helping, let´s DO THIS!\" onclick=\"hideHelp(); return false;\">×</a>
                        <h4 class=\"alert-heading\">Help!</h4>
                        #{get 'help'/}
                    </div>
                #{/if} */
   "            ``content``
            </div>
                <div class=\"push\"></div>
            </div>
            <footer>
                <hr/>
                Ceylon Herd v${play.configuration.getProperty(\"version\")} Copyright 2012-${new Date().format(\"yyyy\")} Red Hat.
                <a href=\"@{Application.about()}\">About</a>
            </footer>
        </body>
    </html>";
}