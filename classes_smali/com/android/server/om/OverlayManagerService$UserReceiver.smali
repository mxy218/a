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
    .param p1, "x0"  # Lcom/android/server/om/OverlayManagerService;
    .param p2, "x1"  # Lcom/android/server/om/OverlayManagerService$1;

    .line 484
    invoke-direct {p0, p1}, Lcom/android/server/om/OverlayManagerService$UserReceiver;-><init>(Lcom/android/server/om/OverlayManagerService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "intent"  # Landroid/content/Intent;

    .line 487
    const/16 v0, -0x2710

    const-string v1, "android.intent.extra.user_handle"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 488
    .local v1, "userId":I
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, -0x7ad942ef  # -7.8400085E-36f

    const/4 v5, 0x1

    if-eq v3, v4, :cond_26

    const v4, 0x42dd01f1

    if-eq v3, v4, :cond_1c

    :cond_1b
    goto :goto_30

    :cond_1c
    const-string v3, "android.intent.action.USER_ADDED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    const/4 v2, 0x0

    goto :goto_31

    :cond_26
    const-string v3, "android.intent.action.USER_REMOVED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    move v2, v5

    goto :goto_31

    :goto_30
    const/4 v2, -0x1

    :goto_31
    const-wide/32 v3, 0x4000000

    if-eqz v2, :cond_67

    if-eq v2, v5, :cond_39

    goto :goto_92

    .line 505
    :cond_39
    if-eq v1, v0, :cond_92

    .line 507
    :try_start_3b
    const-string v0, "OMS ACTION_USER_REMOVED"

    invoke-static {v3, v4, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 508
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService$UserReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v0}, Lcom/android/server/om/OverlayManagerService;->access$400(Lcom/android/server/om/OverlayManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_47
    .catchall {:try_start_3b .. :try_end_47} :catchall_62

    .line 509
    :try_start_47
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerService$UserReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v2}, Lcom/android/server/om/OverlayManagerService;->access$600(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/om/OverlayManagerServiceImpl;->onUserRemoved(I)V

    .line 510
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerService$UserReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v2}, Lcom/android/server/om/OverlayManagerService;->access$500(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;->forgetAllPackageInfos(I)V

    .line 511
    monitor-exit v0
    :try_end_5a
    .catchall {:try_start_47 .. :try_end_5a} :catchall_5f

    .line 513
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 514
    nop

    .line 513
    goto :goto_92

    .line 511
    :catchall_5f
    move-exception v2

    :try_start_60
    monitor-exit v0
    :try_end_61
    .catchall {:try_start_60 .. :try_end_61} :catchall_5f

    .end local v1  # "userId":I
    .end local p0  # "this":Lcom/android/server/om/OverlayManagerService$UserReceiver;
    .end local p1  # "context":Landroid/content/Context;
    .end local p2  # "intent":Landroid/content/Intent;
    :try_start_61
    throw v2
    :try_end_62
    .catchall {:try_start_61 .. :try_end_62} :catchall_62

    .line 513
    .restart local v1  # "userId":I
    .restart local p0  # "this":Lcom/android/server/om/OverlayManagerService$UserReceiver;
    .restart local p1  # "context":Landroid/content/Context;
    .restart local p2  # "intent":Landroid/content/Intent;
    :catchall_62
    move-exception v0

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    throw v0

    .line 490
    :cond_67
    if-eq v1, v0, :cond_92

    .line 492
    :try_start_69
    const-string v0, "OMS ACTION_USER_ADDED"

    invoke-static {v3, v4, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 494
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService$UserReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v0}, Lcom/android/server/om/OverlayManagerService;->access$400(Lcom/android/server/om/OverlayManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_75
    .catchall {:try_start_69 .. :try_end_75} :catchall_8d

    .line 495
    :try_start_75
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerService$UserReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v2}, Lcom/android/server/om/OverlayManagerService;->access$600(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateOverlaysForUser(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 496
    .local v2, "targets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    monitor-exit v0
    :try_end_80
    .catchall {:try_start_75 .. :try_end_80} :catchall_8a

    .line 497
    :try_start_80
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService$UserReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v0, v1, v2}, Lcom/android/server/om/OverlayManagerService;->access$700(Lcom/android/server/om/OverlayManagerService;ILjava/util/List;)V
    :try_end_85
    .catchall {:try_start_80 .. :try_end_85} :catchall_8d

    .line 499
    .end local v2  # "targets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 500
    nop

    .line 499
    goto :goto_92

    .line 496
    :catchall_8a
    move-exception v2

    :try_start_8b
    monitor-exit v0
    :try_end_8c
    .catchall {:try_start_8b .. :try_end_8c} :catchall_8a

    .end local v1  # "userId":I
    .end local p0  # "this":Lcom/android/server/om/OverlayManagerService$UserReceiver;
    .end local p1  # "context":Landroid/content/Context;
    .end local p2  # "intent":Landroid/content/Intent;
    :try_start_8c
    throw v2
    :try_end_8d
    .catchall {:try_start_8c .. :try_end_8d} :catchall_8d

    .line 499
    .restart local v1  # "userId":I
    .restart local p0  # "this":Lcom/android/server/om/OverlayManagerService$UserReceiver;
    .restart local p1  # "context":Landroid/content/Context;
    .restart local p2  # "intent":Landroid/content/Intent;
    :catchall_8d
    move-exception v0

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    throw v0

    .line 521
    :cond_92
    :goto_92
    return-void
.end method
