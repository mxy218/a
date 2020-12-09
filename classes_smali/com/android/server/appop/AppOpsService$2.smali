.class Lcom/android/server/appop/AppOpsService$2;
.super Landroid/content/BroadcastReceiver;
.source "AppOpsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/appop/AppOpsService;->systemReady()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/appop/AppOpsService;


# direct methods
.method constructor <init>(Lcom/android/server/appop/AppOpsService;)V
    .registers 2

    .line 801
    iput-object p1, p0, Lcom/android/server/appop/AppOpsService$2;->this$0:Lcom/android/server/appop/AppOpsService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 13

    .line 804
    const-string p1, "android.intent.extra.changed_uid_list"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object p1

    .line 805
    const-string v0, "android.intent.extra.changed_package_list"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 807
    invoke-static {}, Lcom/android/server/appop/AppOpsService;->access$300()[I

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_13
    if-ge v3, v1, :cond_44

    aget v4, v0, v3

    .line 809
    iget-object v5, p0, Lcom/android/server/appop/AppOpsService$2;->this$0:Lcom/android/server/appop/AppOpsService;

    monitor-enter v5

    .line 810
    :try_start_1a
    iget-object v6, p0, Lcom/android/server/appop/AppOpsService$2;->this$0:Lcom/android/server/appop/AppOpsService;

    iget-object v6, v6, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/ArraySet;

    .line 811
    if-nez v6, :cond_28

    .line 812
    monitor-exit v5

    goto :goto_3e

    .line 814
    :cond_28
    new-instance v7, Landroid/util/ArraySet;

    invoke-direct {v7, v6}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    .line 815
    monitor-exit v5
    :try_end_2e
    .catchall {:try_start_1a .. :try_end_2e} :catchall_41

    .line 816
    move v5, v2

    :goto_2f
    array-length v6, p1

    if-ge v5, v6, :cond_3e

    .line 817
    aget v6, p1, v5

    .line 818
    aget-object v8, p2, v5

    .line 821
    iget-object v9, p0, Lcom/android/server/appop/AppOpsService$2;->this$0:Lcom/android/server/appop/AppOpsService;

    invoke-static {v9, v7, v4, v6, v8}, Lcom/android/server/appop/AppOpsService;->access$400(Lcom/android/server/appop/AppOpsService;Landroid/util/ArraySet;IILjava/lang/String;)V

    .line 816
    add-int/lit8 v5, v5, 0x1

    goto :goto_2f

    .line 807
    :cond_3e
    :goto_3e
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 815
    :catchall_41
    move-exception p1

    :try_start_42
    monitor-exit v5
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_41

    throw p1

    .line 824
    :cond_44
    return-void
.end method
