.class final Lcom/android/server/om/OverlayManagerService$UserReceiver;
.super Landroid/content/BroadcastReceiver;
.source "OverlayManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/om/OverlayManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "UserReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/om/OverlayManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/om/OverlayManagerService;)V
    .registers 2

    .line 484
    iput-object p1, p0, Lcom/android/server/om/OverlayManagerService$UserReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/om/OverlayManagerService;Lcom/android/server/om/OverlayManagerService$1;)V
    .registers 3

    .line 484
    invoke-direct {p0, p1}, Lcom/android/server/om/OverlayManagerService$UserReceiver;-><init>(Lcom/android/server/om/OverlayManagerService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    .line 487
    const/16 p1, -0x2710

    const-string v0, "android.intent.extra.user_handle"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 488
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x7ad942ef  # -7.8400085E-36f

    const/4 v3, 0x1

    if-eq v1, v2, :cond_26

    const v2, 0x42dd01f1

    if-eq v1, v2, :cond_1c

    :cond_1b
    goto :goto_30

    :cond_1c
    const-string v1, "android.intent.action.USER_ADDED"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1b

    const/4 p2, 0x0

    goto :goto_31

    :cond_26
    const-string v1, "android.intent.action.USER_REMOVED"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1b

    move p2, v3

    goto :goto_31

    :goto_30
    const/4 p2, -0x1

    :goto_31
    const-wide/32 v1, 0x4000000

    if-eqz p2, :cond_67

    if-eq p2, v3, :cond_39

    goto :goto_92

    .line 505
    :cond_39
    if-eq v0, p1, :cond_92

    .line 507
    :try_start_3b
    const-string p1, "OMS ACTION_USER_REMOVED"

    invoke-static {v1, v2, p1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 508
    iget-object p1, p0, Lcom/android/server/om/OverlayManagerService$UserReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {p1}, Lcom/android/server/om/OverlayManagerService;->access$400(Lcom/android/server/om/OverlayManagerService;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1
    :try_end_47
    .catchall {:try_start_3b .. :try_end_47} :catchall_62

    .line 509
    :try_start_47
    iget-object p2, p0, Lcom/android/server/om/OverlayManagerService$UserReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {p2}, Lcom/android/server/om/OverlayManagerService;->access$600(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/android/server/om/OverlayManagerServiceImpl;->onUserRemoved(I)V

    .line 510
    iget-object p2, p0, Lcom/android/server/om/OverlayManagerService$UserReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {p2}, Lcom/android/server/om/OverlayManagerService;->access$500(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;->forgetAllPackageInfos(I)V

    .line 511
    monitor-exit p1
    :try_end_5a
    .catchall {:try_start_47 .. :try_end_5a} :catchall_5f

    .line 513
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 514
    nop

    .line 513
    goto :goto_92

    .line 511
    :catchall_5f
    move-exception p2

    :try_start_60
    monitor-exit p1
    :try_end_61
    .catchall {:try_start_60 .. :try_end_61} :catchall_5f

    :try_start_61
    throw p2
    :try_end_62
    .catchall {:try_start_61 .. :try_end_62} :catchall_62

    .line 513
    :catchall_62
    move-exception p1

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw p1

    .line 490
    :cond_67
    if-eq v0, p1, :cond_92

    .line 492
    :try_start_69
    const-string p1, "OMS ACTION_USER_ADDED"

    invoke-static {v1, v2, p1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 494
    iget-object p1, p0, Lcom/android/server/om/OverlayManagerService$UserReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {p1}, Lcom/android/server/om/OverlayManagerService;->access$400(Lcom/android/server/om/OverlayManagerService;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1
    :try_end_75
    .catchall {:try_start_69 .. :try_end_75} :catchall_8d

    .line 495
    :try_start_75
    iget-object p2, p0, Lcom/android/server/om/OverlayManagerService$UserReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {p2}, Lcom/android/server/om/OverlayManagerService;->access$600(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateOverlaysForUser(I)Ljava/util/ArrayList;

    move-result-object p2

    .line 496
    monitor-exit p1
    :try_end_80
    .catchall {:try_start_75 .. :try_end_80} :catchall_8a

    .line 497
    :try_start_80
    iget-object p1, p0, Lcom/android/server/om/OverlayManagerService$UserReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {p1, v0, p2}, Lcom/android/server/om/OverlayManagerService;->access$700(Lcom/android/server/om/OverlayManagerService;ILjava/util/List;)V
    :try_end_85
    .catchall {:try_start_80 .. :try_end_85} :catchall_8d

    .line 499
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 500
    nop

    .line 499
    goto :goto_92

    .line 496
    :catchall_8a
    move-exception p2

    :try_start_8b
    monitor-exit p1
    :try_end_8c
    .catchall {:try_start_8b .. :try_end_8c} :catchall_8a

    :try_start_8c
    throw p2
    :try_end_8d
    .catchall {:try_start_8c .. :try_end_8d} :catchall_8d

    .line 499
    :catchall_8d
    move-exception p1

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw p1

    .line 521
    :cond_92
    :goto_92
    return-void
.end method
