.class Lcom/android/server/StorageManagerService$1;
.super Landroid/content/BroadcastReceiver;
.source "StorageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/StorageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/StorageManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/StorageManagerService;)V
    .registers 2

    .line 713
    iput-object p1, p0, Lcom/android/server/StorageManagerService$1;->this$0:Lcom/android/server/StorageManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8

    .line 716
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 717
    const-string v0, "android.intent.extra.user_handle"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 718
    const/4 v0, 0x0

    if-ltz p2, :cond_10

    const/4 v1, 0x1

    goto :goto_11

    :cond_10
    move v1, v0

    :goto_11
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 721
    :try_start_14
    const-string v1, "android.intent.action.USER_ADDED"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 722
    iget-object p1, p0, Lcom/android/server/StorageManagerService$1;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {p1}, Lcom/android/server/StorageManagerService;->access$1800(Lcom/android/server/StorageManagerService;)Landroid/content/Context;

    move-result-object p1

    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    .line 723
    invoke-virtual {p1, p2}, Landroid/os/UserManager;->getUserSerialNumber(I)I

    move-result p1

    .line 724
    iget-object v0, p0, Lcom/android/server/StorageManagerService$1;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v0}, Lcom/android/server/StorageManagerService;->access$1400(Lcom/android/server/StorageManagerService;)Landroid/os/IVold;

    move-result-object v0

    invoke-interface {v0, p2, p1}, Landroid/os/IVold;->onUserAdded(II)V

    goto :goto_88

    .line 725
    :cond_38
    const-string v1, "android.intent.action.USER_REMOVED"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_88

    .line 726
    iget-object p1, p0, Lcom/android/server/StorageManagerService$1;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {p1}, Lcom/android/server/StorageManagerService;->access$2200(Lcom/android/server/StorageManagerService;)Landroid/util/ArrayMap;

    move-result-object p1

    monitor-enter p1
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_47} :catch_8a

    .line 727
    :try_start_47
    iget-object v1, p0, Lcom/android/server/StorageManagerService$1;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v1}, Lcom/android/server/StorageManagerService;->access$2200(Lcom/android/server/StorageManagerService;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 728
    nop

    :goto_52
    if-ge v0, v1, :cond_7a

    .line 729
    iget-object v2, p0, Lcom/android/server/StorageManagerService$1;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v2}, Lcom/android/server/StorageManagerService;->access$2200(Lcom/android/server/StorageManagerService;)Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/VolumeInfo;

    .line 730
    iget v3, v2, Landroid/os/storage/VolumeInfo;->mountUserId:I

    if-ne v3, p2, :cond_77

    .line 731
    const/16 v3, -0x2710

    iput v3, v2, Landroid/os/storage/VolumeInfo;->mountUserId:I

    .line 732
    iget-object v3, p0, Lcom/android/server/StorageManagerService$1;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v3}, Lcom/android/server/StorageManagerService;->access$2300(Lcom/android/server/StorageManagerService;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 728
    :cond_77
    add-int/lit8 v0, v0, 0x1

    goto :goto_52

    .line 735
    :cond_7a
    monitor-exit p1
    :try_end_7b
    .catchall {:try_start_47 .. :try_end_7b} :catchall_85

    .line 736
    :try_start_7b
    iget-object p1, p0, Lcom/android/server/StorageManagerService$1;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {p1}, Lcom/android/server/StorageManagerService;->access$1400(Lcom/android/server/StorageManagerService;)Landroid/os/IVold;

    move-result-object p1

    invoke-interface {p1, p2}, Landroid/os/IVold;->onUserRemoved(I)V
    :try_end_84
    .catch Ljava/lang/Exception; {:try_start_7b .. :try_end_84} :catch_8a

    goto :goto_89

    .line 735
    :catchall_85
    move-exception p2

    :try_start_86
    monitor-exit p1
    :try_end_87
    .catchall {:try_start_86 .. :try_end_87} :catchall_85

    :try_start_87
    throw p2
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_87 .. :try_end_88} :catch_8a

    .line 725
    :cond_88
    :goto_88
    nop

    .line 740
    :goto_89
    goto :goto_90

    .line 738
    :catch_8a
    move-exception p1

    .line 739
    const-string p2, "StorageManagerService"

    invoke-static {p2, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 741
    :goto_90
    return-void
.end method
