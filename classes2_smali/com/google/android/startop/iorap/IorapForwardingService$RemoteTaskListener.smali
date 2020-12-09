.class Lcom/google/android/startop/iorap/IorapForwardingService$RemoteTaskListener;
.super Lcom/google/android/startop/iorap/ITaskListener$Stub;
.source "IorapForwardingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/startop/iorap/IorapForwardingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RemoteTaskListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/startop/iorap/IorapForwardingService;


# direct methods
.method private constructor <init>(Lcom/google/android/startop/iorap/IorapForwardingService;)V
    .registers 2

    .line 339
    iput-object p1, p0, Lcom/google/android/startop/iorap/IorapForwardingService$RemoteTaskListener;->this$0:Lcom/google/android/startop/iorap/IorapForwardingService;

    invoke-direct {p0}, Lcom/google/android/startop/iorap/ITaskListener$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/startop/iorap/IorapForwardingService;Lcom/google/android/startop/iorap/IorapForwardingService$1;)V
    .registers 3

    .line 339
    invoke-direct {p0, p1}, Lcom/google/android/startop/iorap/IorapForwardingService$RemoteTaskListener;-><init>(Lcom/google/android/startop/iorap/IorapForwardingService;)V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/google/android/startop/iorap/RequestId;Lcom/google/android/startop/iorap/TaskResult;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 352
    sget-boolean v0, Lcom/google/android/startop/iorap/IorapForwardingService;->DEBUG:Z

    if-eqz v0, :cond_18

    .line 353
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    .line 354
    const-string p1, "RemoteTaskListener#onComplete(%s, %s)"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 353
    const-string p2, "IorapForwardingService"

    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    :cond_18
    return-void
.end method

.method public onProgress(Lcom/google/android/startop/iorap/RequestId;Lcom/google/android/startop/iorap/TaskResult;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 342
    sget-boolean v0, Lcom/google/android/startop/iorap/IorapForwardingService;->DEBUG:Z

    if-eqz v0, :cond_18

    .line 343
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    .line 344
    const-string p1, "RemoteTaskListener#onProgress(%s, %s)"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 343
    const-string p2, "IorapForwardingService"

    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    :cond_18
    return-void
.end method
