.class Lcom/meizu/settings/appclone/AppClonePkgsFetcher$2;
.super Lcom/meizu/settings/utils/VolleyRequestManager$VolleyErrorListener;
.source "AppClonePkgsFetcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/appclone/AppClonePkgsFetcher;->startFetch(Ljava/util/List;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/appclone/AppClonePkgsFetcher;


# direct methods
.method constructor <init>(Lcom/meizu/settings/appclone/AppClonePkgsFetcher;)V
    .registers 2

    .line 85
    iput-object p1, p0, Lcom/meizu/settings/appclone/AppClonePkgsFetcher$2;->this$0:Lcom/meizu/settings/appclone/AppClonePkgsFetcher;

    invoke-direct {p0}, Lcom/meizu/settings/utils/VolleyRequestManager$VolleyErrorListener;-><init>()V

    return-void
.end method


# virtual methods
.method protected onErrorResponse(Ljava/lang/String;)V
    .registers 3

    .line 87
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onErrorResponse error  "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AppClonePkgsFetcher"

    invoke-static {p1, p0}, Lcom/meizu/settings/appclone/AppCloneUtil;->logW(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
