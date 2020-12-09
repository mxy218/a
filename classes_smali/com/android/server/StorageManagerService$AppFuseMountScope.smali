.class Lcom/android/server/StorageManagerService$AppFuseMountScope;
.super Lcom/android/server/storage/AppFuseBridge$MountScope;
.source "StorageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/StorageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AppFuseMountScope"
.end annotation


# instance fields
.field private mMounted:Z

.field final synthetic this$0:Lcom/android/server/StorageManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/StorageManagerService;II)V
    .registers 4

    .line 2916
    iput-object p1, p0, Lcom/android/server/StorageManagerService$AppFuseMountScope;->this$0:Lcom/android/server/StorageManagerService;

    .line 2917
    invoke-direct {p0, p2, p3}, Lcom/android/server/storage/AppFuseBridge$MountScope;-><init>(II)V

    .line 2914
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/StorageManagerService$AppFuseMountScope;->mMounted:Z

    .line 2918
    return-void
.end method


# virtual methods
.method public close()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2944
    iget-boolean v0, p0, Lcom/android/server/StorageManagerService$AppFuseMountScope;->mMounted:Z

    if-eqz v0, :cond_14

    .line 2945
    iget-object v0, p0, Lcom/android/server/StorageManagerService$AppFuseMountScope;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v0}, Lcom/android/server/StorageManagerService;->access$1400(Lcom/android/server/StorageManagerService;)Landroid/os/IVold;

    move-result-object v0

    iget v1, p0, Lcom/android/server/StorageManagerService$AppFuseMountScope;->uid:I

    iget v2, p0, Lcom/android/server/StorageManagerService$AppFuseMountScope;->mountId:I

    invoke-interface {v0, v1, v2}, Landroid/os/IVold;->unmountAppFuse(II)V

    .line 2946
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/StorageManagerService$AppFuseMountScope;->mMounted:Z

    .line 2948
    :cond_14
    return-void
.end method

.method public open()Landroid/os/ParcelFileDescriptor;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/NativeDaemonConnectorException;
        }
    .end annotation

    .line 2923
    :try_start_0
    iget-object v0, p0, Lcom/android/server/StorageManagerService$AppFuseMountScope;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v0}, Lcom/android/server/StorageManagerService;->access$1400(Lcom/android/server/StorageManagerService;)Landroid/os/IVold;

    move-result-object v0

    iget v1, p0, Lcom/android/server/StorageManagerService$AppFuseMountScope;->uid:I

    iget v2, p0, Lcom/android/server/StorageManagerService$AppFuseMountScope;->mountId:I

    invoke-interface {v0, v1, v2}, Landroid/os/IVold;->mountAppFuse(II)Ljava/io/FileDescriptor;

    move-result-object v0

    .line 2924
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/StorageManagerService$AppFuseMountScope;->mMounted:Z

    .line 2925
    new-instance v1, Landroid/os/ParcelFileDescriptor;

    invoke-direct {v1, v0}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_16} :catch_17

    return-object v1

    .line 2926
    :catch_17
    move-exception v0

    .line 2927
    new-instance v1, Lcom/android/server/NativeDaemonConnectorException;

    const-string v2, "Failed to mount"

    invoke-direct {v1, v2, v0}, Lcom/android/server/NativeDaemonConnectorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public openFile(III)Landroid/os/ParcelFileDescriptor;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/NativeDaemonConnectorException;
        }
    .end annotation

    .line 2935
    :try_start_0
    new-instance v0, Landroid/os/ParcelFileDescriptor;

    iget-object v1, p0, Lcom/android/server/StorageManagerService$AppFuseMountScope;->this$0:Lcom/android/server/StorageManagerService;

    .line 2936
    invoke-static {v1}, Lcom/android/server/StorageManagerService;->access$1400(Lcom/android/server/StorageManagerService;)Landroid/os/IVold;

    move-result-object v1

    iget v2, p0, Lcom/android/server/StorageManagerService$AppFuseMountScope;->uid:I

    invoke-interface {v1, v2, p1, p2, p3}, Landroid/os/IVold;->openAppFuseFile(IIII)Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_12

    .line 2935
    return-object v0

    .line 2937
    :catch_12
    move-exception p1

    .line 2938
    new-instance p2, Lcom/android/server/NativeDaemonConnectorException;

    const-string p3, "Failed to open"

    invoke-direct {p2, p3, p1}, Lcom/android/server/NativeDaemonConnectorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method
