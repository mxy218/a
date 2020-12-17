.class final Lcom/android/server/appop/AppOpsService$AppOpsManagerInternalImpl;
.super Landroid/app/AppOpsManagerInternal;
.source "AppOpsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/appop/AppOpsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AppOpsManagerInternalImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/appop/AppOpsService;


# direct methods
.method private constructor <init>(Lcom/android/server/appop/AppOpsService;)V
    .registers 2

    .line 4708
    iput-object p1, p0, Lcom/android/server/appop/AppOpsService$AppOpsManagerInternalImpl;->this$0:Lcom/android/server/appop/AppOpsService;

    invoke-direct {p0}, Landroid/app/AppOpsManagerInternal;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/appop/AppOpsService;Lcom/android/server/appop/AppOpsService$1;)V
    .registers 3
    .param p1, "x0"  # Lcom/android/server/appop/AppOpsService;
    .param p2, "x1"  # Lcom/android/server/appop/AppOpsService$1;

    .line 4708
    invoke-direct {p0, p1}, Lcom/android/server/appop/AppOpsService$AppOpsManagerInternalImpl;-><init>(Lcom/android/server/appop/AppOpsService;)V

    return-void
.end method


# virtual methods
.method public checkOperationUnchecked(IILjava/lang/String;)I
    .registers 10
    .param p1, "code"  # I
    .param p2, "uid"  # I
    .param p3, "packageName"  # Ljava/lang/String;

    .line 4727
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$AppOpsManagerInternalImpl;->this$0:Lcom/android/server/appop/AppOpsService;

    const/4 v4, 0x1

    const/4 v5, 0x0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Lcom/android/server/appop/AppOpsService;->access$1500(Lcom/android/server/appop/AppOpsService;IILjava/lang/String;ZZ)I

    move-result v0

    return v0
.end method

.method public setAllPkgModesToDefault(II)V
    .registers 4
    .param p1, "code"  # I
    .param p2, "uid"  # I

    .line 4722
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$AppOpsManagerInternalImpl;->this$0:Lcom/android/server/appop/AppOpsService;

    invoke-static {v0, p1, p2}, Lcom/android/server/appop/AppOpsService;->access$1400(Lcom/android/server/appop/AppOpsService;II)V

    .line 4723
    return-void
.end method

.method public setDeviceAndProfileOwners(Landroid/util/SparseIntArray;)V
    .registers 4
    .param p1, "owners"  # Landroid/util/SparseIntArray;

    .line 4710
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$AppOpsManagerInternalImpl;->this$0:Lcom/android/server/appop/AppOpsService;

    monitor-enter v0

    .line 4711
    :try_start_3
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$AppOpsManagerInternalImpl;->this$0:Lcom/android/server/appop/AppOpsService;

    iput-object p1, v1, Lcom/android/server/appop/AppOpsService;->mProfileOwners:Landroid/util/SparseIntArray;

    .line 4712
    monitor-exit v0

    .line 4713
    return-void

    .line 4712
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v1
.end method

.method public setUidMode(III)V
    .registers 5
    .param p1, "code"  # I
    .param p2, "uid"  # I
    .param p3, "mode"  # I

    .line 4717
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$AppOpsManagerInternalImpl;->this$0:Lcom/android/server/appop/AppOpsService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/appop/AppOpsService;->setUidMode(III)V

    .line 4718
    return-void
.end method
