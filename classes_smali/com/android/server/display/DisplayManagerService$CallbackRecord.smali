.class final Lcom/android/server/display/DisplayManagerService$CallbackRecord;
.super Ljava/lang/Object;
.source "DisplayManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CallbackRecord"
.end annotation


# instance fields
.field private final mCallback:Landroid/hardware/display/IDisplayManagerCallback;

.field public final mPid:I

.field public mWifiDisplayScanRequested:Z

.field final synthetic this$0:Lcom/android/server/display/DisplayManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/display/DisplayManagerService;ILandroid/hardware/display/IDisplayManagerCallback;)V
    .registers 4

    .line 1695
    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1696
    iput p2, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mPid:I

    .line 1697
    iput-object p3, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mCallback:Landroid/hardware/display/IDisplayManagerCallback;

    .line 1698
    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 2

    .line 1705
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0, p0}, Lcom/android/server/display/DisplayManagerService;->access$1500(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/DisplayManagerService$CallbackRecord;)V

    .line 1706
    return-void
.end method

.method public notifyDisplayEventAsync(II)V
    .registers 4

    .line 1710
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mCallback:Landroid/hardware/display/IDisplayManagerCallback;

    invoke-interface {v0, p1, p2}, Landroid/hardware/display/IDisplayManagerCallback;->onDisplayEvent(II)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 1715
    goto :goto_27

    .line 1711
    :catch_6
    move-exception p1

    .line 1712
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to notify process "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mPid:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " that displays changed, assuming it died."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "DisplayManagerService"

    invoke-static {v0, p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1714
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->binderDied()V

    .line 1716
    :goto_27
    return-void
.end method
