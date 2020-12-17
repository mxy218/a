.class Lcom/android/server/pm/UpdateAppsReceiver$GmsManager$1;
.super Ljava/lang/Thread;
.source "UpdateAppsReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/UpdateAppsReceiver$GmsManager;->uninstallGmsAsync()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 535
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 538
    invoke-static {}, Lcom/android/server/pm/UpdateAppsReceiver$GmsManager;->access$1500()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 539
    return-void

    .line 542
    :cond_7
    invoke-static {}, Lcom/android/server/pm/UpdateAppsReceiver$GmsManager;->access$1600()V

    .line 543
    return-void
.end method
