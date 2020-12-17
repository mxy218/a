.class Lcom/meizu/settings/applications/IntegrationAppPkgFetcher$1;
.super Lcom/meizu/settings/utils/VolleyRequestManager$VolleyListener;
.source "IntegrationAppPkgFetcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/applications/IntegrationAppPkgFetcher;->startFetch(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/meizu/settings/utils/VolleyRequestManager$VolleyListener<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/applications/IntegrationAppPkgFetcher;


# direct methods
.method constructor <init>(Lcom/meizu/settings/applications/IntegrationAppPkgFetcher;)V
    .registers 2

    .line 94
    iput-object p1, p0, Lcom/meizu/settings/applications/IntegrationAppPkgFetcher$1;->this$0:Lcom/meizu/settings/applications/IntegrationAppPkgFetcher;

    invoke-direct {p0}, Lcom/meizu/settings/utils/VolleyRequestManager$VolleyListener;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2

    .line 94
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/meizu/settings/applications/IntegrationAppPkgFetcher$1;->onResponse(Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;)V
    .registers 5

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onResponse response = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IntegrationAppPkgFetcher"

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/meizu/settings/utils/LogUtils;->d(Ljava/lang/String;ZLjava/lang/String;)V

    .line 97
    iget-object p0, p0, Lcom/meizu/settings/applications/IntegrationAppPkgFetcher$1;->this$0:Lcom/meizu/settings/applications/IntegrationAppPkgFetcher;

    invoke-static {p0, p1}, Lcom/meizu/settings/applications/IntegrationAppPkgFetcher;->access$000(Lcom/meizu/settings/applications/IntegrationAppPkgFetcher;Ljava/lang/String;)V

    return-void
.end method
