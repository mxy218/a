.class Lcom/android/server/power/WirelessChargerDetector$2;
.super Ljava/lang/Object;
.source "WirelessChargerDetector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/WirelessChargerDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/WirelessChargerDetector;


# direct methods
.method constructor <init>(Lcom/android/server/power/WirelessChargerDetector;)V
    .registers 2
    .param p1, "this$0"  # Lcom/android/server/power/WirelessChargerDetector;

    .line 384
    iput-object p1, p0, Lcom/android/server/power/WirelessChargerDetector$2;->this$0:Lcom/android/server/power/WirelessChargerDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 387
    iget-object v0, p0, Lcom/android/server/power/WirelessChargerDetector$2;->this$0:Lcom/android/server/power/WirelessChargerDetector;

    invoke-static {v0}, Lcom/android/server/power/WirelessChargerDetector;->access$000(Lcom/android/server/power/WirelessChargerDetector;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 388
    :try_start_7
    iget-object v1, p0, Lcom/android/server/power/WirelessChargerDetector$2;->this$0:Lcom/android/server/power/WirelessChargerDetector;

    invoke-static {v1}, Lcom/android/server/power/WirelessChargerDetector;->access$200(Lcom/android/server/power/WirelessChargerDetector;)V

    .line 389
    monitor-exit v0

    .line 390
    return-void

    .line 389
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_e

    throw v1
.end method
