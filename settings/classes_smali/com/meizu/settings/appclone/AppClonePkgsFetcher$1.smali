.class Lcom/meizu/settings/appclone/AppClonePkgsFetcher$1;
.super Lcom/meizu/settings/utils/VolleyRequestManager$VolleyListener;
.source "AppClonePkgsFetcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/appclone/AppClonePkgsFetcher;->startFetch(Ljava/util/List;Ljava/util/List;)V
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
.field final synthetic this$0:Lcom/meizu/settings/appclone/AppClonePkgsFetcher;


# direct methods
.method constructor <init>(Lcom/meizu/settings/appclone/AppClonePkgsFetcher;)V
    .registers 2

    .line 78
    iput-object p1, p0, Lcom/meizu/settings/appclone/AppClonePkgsFetcher$1;->this$0:Lcom/meizu/settings/appclone/AppClonePkgsFetcher;

    invoke-direct {p0}, Lcom/meizu/settings/utils/VolleyRequestManager$VolleyListener;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2

    .line 78
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/meizu/settings/appclone/AppClonePkgsFetcher$1;->onResponse(Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;)V
    .registers 4

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onResponse response = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppClonePkgsFetcher"

    invoke-static {v1, v0}, Lcom/meizu/settings/appclone/AppCloneUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    iget-object p0, p0, Lcom/meizu/settings/appclone/AppClonePkgsFetcher$1;->this$0:Lcom/meizu/settings/appclone/AppClonePkgsFetcher;

    invoke-static {p0, p1}, Lcom/meizu/settings/appclone/AppClonePkgsFetcher;->access$000(Lcom/meizu/settings/appclone/AppClonePkgsFetcher;Ljava/lang/String;)V

    return-void
.end method
