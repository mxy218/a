.class final Lcom/android/server/contentcapture/ContentCaptureManagerService$LocalService;
.super Lcom/android/server/contentcapture/ContentCaptureManagerInternal;
.source "ContentCaptureManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/contentcapture/ContentCaptureManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LocalService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/contentcapture/ContentCaptureManagerService;)V
    .registers 2

    .line 704
    iput-object p1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$LocalService;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-direct {p0}, Lcom/android/server/contentcapture/ContentCaptureManagerInternal;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/contentcapture/ContentCaptureManagerService;Lcom/android/server/contentcapture/ContentCaptureManagerService$1;)V
    .registers 3

    .line 704
    invoke-direct {p0, p1}, Lcom/android/server/contentcapture/ContentCaptureManagerService$LocalService;-><init>(Lcom/android/server/contentcapture/ContentCaptureManagerService;)V

    return-void
.end method


# virtual methods
.method public getOptionsForPackage(ILjava/lang/String;)Landroid/content/ContentCaptureOptions;
    .registers 4

    .line 731
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$LocalService;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    iget-object v0, v0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mGlobalContentCaptureOptions:Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;->getOptions(ILjava/lang/String;)Landroid/content/ContentCaptureOptions;

    move-result-object p1

    return-object p1
.end method

.method public isContentCaptureServiceForUser(II)Z
    .registers 5

    .line 708
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$LocalService;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-static {v0}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$2900(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 709
    :try_start_7
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$LocalService;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-static {v1, p2}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$3000(Lcom/android/server/contentcapture/ContentCaptureManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p2

    check-cast p2, Lcom/android/server/contentcapture/ContentCapturePerUserService;

    .line 710
    if-eqz p2, :cond_17

    .line 711
    invoke-virtual {p2, p1}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->isContentCaptureServiceForUserLocked(I)Z

    move-result p1

    monitor-exit v0

    return p1

    .line 713
    :cond_17
    monitor-exit v0

    .line 714
    const/4 p1, 0x0

    return p1

    .line 713
    :catchall_1a
    move-exception p1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_7 .. :try_end_1c} :catchall_1a

    throw p1
.end method

.method public notifyActivityEvent(ILandroid/content/ComponentName;I)V
    .registers 6

    .line 737
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$LocalService;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-static {v0}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$3300(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 738
    :try_start_7
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$LocalService;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-static {v1, p1}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$3400(Lcom/android/server/contentcapture/ContentCaptureManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p1

    check-cast p1, Lcom/android/server/contentcapture/ContentCapturePerUserService;

    .line 739
    if-eqz p1, :cond_14

    .line 740
    invoke-virtual {p1, p2, p3}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->onActivityEventLocked(Landroid/content/ComponentName;I)V

    .line 742
    :cond_14
    monitor-exit v0

    .line 743
    return-void

    .line 742
    :catchall_16
    move-exception p1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_16

    throw p1
.end method

.method public sendActivityAssistData(ILandroid/os/IBinder;Landroid/os/Bundle;)Z
    .registers 6

    .line 720
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$LocalService;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-static {v0}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$3100(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 721
    :try_start_7
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$LocalService;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-static {v1, p1}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$3200(Lcom/android/server/contentcapture/ContentCaptureManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p1

    check-cast p1, Lcom/android/server/contentcapture/ContentCapturePerUserService;

    .line 722
    if-eqz p1, :cond_17

    .line 723
    invoke-virtual {p1, p2, p3}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->sendActivityAssistDataLocked(Landroid/os/IBinder;Landroid/os/Bundle;)Z

    move-result p1

    monitor-exit v0

    return p1

    .line 725
    :cond_17
    monitor-exit v0

    .line 726
    const/4 p1, 0x0

    return p1

    .line 725
    :catchall_1a
    move-exception p1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_7 .. :try_end_1c} :catchall_1a

    throw p1
.end method
