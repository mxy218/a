.class final Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;
.super Landroid/view/contentcapture/IContentCaptureManager$Stub;
.source "ContentCaptureManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/contentcapture/ContentCaptureManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ContentCaptureManagerServiceStub"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/contentcapture/ContentCaptureManagerService;)V
    .registers 2
    .param p1, "this$0"  # Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 542
    iput-object p1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-direct {p0}, Landroid/view/contentcapture/IContentCaptureManager$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 13
    .param p1, "fd"  # Ljava/io/FileDescriptor;
    .param p2, "pw"  # Ljava/io/PrintWriter;
    .param p3, "args"  # [Ljava/lang/String;

    .line 662
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-virtual {v0}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-static {v1}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$2400(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_13

    return-void

    .line 664
    :cond_13
    const/4 v0, 0x1

    .line 665
    .local v0, "showHistory":Z
    if-eqz p3, :cond_6d

    .line 666
    array-length v1, p3

    const/4 v2, 0x0

    move v3, v0

    move v0, v2

    .end local v0  # "showHistory":Z
    .local v3, "showHistory":Z
    :goto_1a
    if-ge v0, v1, :cond_6c

    aget-object v4, p3, v0

    .line 667
    .local v4, "arg":Ljava/lang/String;
    const/4 v5, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6

    const v7, 0x417d0228

    const/4 v8, 0x1

    if-eq v6, v7, :cond_39

    const v7, 0x4f7504e1

    if-eq v6, v7, :cond_2f

    :cond_2e
    goto :goto_42

    :cond_2f
    const-string v6, "--help"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2e

    move v5, v8

    goto :goto_42

    :cond_39
    const-string v6, "--no-history"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2e

    move v5, v2

    :goto_42
    if-eqz v5, :cond_67

    if-eq v5, v8, :cond_61

    .line 675
    iget-object v5, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-static {v5}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$2500(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Ignoring invalid dump arg: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_69

    .line 672
    :cond_61
    const-string v0, "Usage: dumpsys content_capture [--no-history]"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 673
    return-void

    .line 669
    :cond_67
    const/4 v3, 0x0

    .line 670
    nop

    .line 666
    .end local v4  # "arg":Ljava/lang/String;
    :goto_69
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    :cond_6c
    move v0, v3

    .line 680
    .end local v3  # "showHistory":Z
    .restart local v0  # "showHistory":Z
    :cond_6d
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-static {v1}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$2600(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 681
    :try_start_74
    iget-object v2, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    const-string v3, ""

    invoke-virtual {v2, v3, p2}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->dumpLocked(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 682
    monitor-exit v1
    :try_end_7c
    .catchall {:try_start_74 .. :try_end_7c} :catchall_a1

    .line 683
    const-string v1, "Requests history: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 684
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    iget-object v1, v1, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mRequestsHistory:Landroid/util/LocalLog;

    if-nez v1, :cond_8d

    .line 685
    const-string v1, "disabled by device config"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_a0

    .line 686
    :cond_8d
    if-eqz v0, :cond_9d

    .line 687
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 688
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    iget-object v1, v1, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mRequestsHistory:Landroid/util/LocalLog;

    invoke-virtual {v1, p1, p2, p3}, Landroid/util/LocalLog;->reverseDump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 689
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    goto :goto_a0

    .line 691
    :cond_9d
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 693
    :goto_a0
    return-void

    .line 682
    :catchall_a1
    move-exception v2

    :try_start_a2
    monitor-exit v1
    :try_end_a3
    .catchall {:try_start_a2 .. :try_end_a3} :catchall_a1

    throw v2
.end method

.method public finishSession(I)V
    .registers 5
    .param p1, "sessionId"  # I

    .line 564
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 565
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 567
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-static {v1}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$500(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 568
    :try_start_12
    iget-object v2, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-static {v2, v0}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$600(Lcom/android/server/contentcapture/ContentCaptureManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v2

    check-cast v2, Lcom/android/server/contentcapture/ContentCapturePerUserService;

    .line 569
    .local v2, "service":Lcom/android/server/contentcapture/ContentCapturePerUserService;
    invoke-virtual {v2, p1}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->finishSessionLocked(I)V

    .line 570
    .end local v2  # "service":Lcom/android/server/contentcapture/ContentCapturePerUserService;
    monitor-exit v1

    .line 571
    return-void

    .line 570
    :catchall_1f
    move-exception v2

    monitor-exit v1
    :try_end_21
    .catchall {:try_start_12 .. :try_end_21} :catchall_1f

    throw v2
.end method

.method public getContentCaptureConditions(Ljava/lang/String;Lcom/android/internal/os/IResultReceiver;)V
    .registers 9
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "result"  # Lcom/android/internal/os/IResultReceiver;

    .line 642
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    new-instance v1, Lcom/android/server/contentcapture/-$$Lambda$ContentCaptureManagerService$ContentCaptureManagerServiceStub$Qe-DhsP4OR9GyoofNgVlcOk-1so;

    invoke-direct {v1, p0, p1}, Lcom/android/server/contentcapture/-$$Lambda$ContentCaptureManagerService$ContentCaptureManagerServiceStub$Qe-DhsP4OR9GyoofNgVlcOk-1so;-><init>(Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;Ljava/lang/String;)V

    invoke-static {v0, p2, v1}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$1400(Lcom/android/server/contentcapture/ContentCaptureManagerService;Lcom/android/internal/os/IResultReceiver;Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 643
    return-void

    .line 646
    :cond_e
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 648
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-static {v1}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$2100(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 649
    :try_start_19
    iget-object v2, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-static {v2, v0}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$2200(Lcom/android/server/contentcapture/ContentCaptureManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v2

    check-cast v2, Lcom/android/server/contentcapture/ContentCapturePerUserService;

    .line 650
    .local v2, "service":Lcom/android/server/contentcapture/ContentCapturePerUserService;
    if-nez v2, :cond_25

    const/4 v3, 0x0

    goto :goto_2d

    .line 651
    :cond_25
    invoke-virtual {v2, p1}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->getContentCaptureConditionsLocked(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v3

    invoke-static {v3}, Landroid/view/contentcapture/ContentCaptureHelper;->toList(Ljava/util/Set;)Ljava/util/ArrayList;

    move-result-object v3

    :goto_2d
    move-object v2, v3

    .line 652
    .local v2, "conditions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/contentcapture/ContentCaptureCondition;>;"
    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_19 .. :try_end_2f} :catchall_54

    .line 654
    const/4 v1, 0x0

    :try_start_30
    invoke-static {v2}, Lcom/android/internal/util/SyncResultReceiver;->bundleFor(Ljava/util/ArrayList;)Landroid/os/Bundle;

    move-result-object v3

    invoke-interface {p2, v1, v3}, Lcom/android/internal/os/IResultReceiver;->send(ILandroid/os/Bundle;)V
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_37} :catch_38

    .line 657
    goto :goto_53

    .line 655
    :catch_38
    move-exception v1

    .line 656
    .local v1, "e":Landroid/os/RemoteException;
    iget-object v3, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-static {v3}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$2300(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to send getServiceComponentName(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    .end local v1  # "e":Landroid/os/RemoteException;
    :goto_53
    return-void

    .line 652
    .end local v2  # "conditions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/contentcapture/ContentCaptureCondition;>;"
    :catchall_54
    move-exception v2

    :try_start_55
    monitor-exit v1
    :try_end_56
    .catchall {:try_start_55 .. :try_end_56} :catchall_54

    throw v2
.end method

.method public getServiceComponentName(Lcom/android/internal/os/IResultReceiver;)V
    .registers 8
    .param p1, "result"  # Lcom/android/internal/os/IResultReceiver;

    .line 575
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 577
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-static {v1}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$700(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 578
    :try_start_b
    iget-object v2, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-static {v2, v0}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$800(Lcom/android/server/contentcapture/ContentCaptureManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v2

    check-cast v2, Lcom/android/server/contentcapture/ContentCapturePerUserService;

    .line 579
    .local v2, "service":Lcom/android/server/contentcapture/ContentCapturePerUserService;
    invoke-virtual {v2}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->getServiceComponentName()Landroid/content/ComponentName;

    move-result-object v3

    move-object v2, v3

    .line 580
    .local v2, "connectedServiceComponentName":Landroid/content/ComponentName;
    monitor-exit v1
    :try_end_19
    .catchall {:try_start_b .. :try_end_19} :catchall_3e

    .line 582
    const/4 v1, 0x0

    :try_start_1a
    invoke-static {v2}, Lcom/android/internal/util/SyncResultReceiver;->bundleFor(Landroid/os/Parcelable;)Landroid/os/Bundle;

    move-result-object v3

    invoke-interface {p1, v1, v3}, Lcom/android/internal/os/IResultReceiver;->send(ILandroid/os/Bundle;)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_21} :catch_22

    .line 585
    goto :goto_3d

    .line 583
    :catch_22
    move-exception v1

    .line 584
    .local v1, "e":Landroid/os/RemoteException;
    iget-object v3, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-static {v3}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$900(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to send service component name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    .end local v1  # "e":Landroid/os/RemoteException;
    :goto_3d
    return-void

    .line 580
    .end local v2  # "connectedServiceComponentName":Landroid/content/ComponentName;
    :catchall_3e
    move-exception v2

    :try_start_3f
    monitor-exit v1
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_3e

    throw v2
.end method

.method public getServiceSettingsActivity(Lcom/android/internal/os/IResultReceiver;)V
    .registers 8
    .param p1, "result"  # Lcom/android/internal/os/IResultReceiver;

    .line 621
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    new-instance v1, Lcom/android/server/contentcapture/-$$Lambda$ContentCaptureManagerService$ContentCaptureManagerServiceStub$6vI15KqJwo_ruaAABrGMvkwVRt4;

    invoke-direct {v1, p0}, Lcom/android/server/contentcapture/-$$Lambda$ContentCaptureManagerService$ContentCaptureManagerServiceStub$6vI15KqJwo_ruaAABrGMvkwVRt4;-><init>(Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;)V

    invoke-static {v0, p1, v1}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$1400(Lcom/android/server/contentcapture/ContentCaptureManagerService;Lcom/android/internal/os/IResultReceiver;Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 622
    return-void

    .line 625
    :cond_e
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 627
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-static {v1}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$1800(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 628
    :try_start_19
    iget-object v2, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-static {v2, v0}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$1900(Lcom/android/server/contentcapture/ContentCaptureManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v2

    check-cast v2, Lcom/android/server/contentcapture/ContentCapturePerUserService;

    .line 629
    .local v2, "service":Lcom/android/server/contentcapture/ContentCapturePerUserService;
    if-nez v2, :cond_25

    monitor-exit v1

    return-void

    .line 630
    :cond_25
    invoke-virtual {v2}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->getServiceSettingsActivityLocked()Landroid/content/ComponentName;

    move-result-object v3

    move-object v2, v3

    .line 631
    .local v2, "componentName":Landroid/content/ComponentName;
    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_19 .. :try_end_2b} :catchall_50

    .line 633
    const/4 v1, 0x0

    :try_start_2c
    invoke-static {v2}, Lcom/android/internal/util/SyncResultReceiver;->bundleFor(Landroid/os/Parcelable;)Landroid/os/Bundle;

    move-result-object v3

    invoke-interface {p1, v1, v3}, Lcom/android/internal/os/IResultReceiver;->send(ILandroid/os/Bundle;)V
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_33} :catch_34

    .line 636
    goto :goto_4f

    .line 634
    :catch_34
    move-exception v1

    .line 635
    .local v1, "e":Landroid/os/RemoteException;
    iget-object v3, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-static {v3}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$2000(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to send getServiceSettingsIntent(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    .end local v1  # "e":Landroid/os/RemoteException;
    :goto_4f
    return-void

    .line 631
    .end local v2  # "componentName":Landroid/content/ComponentName;
    :catchall_50
    move-exception v2

    :try_start_51
    monitor-exit v1
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_50

    throw v2
.end method

.method public isContentCaptureFeatureEnabled(Lcom/android/internal/os/IResultReceiver;)V
    .registers 7
    .param p1, "result"  # Lcom/android/internal/os/IResultReceiver;

    .line 603
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-static {v0}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$1300(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 604
    :try_start_7
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    new-instance v2, Lcom/android/server/contentcapture/-$$Lambda$ContentCaptureManagerService$ContentCaptureManagerServiceStub$vyDTyUUAt356my5WVtp7QPYv5gY;

    invoke-direct {v2, p0}, Lcom/android/server/contentcapture/-$$Lambda$ContentCaptureManagerService$ContentCaptureManagerServiceStub$vyDTyUUAt356my5WVtp7QPYv5gY;-><init>(Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;)V

    invoke-static {v1, p1, v2}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$1400(Lcom/android/server/contentcapture/ContentCaptureManagerService;Lcom/android/internal/os/IResultReceiver;Ljava/lang/Runnable;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 606
    monitor-exit v0

    return-void

    .line 609
    :cond_16
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 610
    .local v1, "userId":I
    iget-object v2, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-static {v2}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$1500(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_2d

    iget-object v2, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-static {v2, v1}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$1600(Lcom/android/server/contentcapture/ContentCaptureManagerService;I)Z

    move-result v2

    if-nez v2, :cond_2d

    move v2, v3

    goto :goto_2e

    :cond_2d
    const/4 v2, 0x0

    :goto_2e
    move v1, v2

    .line 611
    .local v1, "enabled":Z
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_7 .. :try_end_30} :catchall_55

    .line 613
    if-eqz v1, :cond_33

    goto :goto_34

    :cond_33
    const/4 v3, 0x2

    :goto_34
    const/4 v0, 0x0

    :try_start_35
    invoke-interface {p1, v3, v0}, Lcom/android/internal/os/IResultReceiver;->send(ILandroid/os/Bundle;)V
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_35 .. :try_end_38} :catch_39

    .line 616
    goto :goto_54

    .line 614
    :catch_39
    move-exception v0

    .line 615
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v2, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-static {v2}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$1700(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to send isContentCaptureFeatureEnabled(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    .end local v0  # "e":Landroid/os/RemoteException;
    :goto_54
    return-void

    .line 611
    .end local v1  # "enabled":Z
    :catchall_55
    move-exception v1

    :try_start_56
    monitor-exit v0
    :try_end_57
    .catchall {:try_start_56 .. :try_end_57} :catchall_55

    throw v1
.end method

.method public synthetic lambda$getContentCaptureConditions$2$ContentCaptureManagerService$ContentCaptureManagerServiceStub(Ljava/lang/String;)V
    .registers 3
    .param p1, "packageName"  # Ljava/lang/String;

    .line 642
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-static {v0, p1}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$2700(Lcom/android/server/contentcapture/ContentCaptureManagerService;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$getServiceSettingsActivity$1$ContentCaptureManagerService$ContentCaptureManagerServiceStub()V
    .registers 2

    .line 621
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-virtual {v0}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->enforceCallingPermissionForManagement()V

    return-void
.end method

.method public synthetic lambda$isContentCaptureFeatureEnabled$0$ContentCaptureManagerService$ContentCaptureManagerServiceStub()V
    .registers 3

    .line 605
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    const-string/jumbo v1, "isContentCaptureFeatureEnabled()"

    invoke-static {v0, v1}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$2800(Lcom/android/server/contentcapture/ContentCaptureManagerService;Ljava/lang/String;)V

    return-void
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 15
    .param p1, "in"  # Ljava/io/FileDescriptor;
    .param p2, "out"  # Ljava/io/FileDescriptor;
    .param p3, "err"  # Ljava/io/FileDescriptor;
    .param p4, "args"  # [Ljava/lang/String;
    .param p5, "callback"  # Landroid/os/ShellCallback;
    .param p6, "resultReceiver"  # Landroid/os/ResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 699
    new-instance v0, Lcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand;

    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-direct {v0, v1}, Lcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand;-><init>(Lcom/android/server/contentcapture/ContentCaptureManagerService;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 701
    return-void
.end method

.method public removeData(Landroid/view/contentcapture/DataRemovalRequest;)V
    .registers 5
    .param p1, "request"  # Landroid/view/contentcapture/DataRemovalRequest;

    .line 590
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 591
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-virtual {p1}, Landroid/view/contentcapture/DataRemovalRequest;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$1000(Lcom/android/server/contentcapture/ContentCaptureManagerService;Ljava/lang/String;)V

    .line 593
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 594
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-static {v1}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$1100(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 595
    :try_start_17
    iget-object v2, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-static {v2, v0}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$1200(Lcom/android/server/contentcapture/ContentCaptureManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v2

    check-cast v2, Lcom/android/server/contentcapture/ContentCapturePerUserService;

    .line 596
    .local v2, "service":Lcom/android/server/contentcapture/ContentCapturePerUserService;
    invoke-virtual {v2, p1}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->removeDataLocked(Landroid/view/contentcapture/DataRemovalRequest;)V

    .line 597
    .end local v2  # "service":Lcom/android/server/contentcapture/ContentCapturePerUserService;
    monitor-exit v1

    .line 598
    return-void

    .line 597
    :catchall_24
    move-exception v2

    monitor-exit v1
    :try_end_26
    .catchall {:try_start_17 .. :try_end_26} :catchall_24

    throw v2
.end method

.method public startSession(Landroid/os/IBinder;Landroid/content/ComponentName;IILcom/android/internal/os/IResultReceiver;)V
    .registers 16
    .param p1, "activityToken"  # Landroid/os/IBinder;
    .param p2, "componentName"  # Landroid/content/ComponentName;
    .param p3, "sessionId"  # I
    .param p4, "flags"  # I
    .param p5, "result"  # Lcom/android/internal/os/IResultReceiver;

    .line 548
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 549
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 550
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 552
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-static {v1}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$200(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Landroid/app/ActivityManagerInternal;

    move-result-object v1

    .line 553
    invoke-virtual {v1, p1}, Landroid/app/ActivityManagerInternal;->getActivityPresentationInfo(Landroid/os/IBinder;)Landroid/content/pm/ActivityPresentationInfo;

    move-result-object v1

    .line 555
    .local v1, "activityPresentationInfo":Landroid/content/pm/ActivityPresentationInfo;
    iget-object v2, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-static {v2}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$300(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    .line 556
    :try_start_1f
    iget-object v2, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-static {v2, v0}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$400(Lcom/android/server/contentcapture/ContentCaptureManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v2

    check-cast v2, Lcom/android/server/contentcapture/ContentCapturePerUserService;

    .line 557
    .local v2, "service":Lcom/android/server/contentcapture/ContentCapturePerUserService;
    nop

    .line 558
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 557
    move-object v3, p1

    move-object v4, v1

    move v5, p3

    move v7, p4

    move-object v8, p5

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->startSessionLocked(Landroid/os/IBinder;Landroid/content/pm/ActivityPresentationInfo;IIILcom/android/internal/os/IResultReceiver;)V

    .line 559
    .end local v2  # "service":Lcom/android/server/contentcapture/ContentCapturePerUserService;
    monitor-exit v9

    .line 560
    return-void

    .line 559
    :catchall_36
    move-exception v2

    monitor-exit v9
    :try_end_38
    .catchall {:try_start_1f .. :try_end_38} :catchall_36

    throw v2
.end method
