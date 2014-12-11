import io.cayla.web { ok, Response, route, Handler }
import io.ceylon.herd.views.application { index, guidelines, usage }

shared object application {
  
  route("/")
  shared class Index() extends Handler() {
    shared actual Response handle() =>  ok { index(); };
  }  
  
  route("/guidelines")
  shared class Guidelines() extends Handler() {
    shared actual Response handle() => ok { guidelines(); };
  }
  
  route("/usage")
  shared class Usage() extends Handler() {
    shared actual Response handle() => ok { usage(); };
  }
}