.class Lcom/flyme/systemuitools/aod/utils/LogFileUtils$WorkerThread;
.super Landroid/os/HandlerThread;
.source "LogFileUtils.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemuitools/aod/utils/LogFileUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WorkerThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemuitools/aod/utils/LogFileUtils;


# direct methods
.method public constructor <init>(Lcom/flyme/systemuitools/aod/utils/LogFileUtils;Ljava/lang/String;)V
    .registers 3

    .line 131
    iput-object p1, p0, Lcom/flyme/systemuitools/aod/utils/LogFileUtils$WorkerThread;->this$0:Lcom/flyme/systemuitools/aod/utils/LogFileUtils;

    .line 132
    invoke-direct {p0, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 3

    .line 139
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_5

    goto :goto_10

    .line 141
    :cond_5
    iget-object p0, p0, Lcom/flyme/systemuitools/aod/utils/LogFileUtils$WorkerThread;->this$0:Lcom/flyme/systemuitools/aod/utils/LogFileUtils;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/flyme/systemuitools/aod/utils/LogFileUtils;->access$000(Lcom/flyme/systemuitools/aod/utils/LogFileUtils;Ljava/lang/String;)V

    :goto_10
    const/4 p0, 0x0

    return p0
.end method
