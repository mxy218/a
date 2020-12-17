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
    .param p1, "this$0"  # Lcom/android/server/StorageManagerService;

    .line 723
    iput-object p1, p0, Lcom/android/server/StorageManagerService$1;->this$0:Lcom/android/server/StorageManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 11
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "intent"  # Landroid/content/Intent;

    .line 726
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 727
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.extra.user_handle"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 728
    .local v1, "userId":I
    if-ltz v1, :cond_f

    const/4 v2, 0x1

    goto :goto_10

    :cond_f
    const/4 v2, 0x0

    :goto_10
    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 731
    :try_start_13
    const-string v2, "android.intent.action.USER_ADDED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 732
    iget-object v2, p0, Lcom/android/server/StorageManagerService$1;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v2}, Lcom/android/server/StorageManagerService;->access$1800(Lcom/android/server/StorageManagerService;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Landroid/os/UserManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    .line 733
    .local v2, "um":Landroid/os/UserManager;
    invoke-virtual {v2, v1}, Landroid/os/UserManager;->getUserSerialNumber(I)I

    move-result v3

    .line 734
    .local v3, "userSerialNumber":I
    iget-object v4, p0, Lcom/android/server/StorageManagerService$1;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v4}, Lcom/android/server/StorageManagerService;->access$1400(Lcom/android/server/StorageManagerService;)Landroid/os/IVold;

    move-result-object v4

    invoke-interface {v4, v1, v3}, Landroid/os/IVold;->onUserAdded(II)V

    .end local v2  # "um":Landroid/os/UserManager;
    .end local v3  # "userSerialNumber":I
    goto :goto_87

    .line 735
    :cond_37
    const-string v2, "android.intent.action.USER_REMOVED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_87

    .line 736
    iget-object v2, p0, Lcom/android/server/StorageManagerService$1;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v2}, Lcom/android/server/StorageManagerService;->access$2200(Lcom/android/server/StorageManagerService;)Landroid/util/ArrayMap;

    move-result-object v2

    monitor-enter v2
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_46} :catch_89

    .line 737
    :try_start_46
    iget-object v3, p0, Lcom/android/server/StorageManagerService$1;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v3}, Lcom/android/server/StorageManagerService;->access$2200(Lcom/android/server/StorageManagerService;)Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    .line 738
    .local v3, "size":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_51
    if-ge v4, v3, :cond_79

    .line 739
    iget-object v5, p0, Lcom/android/server/StorageManagerService$1;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v5}, Lcom/android/server/StorageManagerService;->access$2200(Lcom/android/server/StorageManagerService;)Landroid/util/ArrayMap;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/storage/VolumeInfo;

    .line 740
    .local v5, "vol":Landroid/os/storage/VolumeInfo;
    iget v6, v5, Landroid/os/storage/VolumeInfo;->mountUserId:I

    if-ne v6, v1, :cond_76

    .line 741
    const/16 v6, -0x2710

    iput v6, v5, Landroid/os/storage/VolumeInfo;->mountUserId:I

    .line 742
    iget-object v6, p0, Lcom/android/server/StorageManagerService$1;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v6}, Lcom/android/server/StorageManagerService;->access$2300(Lcom/android/server/StorageManagerService;)Landroid/os/Handler;

    move-result-object v6

    const/16 v7, 0x8

    invoke-virtual {v6, v7, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 738
    .end local v5  # "vol":Landroid/os/storage/VolumeInfo;
    :cond_76
    add-int/lit8 v4, v4, 0x1

    goto :goto_51

    .line 745
    .end local v3  # "size":I
    .end local v4  # "i":I
    :cond_79
    monitor-exit v2
    :try_end_7a
    .catchall {:try_start_46 .. :try_end_7a} :catchall_84

    .line 746
    :try_start_7a
    iget-object v2, p0, Lcom/android/server/StorageManagerService$1;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v2}, Lcom/android/server/StorageManagerService;->access$1400(Lcom/android/server/StorageManagerService;)Landroid/os/IVold;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/os/IVold;->onUserRemoved(I)V
    :try_end_83
    .catch Ljava/lang/Exception; {:try_start_7a .. :try_end_83} :catch_89

    goto :goto_88

    .line 745
    :catchall_84
    move-exception v3

    :try_start_85
    monitor-exit v2
    :try_end_86
    .catchall {:try_start_85 .. :try_end_86} :catchall_84

    .end local v0  # "action":Ljava/lang/String;
    .end local v1  # "userId":I
    .end local p0  # "this":Lcom/android/server/StorageManagerService$1;
    .end local p1  # "context":Landroid/content/Context;
    .end local p2  # "intent":Landroid/content/Intent;
    :try_start_86
    throw v3
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_86 .. :try_end_87} :catch_89

    .line 735
    .restart local v0  # "action":Ljava/lang/String;
    .restart local v1  # "userId":I
    .restart local p0  # "this":Lcom/android/server/StorageManagerService$1;
    .restart local p1  # "context":Landroid/content/Context;
    .restart local p2  # "intent":Landroid/content/Intent;
    :cond_87
    :goto_87
    nop

    .line 750
    :goto_88
    goto :goto_8f

    .line 748
    :catch_89
    move-exception v2

    .line 749
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "StorageManagerService"

    invoke-static {v3, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 751
    .end local v2  # "e":Ljava/lang/Exception;
    :goto_8f
    return-void
.end method
