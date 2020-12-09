.class Lcom/android/server/StorageManagerService$Callbacks;
.super Landroid/os/Handler;
.source "StorageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/StorageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Callbacks"
.end annotation


# static fields
.field private static final MSG_DISK_DESTROYED:I = 0x6

.field private static final MSG_DISK_SCANNED:I = 0x5

.field private static final MSG_STORAGE_STATE_CHANGED:I = 0x1

.field private static final MSG_VOLUME_FORGOTTEN:I = 0x4

.field private static final MSG_VOLUME_RECORD_CHANGED:I = 0x3

.field private static final MSG_VOLUME_STATE_CHANGED:I = 0x2


# instance fields
.field private final mCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/os/storage/IStorageEventListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .registers 2

    .line 3736
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 3732
    new-instance p1, Landroid/os/RemoteCallbackList;

    invoke-direct {p1}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object p1, p0, Lcom/android/server/StorageManagerService$Callbacks;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 3737
    return-void
.end method

.method static synthetic access$2600(Lcom/android/server/StorageManagerService$Callbacks;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 3724
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/StorageManagerService$Callbacks;->notifyStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/server/StorageManagerService$Callbacks;Landroid/os/storage/DiskInfo;)V
    .registers 2

    .line 3724
    invoke-direct {p0, p1}, Lcom/android/server/StorageManagerService$Callbacks;->notifyDiskDestroyed(Landroid/os/storage/DiskInfo;)V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/server/StorageManagerService$Callbacks;Landroid/os/storage/DiskInfo;I)V
    .registers 3

    .line 3724
    invoke-direct {p0, p1, p2}, Lcom/android/server/StorageManagerService$Callbacks;->notifyDiskScanned(Landroid/os/storage/DiskInfo;I)V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/server/StorageManagerService$Callbacks;Landroid/os/storage/VolumeInfo;II)V
    .registers 4

    .line 3724
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/StorageManagerService$Callbacks;->notifyVolumeStateChanged(Landroid/os/storage/VolumeInfo;II)V

    return-void
.end method

.method static synthetic access$4400(Lcom/android/server/StorageManagerService$Callbacks;Landroid/os/storage/VolumeRecord;)V
    .registers 2

    .line 3724
    invoke-direct {p0, p1}, Lcom/android/server/StorageManagerService$Callbacks;->notifyVolumeRecordChanged(Landroid/os/storage/VolumeRecord;)V

    return-void
.end method

.method static synthetic access$4500(Lcom/android/server/StorageManagerService$Callbacks;Ljava/lang/String;)V
    .registers 2

    .line 3724
    invoke-direct {p0, p1}, Lcom/android/server/StorageManagerService$Callbacks;->notifyVolumeForgotten(Ljava/lang/String;)V

    return-void
.end method

.method private invokeCallback(Landroid/os/storage/IStorageEventListener;ILcom/android/internal/os/SomeArgs;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3764
    packed-switch p2, :pswitch_data_44

    goto :goto_42

    .line 3787
    :pswitch_4  #0x6
    iget-object p2, p3, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast p2, Landroid/os/storage/DiskInfo;

    invoke-interface {p1, p2}, Landroid/os/storage/IStorageEventListener;->onDiskDestroyed(Landroid/os/storage/DiskInfo;)V

    goto :goto_42

    .line 3783
    :pswitch_c  #0x5
    iget-object p2, p3, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast p2, Landroid/os/storage/DiskInfo;

    iget p3, p3, Lcom/android/internal/os/SomeArgs;->argi2:I

    invoke-interface {p1, p2, p3}, Landroid/os/storage/IStorageEventListener;->onDiskScanned(Landroid/os/storage/DiskInfo;I)V

    .line 3784
    goto :goto_42

    .line 3779
    :pswitch_16  #0x4
    iget-object p2, p3, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast p2, Ljava/lang/String;

    invoke-interface {p1, p2}, Landroid/os/storage/IStorageEventListener;->onVolumeForgotten(Ljava/lang/String;)V

    .line 3780
    goto :goto_42

    .line 3775
    :pswitch_1e  #0x3
    iget-object p2, p3, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast p2, Landroid/os/storage/VolumeRecord;

    invoke-interface {p1, p2}, Landroid/os/storage/IStorageEventListener;->onVolumeRecordChanged(Landroid/os/storage/VolumeRecord;)V

    .line 3776
    goto :goto_42

    .line 3771
    :pswitch_26  #0x2
    iget-object p2, p3, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast p2, Landroid/os/storage/VolumeInfo;

    iget v0, p3, Lcom/android/internal/os/SomeArgs;->argi2:I

    iget p3, p3, Lcom/android/internal/os/SomeArgs;->argi3:I

    invoke-interface {p1, p2, v0, p3}, Landroid/os/storage/IStorageEventListener;->onVolumeStateChanged(Landroid/os/storage/VolumeInfo;II)V

    .line 3772
    goto :goto_42

    .line 3766
    :pswitch_32  #0x1
    iget-object p2, p3, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast p2, Ljava/lang/String;

    iget-object v0, p3, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object p3, p3, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast p3, Ljava/lang/String;

    invoke-interface {p1, p2, v0, p3}, Landroid/os/storage/IStorageEventListener;->onStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3768
    nop

    .line 3791
    :goto_42
    return-void

    nop

    :pswitch_data_44
    .packed-switch 0x1
        :pswitch_32  #00000001
        :pswitch_26  #00000002
        :pswitch_1e  #00000003
        :pswitch_16  #00000004
        :pswitch_c  #00000005
        :pswitch_4  #00000006
    .end packed-switch
.end method

.method private notifyDiskDestroyed(Landroid/os/storage/DiskInfo;)V
    .registers 3

    .line 3829
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 3830
    invoke-virtual {p1}, Landroid/os/storage/DiskInfo;->clone()Landroid/os/storage/DiskInfo;

    move-result-object p1

    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 3831
    const/4 p1, 0x6

    invoke-virtual {p0, p1, v0}, Lcom/android/server/StorageManagerService$Callbacks;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 3832
    return-void
.end method

.method private notifyDiskScanned(Landroid/os/storage/DiskInfo;I)V
    .registers 4

    .line 3822
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 3823
    invoke-virtual {p1}, Landroid/os/storage/DiskInfo;->clone()Landroid/os/storage/DiskInfo;

    move-result-object p1

    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 3824
    iput p2, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 3825
    const/4 p1, 0x5

    invoke-virtual {p0, p1, v0}, Lcom/android/server/StorageManagerService$Callbacks;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 3826
    return-void
.end method

.method private notifyStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 3794
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 3795
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 3796
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 3797
    iput-object p3, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 3798
    const/4 p1, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/StorageManagerService$Callbacks;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 3799
    return-void
.end method

.method private notifyVolumeForgotten(Ljava/lang/String;)V
    .registers 3

    .line 3816
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 3817
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 3818
    const/4 p1, 0x4

    invoke-virtual {p0, p1, v0}, Lcom/android/server/StorageManagerService$Callbacks;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 3819
    return-void
.end method

.method private notifyVolumeRecordChanged(Landroid/os/storage/VolumeRecord;)V
    .registers 3

    .line 3810
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 3811
    invoke-virtual {p1}, Landroid/os/storage/VolumeRecord;->clone()Landroid/os/storage/VolumeRecord;

    move-result-object p1

    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 3812
    const/4 p1, 0x3

    invoke-virtual {p0, p1, v0}, Lcom/android/server/StorageManagerService$Callbacks;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 3813
    return-void
.end method

.method private notifyVolumeStateChanged(Landroid/os/storage/VolumeInfo;II)V
    .registers 5

    .line 3802
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 3803
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->clone()Landroid/os/storage/VolumeInfo;

    move-result-object p1

    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 3804
    iput p2, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 3805
    iput p3, v0, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 3806
    const/4 p1, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/android/server/StorageManagerService$Callbacks;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 3807
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7

    .line 3749
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 3750
    iget-object v1, p0, Lcom/android/server/StorageManagerService$Callbacks;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    .line 3751
    const/4 v2, 0x0

    :goto_b
    if-ge v2, v1, :cond_1f

    .line 3752
    iget-object v3, p0, Lcom/android/server/StorageManagerService$Callbacks;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/os/storage/IStorageEventListener;

    .line 3754
    :try_start_15
    iget v4, p1, Landroid/os/Message;->what:I

    invoke-direct {p0, v3, v4, v0}, Lcom/android/server/StorageManagerService$Callbacks;->invokeCallback(Landroid/os/storage/IStorageEventListener;ILcom/android/internal/os/SomeArgs;)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_1a} :catch_1b

    .line 3756
    goto :goto_1c

    .line 3755
    :catch_1b
    move-exception v3

    .line 3751
    :goto_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 3758
    :cond_1f
    iget-object p1, p0, Lcom/android/server/StorageManagerService$Callbacks;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 3759
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 3760
    return-void
.end method

.method public register(Landroid/os/storage/IStorageEventListener;)V
    .registers 3

    .line 3740
    iget-object v0, p0, Lcom/android/server/StorageManagerService$Callbacks;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 3741
    return-void
.end method

.method public unregister(Landroid/os/storage/IStorageEventListener;)V
    .registers 3

    .line 3744
    iget-object v0, p0, Lcom/android/server/StorageManagerService$Callbacks;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 3745
    return-void
.end method
