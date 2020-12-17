.class Lcom/meizu/settings/applications/IntegrationAppPkgFetcher$2;
.super Lcom/meizu/settings/utils/VolleyRequestManager$VolleyErrorListener;
.source "IntegrationAppPkgFetcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/applications/IntegrationAppPkgFetcher;->startFetch(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/applications/IntegrationAppPkgFetcher;


# direct methods
.method constructor <init>(Lcom/meizu/settings/applications/IntegrationAppPkgFetcher;)V
    .registers 2

    .line 101
    iput-object p1, p0, Lcom/meizu/settings/applications/IntegrationAppPkgFetcher$2;->this$0:Lcom/meizu/settings/applications/IntegrationAppPkgFetcher;

    invoke-direct {p0}, Lcom/meizu/settings/utils/VolleyRequestManager$VolleyErrorListener;-><init>()V

    return-void
.end method


# virtual methods
.method protected onErrorResponse(Ljava/lang/String;)V
    .registers 3

    .line 103
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onErrorResponse error  "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "IntegrationAppPkgFetcher"

    const/4 v0, 0x0

    invoke-static {p1, v0, p0}, Lcom/meizu/settings/utils/LogUtils;->w(Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method
