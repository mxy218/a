.class Lcom/android/server/audio/AudioService$VolumeStreamState;
.super Ljava/lang/Object;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VolumeStreamState"
.end annotation


# instance fields
.field private final mIndexMap:Landroid/util/SparseIntArray;

.field private mIndexMax:I

.field private mIndexMin:I

.field private mIsMuted:Z

.field private mObservedDevices:I

.field private final mStreamDevicesChanged:Landroid/content/Intent;

.field private final mStreamType:I

.field private final mVolumeChanged:Landroid/content/Intent;

.field private mVolumeIndexSettingName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method private constructor <init>(Lcom/android/server/audio/AudioService;Ljava/lang/String;I)V
    .registers 5

    .line 4614
    iput-object p1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4610
    new-instance p1, Landroid/util/SparseIntArray;

    const/16 v0, 0x8

    invoke-direct {p1, v0}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object p1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    .line 4616
    iput-object p2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeIndexSettingName:Ljava/lang/String;

    .line 4618
    iput p3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    .line 4619
    sget-object p1, Lcom/android/server/audio/AudioService;->MIN_STREAM_VOLUME:[I

    aget p1, p1, p3

    mul-int/lit8 p1, p1, 0xa

    iput p1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMin:I

    .line 4620
    sget-object p1, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    aget p1, p1, p3

    mul-int/lit8 p1, p1, 0xa

    iput p1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    .line 4621
    iget p1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMin:I

    div-int/lit8 p1, p1, 0xa

    iget p2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    div-int/lit8 p2, p2, 0xa

    invoke-static {p3, p1, p2}, Landroid/media/AudioSystem;->initStreamVolume(III)I

    .line 4623
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->readSettings()V

    .line 4624
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.media.VOLUME_CHANGED_ACTION"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeChanged:Landroid/content/Intent;

    .line 4625
    iget-object p1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeChanged:Landroid/content/Intent;

    iget p2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    const-string p3, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4626
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.media.STREAM_DEVICES_CHANGED_ACTION"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamDevicesChanged:Landroid/content/Intent;

    .line 4627
    iget-object p1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamDevicesChanged:Landroid/content/Intent;

    iget p2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4628
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/audio/AudioService;Ljava/lang/String;ILcom/android/server/audio/AudioService$1;)V
    .registers 5

    .line 4601
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/audio/AudioService$VolumeStreamState;-><init>(Lcom/android/server/audio/AudioService;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/audio/AudioService$VolumeStreamState;)Z
    .registers 1

    .line 4601
    iget-boolean p0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMuted:Z

    return p0
.end method

.method static synthetic access$1002(Lcom/android/server/audio/AudioService$VolumeStreamState;Z)Z
    .registers 2

    .line 4601
    iput-boolean p1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMuted:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/server/audio/AudioService$VolumeStreamState;)I
    .registers 1

    .line 4601
    iget p0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    return p0
.end method

.method static synthetic access$1300(Lcom/android/server/audio/AudioService$VolumeStreamState;Ljava/io/PrintWriter;)V
    .registers 2

    .line 4601
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method static synthetic access$1402(Lcom/android/server/audio/AudioService$VolumeStreamState;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 4601
    iput-object p1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeIndexSettingName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/android/server/audio/AudioService$VolumeStreamState;)Landroid/util/SparseIntArray;
    .registers 1

    .line 4601
    iget-object p0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    return-object p0
.end method

.method static synthetic access$3900(Lcom/android/server/audio/AudioService$VolumeStreamState;)Z
    .registers 1

    .line 4601
    invoke-direct {p0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->hasValidSettingsName()Z

    move-result p0

    return p0
.end method

.method static synthetic access$800(Lcom/android/server/audio/AudioService$VolumeStreamState;)I
    .registers 1

    .line 4601
    iget p0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMin:I

    return p0
.end method

.method static synthetic access$900(Lcom/android/server/audio/AudioService$VolumeStreamState;)I
    .registers 1

    .line 4601
    iget p0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    return p0
.end method

.method private dump(Ljava/io/PrintWriter;)V
    .registers 9

    .line 4997
    const-string v0, "   Muted: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4998
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMuted:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 4999
    const-string v0, "   Min: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5000
    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMin:I

    add-int/lit8 v0, v0, 0x5

    div-int/lit8 v0, v0, 0xa

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 5001
    const-string v0, "   Max: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5002
    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    add-int/lit8 v0, v0, 0x5

    div-int/lit8 v0, v0, 0xa

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 5003
    const-string v0, "   streamVolume:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioService;->getStreamVolume(I)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 5004
    const-string v0, "   Current: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5005
    const/4 v0, 0x0

    move v1, v0

    :goto_3d
    iget-object v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    const-string v3, ", "

    const/high16 v4, 0x40000000  # 2.0f

    if-ge v1, v2, :cond_8c

    .line 5006
    if-lez v1, :cond_4e

    .line 5007
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5009
    :cond_4e
    iget-object v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    .line 5010
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5011
    if-ne v2, v4, :cond_60

    const-string v2, "default"

    goto :goto_64

    .line 5012
    :cond_60
    invoke-static {v2}, Landroid/media/AudioSystem;->getOutputDeviceName(I)Ljava/lang/String;

    move-result-object v2

    .line 5013
    :goto_64
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_77

    .line 5014
    const-string v3, " ("

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5015
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5016
    const-string v2, ")"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5018
    :cond_77
    const-string v2, ": "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5019
    iget-object v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x5

    div-int/lit8 v2, v2, 0xa

    .line 5020
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 5005
    add-int/lit8 v1, v1, 0x1

    goto :goto_3d

    .line 5022
    :cond_8c
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 5023
    const-string v1, "   Devices: "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5024
    iget-object v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    invoke-static {v1, v2}, Lcom/android/server/audio/AudioService;->access$3600(Lcom/android/server/audio/AudioService;I)I

    move-result v1

    .line 5025
    move v2, v0

    .line 5028
    :goto_9d
    const/4 v5, 0x1

    shl-int/2addr v5, v0

    if-eq v5, v4, :cond_b7

    .line 5029
    and-int v6, v1, v5

    if-eqz v6, :cond_b4

    .line 5030
    add-int/lit8 v6, v2, 0x1

    if-lez v2, :cond_ac

    .line 5031
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5033
    :cond_ac
    invoke-static {v5}, Landroid/media/AudioSystem;->getOutputDeviceName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move v2, v6

    .line 5035
    :cond_b4
    add-int/lit8 v0, v0, 0x1

    goto :goto_9d

    .line 5037
    :cond_b7
    return-void
.end method

.method private getAbsoluteVolumeIndex(I)I
    .registers 4

    .line 4728
    if-nez p1, :cond_4

    .line 4730
    const/4 p1, 0x0

    goto :goto_21

    .line 4731
    :cond_4
    if-lez p1, :cond_1b

    const/4 v0, 0x3

    if-gt p1, v0, :cond_1b

    .line 4733
    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$3300(Lcom/android/server/audio/AudioService;)[F

    move-result-object v1

    add-int/lit8 p1, p1, -0x1

    aget p1, v1, p1

    mul-float/2addr v0, p1

    float-to-int p1, v0

    div-int/lit8 p1, p1, 0xa

    goto :goto_21

    .line 4736
    :cond_1b
    iget p1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    add-int/lit8 p1, p1, 0x5

    div-int/lit8 p1, p1, 0xa

    .line 4738
    :goto_21
    return p1
.end method

.method private getValidIndex(I)I
    .registers 3

    .line 4987
    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMin:I

    if-ge p1, v0, :cond_5

    .line 4988
    return v0

    .line 4989
    :cond_5
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$3000(Lcom/android/server/audio/AudioService;)Z

    move-result v0

    if-nez v0, :cond_13

    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    if-le p1, v0, :cond_12

    goto :goto_13

    .line 4993
    :cond_12
    return p1

    .line 4990
    :cond_13
    :goto_13
    iget p1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    return p1
.end method

.method private hasValidSettingsName()Z
    .registers 2

    .line 4663
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeIndexSettingName:Ljava/lang/String;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method private setStreamVolumeIndex(II)V
    .registers 5

    .line 4745
    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_c

    if-nez p1, :cond_c

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMuted:Z

    if-nez v0, :cond_c

    .line 4746
    const/4 p1, 0x1

    .line 4748
    :cond_c
    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    invoke-static {v0, p1, p2}, Landroid/media/AudioSystem;->setStreamVolumeIndexAS(III)I

    .line 4749
    return-void
.end method


# virtual methods
.method public adjustIndex(IILjava/lang/String;)Z
    .registers 5

    .line 4803
    invoke-virtual {p0, p2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0, v0, p2, p3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setIndex(IILjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public applyAllVolumes()V
    .registers 7

    .line 4769
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$2000(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioDeviceBroker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/audio/AudioDeviceBroker;->isAvrcpAbsoluteVolumeSupported()Z

    move-result v0

    .line 4770
    const-class v1, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v1

    .line 4773
    const/4 v2, 0x0

    move v3, v2

    :goto_f
    :try_start_f
    iget-object v4, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    const/high16 v5, 0x40000000  # 2.0f

    if-ge v3, v4, :cond_64

    .line 4774
    iget-object v4, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    .line 4775
    if-eq v4, v5, :cond_61

    .line 4776
    iget-boolean v5, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMuted:Z

    if-eqz v5, :cond_27

    .line 4777
    move v5, v2

    goto :goto_5e

    .line 4778
    :cond_27
    and-int/lit16 v5, v4, 0x380

    if-eqz v5, :cond_3a

    if-eqz v0, :cond_3a

    .line 4780
    invoke-virtual {p0, v4}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x5

    div-int/lit8 v5, v5, 0xa

    invoke-direct {p0, v5}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getAbsoluteVolumeIndex(I)I

    move-result v5

    goto :goto_5e

    .line 4781
    :cond_3a
    iget-object v5, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget v5, v5, Lcom/android/server/audio/AudioService;->mFullVolumeDevices:I

    and-int/2addr v5, v4

    if-eqz v5, :cond_48

    .line 4782
    iget v5, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    add-int/lit8 v5, v5, 0x5

    div-int/lit8 v5, v5, 0xa

    goto :goto_5e

    .line 4783
    :cond_48
    const/high16 v5, 0x8000000

    and-int/2addr v5, v4

    if-eqz v5, :cond_54

    .line 4784
    iget v5, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    add-int/lit8 v5, v5, 0x5

    div-int/lit8 v5, v5, 0xa

    goto :goto_5e

    .line 4786
    :cond_54
    iget-object v5, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x5

    div-int/lit8 v5, v5, 0xa

    .line 4788
    :goto_5e
    invoke-direct {p0, v5, v4}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setStreamVolumeIndex(II)V

    .line 4773
    :cond_61
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 4793
    :cond_64
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMuted:Z

    if-eqz v0, :cond_69

    .line 4794
    goto :goto_71

    .line 4796
    :cond_69
    invoke-virtual {p0, v5}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    div-int/lit8 v2, v0, 0xa

    .line 4798
    :goto_71
    invoke-direct {p0, v2, v5}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setStreamVolumeIndex(II)V

    .line 4799
    monitor-exit v1

    .line 4800
    return-void

    .line 4799
    :catchall_76
    move-exception v0

    monitor-exit v1
    :try_end_78
    .catchall {:try_start_f .. :try_end_78} :catchall_76

    throw v0
.end method

.method applyDeviceVolume_syncVSS(IZ)V
    .registers 4

    .line 4754
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMuted:Z

    if-eqz v0, :cond_6

    .line 4755
    const/4 p2, 0x0

    goto :goto_3b

    .line 4756
    :cond_6
    and-int/lit16 v0, p1, 0x380

    if-eqz v0, :cond_19

    if-eqz p2, :cond_19

    .line 4757
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result p2

    add-int/lit8 p2, p2, 0x5

    div-int/lit8 p2, p2, 0xa

    invoke-direct {p0, p2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getAbsoluteVolumeIndex(I)I

    move-result p2

    goto :goto_3b

    .line 4758
    :cond_19
    iget-object p2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget p2, p2, Lcom/android/server/audio/AudioService;->mFullVolumeDevices:I

    and-int/2addr p2, p1

    if-eqz p2, :cond_27

    .line 4759
    iget p2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    add-int/lit8 p2, p2, 0x5

    div-int/lit8 p2, p2, 0xa

    goto :goto_3b

    .line 4760
    :cond_27
    const/high16 p2, 0x8000000

    and-int/2addr p2, p1

    if-eqz p2, :cond_33

    .line 4761
    iget p2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    add-int/lit8 p2, p2, 0x5

    div-int/lit8 p2, p2, 0xa

    goto :goto_3b

    .line 4763
    :cond_33
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result p2

    add-int/lit8 p2, p2, 0x5

    div-int/lit8 p2, p2, 0xa

    .line 4765
    :goto_3b
    invoke-direct {p0, p2, p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setStreamVolumeIndex(II)V

    .line 4766
    return-void
.end method

.method public checkFixedVolumeDevices()V
    .registers 7

    .line 4969
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$2000(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioDeviceBroker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/audio/AudioDeviceBroker;->isAvrcpAbsoluteVolumeSupported()Z

    move-result v0

    .line 4970
    const-class v1, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v1

    .line 4972
    :try_start_d
    sget-object v2, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    iget v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    aget v2, v2, v3

    const/4 v3, 0x3

    if-ne v2, v3, :cond_48

    .line 4973
    const/4 v2, 0x0

    :goto_17
    iget-object v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_48

    .line 4974
    iget-object v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    .line 4975
    iget-object v4, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    .line 4976
    iget-object v5, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget v5, v5, Lcom/android/server/audio/AudioService;->mFullVolumeDevices:I

    and-int/2addr v5, v3

    if-nez v5, :cond_3b

    iget-object v5, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget v5, v5, Lcom/android/server/audio/AudioService;->mFixedVolumeDevices:I

    and-int/2addr v5, v3

    if-eqz v5, :cond_42

    if-eqz v4, :cond_42

    .line 4978
    :cond_3b
    iget-object v4, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    iget v5, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    invoke-virtual {v4, v3, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 4980
    :cond_42
    invoke-virtual {p0, v3, v0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->applyDeviceVolume_syncVSS(IZ)V

    .line 4973
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 4983
    :cond_48
    monitor-exit v1

    .line 4984
    return-void

    .line 4983
    :catchall_4a
    move-exception v0

    monitor-exit v1
    :try_end_4c
    .catchall {:try_start_d .. :try_end_4c} :catchall_4a

    throw v0
.end method

.method public getIndex(I)I
    .registers 5

    .line 4873
    const-class v0, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v0

    .line 4874
    :try_start_3
    iget-object v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    const/4 v2, -0x1

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result p1

    .line 4875
    if-ne p1, v2, :cond_14

    .line 4877
    iget-object p1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    const/high16 v1, 0x40000000  # 2.0f

    invoke-virtual {p1, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p1

    .line 4879
    :cond_14
    monitor-exit v0

    return p1

    .line 4880
    :catchall_16
    move-exception p1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw p1
.end method

.method public getMaxIndex()I
    .registers 2

    .line 4890
    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    return v0
.end method

.method public getMinIndex()I
    .registers 2

    .line 4894
    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMin:I

    return v0
.end method

.method public getSettingNameForDevice(I)Ljava/lang/String;
    .registers 4

    .line 4652
    invoke-direct {p0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->hasValidSettingsName()Z

    move-result v0

    if-nez v0, :cond_8

    .line 4653
    const/4 p1, 0x0

    return-object p1

    .line 4655
    :cond_8
    invoke-static {p1}, Landroid/media/AudioSystem;->getOutputDeviceName(I)Ljava/lang/String;

    move-result-object p1

    .line 4656
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 4657
    iget-object p1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeIndexSettingName:Ljava/lang/String;

    return-object p1

    .line 4659
    :cond_15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeIndexSettingName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getStreamType()I
    .registers 2

    .line 4965
    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    return v0
.end method

.method public hasIndexForDevice(I)Z
    .registers 5

    .line 4884
    const-class v0, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v0

    .line 4885
    :try_start_3
    iget-object v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    const/4 v2, -0x1

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result p1

    if-eq p1, v2, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    monitor-exit v0

    return p1

    .line 4886
    :catchall_11
    move-exception p1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw p1
.end method

.method public mute(Z)V
    .registers 12

    .line 4938
    nop

    .line 4939
    const-class v0, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v0

    .line 4940
    :try_start_4
    iget-boolean v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMuted:Z

    if-eq p1, v1, :cond_1c

    .line 4941
    const/4 v1, 0x1

    .line 4942
    iput-boolean p1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMuted:Z

    .line 4947
    iget-object v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$100(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    move-result-object v3

    const/16 v4, 0xa

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v8, p0

    invoke-static/range {v3 .. v9}, Lcom/android/server/audio/AudioService;->access$200(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto :goto_1d

    .line 4940
    :cond_1c
    const/4 v1, 0x0

    .line 4954
    :goto_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_4 .. :try_end_1e} :catchall_39

    .line 4955
    if-eqz v1, :cond_38

    .line 4957
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.STREAM_MUTE_CHANGED_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4958
    iget v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    const-string v2, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4959
    const-string v1, "android.media.EXTRA_STREAM_VOLUME_MUTED"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4960
    iget-object p1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p1, v0}, Lcom/android/server/audio/AudioService;->access$2800(Lcom/android/server/audio/AudioService;Landroid/content/Intent;)V

    .line 4962
    :cond_38
    return-void

    .line 4954
    :catchall_39
    move-exception p1

    :try_start_3a
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    throw p1
.end method

.method public observeDevicesForStream_syncVSS(Z)I
    .registers 6

    .line 4631
    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    invoke-static {v0}, Landroid/media/AudioSystem;->getDevicesForStream(I)I

    move-result v0

    .line 4632
    iget v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mObservedDevices:I

    if-ne v0, v1, :cond_b

    .line 4633
    return v0

    .line 4635
    :cond_b
    nop

    .line 4636
    iput v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mObservedDevices:I

    .line 4637
    if-eqz p1, :cond_17

    .line 4639
    iget-object p1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    invoke-static {p1, v2}, Lcom/android/server/audio/AudioService;->access$2700(Lcom/android/server/audio/AudioService;I)V

    .line 4642
    :cond_17
    sget-object p1, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    iget v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    aget p1, p1, v2

    if-ne p1, v2, :cond_22

    .line 4643
    invoke-static {v2, v1, v0}, Lcom/android/server/EventLogTags;->writeStreamDevicesChanged(III)V

    .line 4645
    :cond_22
    iget-object p1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamDevicesChanged:Landroid/content/Intent;

    .line 4646
    const-string v3, "android.media.EXTRA_PREV_VOLUME_STREAM_DEVICES"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    .line 4647
    const-string v2, "android.media.EXTRA_VOLUME_STREAM_DEVICES"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    .line 4645
    invoke-static {p1, v1}, Lcom/android/server/audio/AudioService;->access$2800(Lcom/android/server/audio/AudioService;Landroid/content/Intent;)V

    .line 4648
    return v0
.end method

.method public readSettings()V
    .registers 12

    .line 4667
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$2900(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 4668
    :try_start_7
    const-class v1, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v1
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_91

    .line 4670
    :try_start_a
    iget-object v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$3000(Lcom/android/server/audio/AudioService;)Z

    move-result v2

    const/high16 v3, 0x40000000  # 2.0f

    if-eqz v2, :cond_1e

    .line 4671
    iget-object v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    iget v4, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 4672
    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_a .. :try_end_1c} :catchall_8e

    :try_start_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_91

    return-void

    .line 4677
    :cond_1e
    :try_start_1e
    iget v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    const/4 v4, 0x1

    if-eq v2, v4, :cond_74

    iget v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    const/4 v5, 0x7

    if-ne v2, v5, :cond_29

    goto :goto_74

    .line 4686
    :cond_29
    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_1e .. :try_end_2a} :catchall_8e

    .line 4687
    :try_start_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_91

    .line 4688
    const-class v1, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v1

    .line 4689
    const v0, 0x4fffffff  # 8.5899341E9f

    .line 4691
    const/4 v2, 0x0

    :goto_32
    if-eqz v0, :cond_6f

    .line 4692
    shl-int v5, v4, v2

    .line 4693
    and-int v6, v5, v0

    if-nez v6, :cond_3b

    .line 4694
    goto :goto_6c

    .line 4696
    :cond_3b
    not-int v6, v5

    and-int/2addr v0, v6

    .line 4701
    const/4 v6, -0x1

    if-ne v5, v3, :cond_47

    .line 4702
    :try_start_40
    sget-object v7, Landroid/media/AudioSystem;->DEFAULT_STREAM_VOLUME:[I

    iget v8, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    aget v7, v7, v8

    goto :goto_48

    :cond_47
    move v7, v6

    .line 4704
    :goto_48
    invoke-direct {p0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->hasValidSettingsName()Z

    move-result v8

    if-nez v8, :cond_4f

    .line 4705
    goto :goto_5e

    .line 4707
    :cond_4f
    invoke-virtual {p0, v5}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getSettingNameForDevice(I)Ljava/lang/String;

    move-result-object v8

    .line 4708
    iget-object v9, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    .line 4709
    invoke-static {v9}, Lcom/android/server/audio/AudioService;->access$3200(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v9

    const/4 v10, -0x2

    .line 4708
    invoke-static {v9, v8, v7, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    .line 4711
    :goto_5e
    if-ne v7, v6, :cond_61

    .line 4712
    goto :goto_6c

    .line 4715
    :cond_61
    iget-object v6, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    mul-int/lit8 v7, v7, 0xa

    invoke-direct {p0, v7}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getValidIndex(I)I

    move-result v7

    invoke-virtual {v6, v5, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 4691
    :goto_6c
    add-int/lit8 v2, v2, 0x1

    goto :goto_32

    .line 4717
    :cond_6f
    monitor-exit v1

    .line 4718
    return-void

    .line 4717
    :catchall_71
    move-exception v0

    monitor-exit v1
    :try_end_73
    .catchall {:try_start_40 .. :try_end_73} :catchall_71

    throw v0

    .line 4679
    :cond_74
    :goto_74
    :try_start_74
    sget-object v2, Landroid/media/AudioSystem;->DEFAULT_STREAM_VOLUME:[I

    iget v4, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    aget v2, v2, v4

    mul-int/lit8 v2, v2, 0xa

    .line 4680
    iget-object v4, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$3100(Lcom/android/server/audio/AudioService;)Z

    move-result v4

    if-eqz v4, :cond_86

    .line 4681
    iget v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    .line 4683
    :cond_86
    iget-object v4, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v3, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 4684
    monitor-exit v1
    :try_end_8c
    .catchall {:try_start_74 .. :try_end_8c} :catchall_8e

    :try_start_8c
    monitor-exit v0
    :try_end_8d
    .catchall {:try_start_8c .. :try_end_8d} :catchall_91

    return-void

    .line 4686
    :catchall_8e
    move-exception v2

    :try_start_8f
    monitor-exit v1
    :try_end_90
    .catchall {:try_start_8f .. :try_end_90} :catchall_8e

    :try_start_90
    throw v2

    .line 4687
    :catchall_91
    move-exception v1

    monitor-exit v0
    :try_end_93
    .catchall {:try_start_90 .. :try_end_93} :catchall_91

    throw v1
.end method

.method public setAllIndexes(Lcom/android/server/audio/AudioService$VolumeStreamState;Ljava/lang/String;)V
    .registers 9
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "VolumeStreamState.class"
        }
    .end annotation

    .line 4907
    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    iget v1, p1, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    if-ne v0, v1, :cond_7

    .line 4908
    return-void

    .line 4910
    :cond_7
    invoke-virtual {p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getStreamType()I

    move-result v0

    .line 4913
    const/high16 v1, 0x40000000  # 2.0f

    invoke-virtual {p1, v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v1

    .line 4914
    iget-object v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    invoke-static {v2, v1, v0, v3}, Lcom/android/server/audio/AudioService;->access$3500(Lcom/android/server/audio/AudioService;III)I

    move-result v1

    .line 4915
    const/4 v2, 0x0

    move v3, v2

    :goto_1b
    iget-object v4, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_2f

    .line 4916
    iget-object v4, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v5

    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 4915
    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    .line 4919
    :cond_2f
    iget-object p1, p1, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    .line 4920
    nop

    :goto_32
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-ge v2, v1, :cond_4e

    .line 4921
    invoke-virtual {p1, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v1

    .line 4922
    invoke-virtual {p1, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    .line 4923
    iget-object v4, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget v5, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    invoke-static {v4, v3, v0, v5}, Lcom/android/server/audio/AudioService;->access$3500(Lcom/android/server/audio/AudioService;III)I

    move-result v3

    .line 4925
    invoke-virtual {p0, v3, v1, p2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setIndex(IILjava/lang/String;)Z

    .line 4920
    add-int/lit8 v2, v2, 0x1

    goto :goto_32

    .line 4927
    :cond_4e
    return-void
.end method

.method public setAllIndexesToMax()V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "VolumeStreamState.class"
        }
    .end annotation

    .line 4932
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 4933
    iget-object v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    iget v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 4932
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 4935
    :cond_17
    return-void
.end method

.method public setIndex(IILjava/lang/String;)Z
    .registers 14

    .line 4809
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$2900(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 4810
    :try_start_7
    const-class v1, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v1
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_eb

    .line 4811
    :try_start_a
    invoke-virtual {p0, p2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v2

    .line 4812
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getValidIndex(I)I

    move-result p1

    .line 4813
    iget v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    const/4 v4, 0x7

    if-ne v3, v4, :cond_21

    iget-object v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v3}, Lcom/android/server/audio/AudioService;->access$3100(Lcom/android/server/audio/AudioService;)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 4814
    iget p1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    .line 4816
    :cond_21
    iget-object v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v3, p2, p1}, Landroid/util/SparseIntArray;->put(II)V

    .line 4818
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v2, p1, :cond_2c

    move v5, v4

    goto :goto_2d

    :cond_2c
    move v5, v3

    .line 4824
    :goto_2d
    iget-object v6, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget v7, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    invoke-virtual {v6, v7}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v6

    if-ne p2, v6, :cond_39

    move v6, v4

    goto :goto_3a

    :cond_39
    move v6, v3

    .line 4825
    :goto_3a
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v7

    .line 4826
    sub-int/2addr v7, v4

    :goto_3f
    if-ltz v7, :cond_76

    .line 4827
    iget-object v4, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$3400(Lcom/android/server/audio/AudioService;)[Lcom/android/server/audio/AudioService$VolumeStreamState;

    move-result-object v4

    aget-object v4, v4, v7

    .line 4828
    iget v8, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    if-eq v7, v8, :cond_73

    sget-object v8, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v8, v8, v7

    iget v9, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    if-ne v8, v9, :cond_73

    if-nez v5, :cond_5d

    .line 4830
    invoke-virtual {v4, p2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->hasIndexForDevice(I)Z

    move-result v8

    if-nez v8, :cond_73

    .line 4831
    :cond_5d
    iget-object v8, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget v9, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    invoke-static {v8, p1, v9, v7}, Lcom/android/server/audio/AudioService;->access$3500(Lcom/android/server/audio/AudioService;III)I

    move-result v8

    .line 4832
    invoke-virtual {v4, v8, p2, p3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setIndex(IILjava/lang/String;)Z

    .line 4833
    if-eqz v6, :cond_73

    .line 4834
    iget-object v9, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    .line 4835
    invoke-virtual {v9, v7}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v9

    .line 4834
    invoke-virtual {v4, v8, v9, p3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setIndex(IILjava/lang/String;)Z

    .line 4826
    :cond_73
    add-int/lit8 v7, v7, -0x1

    goto :goto_3f

    .line 4840
    :cond_76
    if-eqz v5, :cond_9a

    iget v4, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    const/4 v6, 0x2

    if-ne v4, v6, :cond_9a

    if-ne p2, v6, :cond_9a

    .line 4842
    nop

    :goto_80
    iget-object p2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {p2}, Landroid/util/SparseIntArray;->size()I

    move-result p2

    if-ge v3, p2, :cond_9a

    .line 4843
    iget-object p2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {p2, v3}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result p2

    .line 4844
    and-int/lit8 v4, p2, 0x70

    if-eqz v4, :cond_97

    .line 4845
    iget-object v4, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v4, p2, p1}, Landroid/util/SparseIntArray;->put(II)V

    .line 4842
    :cond_97
    add-int/lit8 v3, v3, 0x1

    goto :goto_80

    .line 4849
    :cond_9a
    monitor-exit v1
    :try_end_9b
    .catchall {:try_start_a .. :try_end_9b} :catchall_e8

    .line 4850
    :try_start_9b
    monitor-exit v0
    :try_end_9c
    .catchall {:try_start_9b .. :try_end_9c} :catchall_eb

    .line 4851
    if-eqz v5, :cond_e7

    .line 4852
    add-int/lit8 v2, v2, 0x5

    div-int/lit8 v2, v2, 0xa

    .line 4853
    add-int/lit8 p1, p1, 0x5

    div-int/lit8 p1, p1, 0xa

    .line 4855
    sget-object p2, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    aget p2, p2, v0

    if-ne p2, v0, :cond_c5

    .line 4856
    if-nez p3, :cond_bc

    .line 4857
    new-instance p2, Ljava/lang/Throwable;

    invoke-direct {p2}, Ljava/lang/Throwable;-><init>()V

    const-string v0, "AS.AudioService"

    const-string v1, "No caller for volume_changed event"

    invoke-static {v0, v1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4859
    :cond_bc
    iget p2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    div-int/lit8 v0, v0, 0xa

    invoke-static {p2, v2, p1, v0, p3}, Lcom/android/server/EventLogTags;->writeVolumeChanged(IIIILjava/lang/String;)V

    .line 4863
    :cond_c5
    iget-object p2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeChanged:Landroid/content/Intent;

    const-string p3, "android.media.EXTRA_VOLUME_STREAM_VALUE"

    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4864
    iget-object p1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeChanged:Landroid/content/Intent;

    const-string p2, "android.media.EXTRA_PREV_VOLUME_STREAM_VALUE"

    invoke-virtual {p1, p2, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4865
    iget-object p1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeChanged:Landroid/content/Intent;

    sget-object p2, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    iget p3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    aget p2, p2, p3

    const-string p3, "android.media.EXTRA_VOLUME_STREAM_TYPE_ALIAS"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4867
    iget-object p1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget-object p2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeChanged:Landroid/content/Intent;

    invoke-static {p1, p2}, Lcom/android/server/audio/AudioService;->access$2800(Lcom/android/server/audio/AudioService;Landroid/content/Intent;)V

    .line 4869
    :cond_e7
    return v5

    .line 4849
    :catchall_e8
    move-exception p1

    :try_start_e9
    monitor-exit v1
    :try_end_ea
    .catchall {:try_start_e9 .. :try_end_ea} :catchall_e8

    :try_start_ea
    throw p1

    .line 4850
    :catchall_eb
    move-exception p1

    monitor-exit v0
    :try_end_ed
    .catchall {:try_start_ea .. :try_end_ed} :catchall_eb

    throw p1
.end method
