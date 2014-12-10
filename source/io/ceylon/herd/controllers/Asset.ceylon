import io.cayla.web.asset { AssetHandler }
import io.cayla.web { route }

route("/assets/*path")
shared class Asset(shared String path) extends AssetHandler("public/``path``") {}