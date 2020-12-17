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
    .registers 6
    .param p2, "settingName"  # Ljava/lang/String;
    .param p3, "streamType"  # I

    .line 5371
    iput-object p1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5367
    new-instance p1, Landroid/util/SparseIntArray;

    const/16 v0, 0x8

    invoke-direct {p1, v0}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object p1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    .line 5373
    iput-object p2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeIndexSettingName:Ljava/lang/String;

    .line 5375
    iput p3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    .line 5376
    sget-object p1, Lcom/android/server/audio/AudioService;->MIN_STREAM_VOLUME:[I

    aget p1, p1, p3

    mul-int/lit8 p1, p1, 0xa

    iput p1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMin:I

    .line 5377
    sget-object p1, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    aget p1, p1, p3

    mul-int/lit8 p1, p1, 0xa

    iput p1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    .line 5378
    iget p1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMin:I

    div-int/lit8 p1, p1, 0xa

    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    div-int/lit8 v0, v0, 0xa

    invoke-static {p3, p1, v0}, Landroid/media/AudioSystem;->initStreamVolume(III)I

    .line 5380
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->readSettings()V

    .line 5381
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.media.VOLUME_CHANGED_ACTION"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeChanged:Landroid/content/Intent;

    .line 5382
    iget-object p1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeChanged:Landroid/content/Intent;

    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    const-string v1, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5383
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.media.STREAM_DEVICES_CHANGED_ACTION"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamDevicesChanged:Landroid/content/Intent;

    .line 5384
    iget-object p1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamDevicesChanged:Landroid/content/Intent;

    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5385
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/audio/AudioService;Ljava/lang/String;ILcom/android/server/audio/AudioService$1;)V
    .registers 5
    .param p1, "x0"  # Lcom/android/server/audio/AudioService;
    .param p2, "x1"  # Ljava/lang/String;
    .param p3, "x2"  # I
    .param p4, "x3"  # Lcom/android/server/audio/AudioService$1;

    .line 5358
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/audio/AudioService$VolumeStreamState;-><init>(Lcom/android/server/audio/AudioService;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/audio/AudioService$VolumeStreamState;)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/audio/AudioService$VolumeStreamState;

    .line 5358
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMuted:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/android/server/audio/AudioService$VolumeStreamState;Z)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/audio/AudioService$VolumeStreamState;
    .param p1, "x1"  # Z

    .line 5358
    iput-boolean p1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMuted:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/server/audio/AudioService$VolumeStreamState;)I
    .registers 2
    .param p0, "x0"  # Lcom/android/server/audio/AudioService$VolumeStreamState;

    .line 5358
    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    return v0
.end method

.method static synthetic access$1300(Lcom/android/server/audio/AudioService$VolumeStreamState;Ljava/io/PrintWriter;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/audio/AudioService$VolumeStreamState;
    .param p1, "x1"  # Ljava/io/PrintWriter;

    .line 5358
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method static synthetic access$1402(Lcom/android/server/audio/AudioService$VolumeStreamState;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/audio/AudioService$VolumeStreamState;
    .param p1, "x1"  # Ljava/lang/String;

    .line 5358
    iput-object p1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeIndexSettingName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/android/server/audio/AudioService$VolumeStreamState;)Landroid/util/SparseIntArray;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/audio/AudioService$VolumeStreamState;

    .line 5358
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/android/server/audio/AudioService$VolumeStreamState;)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/audio/AudioService$VolumeStreamState;

    .line 5358
    invoke-direct {p0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->hasValidSettingsName()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/audio/AudioService$VolumeStreamState;)I
    .registers 2
    .param p0, "x0"  # Lcom/android/server/audio/AudioService$VolumeStreamState;

    .line 5358
    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMin:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/audio/AudioService$VolumeStreamState;)I
    .registers 2
    .param p0, "x0"  # Lcom/android/server/audio/AudioService$VolumeStreamState;

    .line 5358
    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    return v0
.end method

.method private dump(Ljava/io/PrintWriter;)V
    .registers 9
    .param p1, "pw"  # Ljava/io/PrintWriter;

    .line 5828
    const-string v0, "   Muted: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5829
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMuted:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 5830
    const-string v0, "   Min: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5831
    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMin:I

    add-int/lit8 v0, v0, 0x5

    div-int/lit8 v0, v0, 0xa

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 5832
    const-string v0, "   Max: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5833
    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    add-int/lit8 v0, v0, 0x5

    div-int/lit8 v0, v0, 0xa

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 5834
    const-string v0, "   streamVolume:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioService;->getStreamVolume(I)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 5835
    const-string v0, "   Current: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5836
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3c
    iget-object v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    const-string v2, ", "

    const/high16 v3, 0x40000000  # 2.0f

    if-ge v0, v1, :cond_8c

    .line 5837
    if-lez v0, :cond_4d

    .line 5838
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5840
    :cond_4d
    iget-object v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v1

    .line 5841
    .local v1, "device":I
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5842
    if-ne v1, v3, :cond_5f

    const-string v2, "default"

    goto :goto_63

    .line 5843
    :cond_5f
    invoke-static {v1}, Landroid/media/AudioSystem;->getOutputDeviceName(I)Ljava/lang/String;

    move-result-object v2

    :goto_63
    nop

    .line 5844
    .local v2, "deviceName":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_77

    .line 5845
    const-string v3, " ("

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5846
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5847
    const-string v3, ")"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5849
    :cond_77
    const-string v3, ": "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5850
    iget-object v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x5

    div-int/lit8 v3, v3, 0xa

    .line 5851
    .local v3, "index":I
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 5836
    .end local v1  # "device":I
    .end local v2  # "deviceName":Ljava/lang/String;
    .end local v3  # "index":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_3c

    .line 5853
    .end local v0  # "i":I
    :cond_8c
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 5854
    const-string v0, "   Devices: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5855
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    invoke-static {v0, v1}, Lcom/android/server/audio/AudioService;->access$4000(Lcom/android/server/audio/AudioService;I)I

    move-result v0

    .line 5856
    .local v0, "devices":I
    const/4 v1, 0x0

    .local v1, "i":I
    const/4 v4, 0x0

    .line 5859
    .local v4, "n":I
    :goto_9e
    const/4 v5, 0x1

    shl-int/2addr v5, v1

    move v6, v5

    .local v6, "device":I
    if-eq v5, v3, :cond_b9

    .line 5860
    and-int v5, v0, v6

    if-eqz v5, :cond_b6

    .line 5861
    add-int/lit8 v5, v4, 0x1

    .end local v4  # "n":I
    .local v5, "n":I
    if-lez v4, :cond_ae

    .line 5862
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5864
    :cond_ae
    invoke-static {v6}, Landroid/media/AudioSystem;->getOutputDeviceName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move v4, v5

    .line 5866
    .end local v5  # "n":I
    .restart local v4  # "n":I
    :cond_b6
    add-int/lit8 v1, v1, 0x1

    goto :goto_9e

    .line 5868
    :cond_b9
    return-void
.end method

.method private getAbsoluteVolumeIndex(I)I
    .registers 5
    .param p1, "index"  # I

    .line 5511
    if-nez p1, :cond_4

    .line 5513
    const/4 p1, 0x0

    goto :goto_21

    .line 5514
    :cond_4
    if-lez p1, :cond_1b

    const/4 v0, 0x3

    if-gt p1, v0, :cond_1b

    .line 5516
    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$3700(Lcom/android/server/audio/AudioService;)[F

    move-result-object v1

    add-int/lit8 v2, p1, -0x1

    aget v1, v1, v2

    mul-float/2addr v0, v1

    float-to-int v0, v0

    div-int/lit8 p1, v0, 0xa

    goto :goto_21

    .line 5519
    :cond_1b
    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    add-int/lit8 v0, v0, 0x5

    div-int/lit8 p1, v0, 0xa

    .line 5521
    :goto_21
    return p1
.end method

.method private getValidIndex(I)I
    .registers 3
    .param p1, "index"  # I

    .line 5818
    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMin:I

    if-ge p1, v0, :cond_5

    .line 5819
    return v0

    .line 5820
    :cond_5
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$3400(Lcom/android/server/audio/AudioService;)Z

    move-result v0

    if-nez v0, :cond_13

    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    if-le p1, v0, :cond_12

    goto :goto_13

    .line 5824
    :cond_12
    return p1

    .line 5821
    :cond_13
    :goto_13
    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    return v0
.end method

.method private hasValidSettingsName()Z
    .registers 2

    .line 5420
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
    .param p1, "index"  # I
    .param p2, "device"  # I

    .line 5528
    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_c

    if-nez p1, :cond_c

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMuted:Z

    if-nez v0, :cond_c

    .line 5529
    const/4 p1, 0x1

    .line 5531
    :cond_c
    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    invoke-static {v0, p1, p2}, Landroid/media/AudioSystem;->setStreamVolumeIndexAS(III)I

    .line 5532
    return-void
.end method


# virtual methods
.method public adjustIndex(IILjava/lang/String;)Z
    .registers 5
    .param p1, "deltaIndex"  # I
    .param p2, "device"  # I
    .param p3, "caller"  # Ljava/lang/String;

    .line 5613
    invoke-virtual {p0, p2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0, v0, p2, p3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setIndex(IILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public applyAllVolumes()V
    .registers 6

    .line 5555
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$2000(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioDeviceBroker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/audio/AudioDeviceBroker;->isAvrcpAbsoluteVolumeSupported()Z

    move-result v0

    .line 5556
    .local v0, "isAvrcpAbsVolSupported":Z
    const-class v1, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v1

    .line 5559
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_e
    :try_start_e
    iget-object v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    const/high16 v4, 0x40000000  # 2.0f

    if-ge v2, v3, :cond_63

    .line 5560
    iget-object v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    .line 5561
    .local v3, "device":I
    if-eq v3, v4, :cond_60

    .line 5562
    iget-boolean v4, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMuted:Z

    if-eqz v4, :cond_26

    .line 5563
    const/4 v4, 0x0

    .local v4, "index":I
    goto :goto_5d

    .line 5564
    .end local v4  # "index":I
    :cond_26
    and-int/lit16 v4, v3, 0x380

    if-eqz v4, :cond_39

    if-eqz v0, :cond_39

    .line 5566
    invoke-virtual {p0, v3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x5

    div-int/lit8 v4, v4, 0xa

    invoke-direct {p0, v4}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getAbsoluteVolumeIndex(I)I

    move-result v4

    .restart local v4  # "index":I
    goto :goto_5d

    .line 5567
    .end local v4  # "index":I
    :cond_39
    iget-object v4, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget v4, v4, Lcom/android/server/audio/AudioService;->mFullVolumeDevices:I

    and-int/2addr v4, v3

    if-eqz v4, :cond_47

    .line 5568
    iget v4, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    add-int/lit8 v4, v4, 0x5

    div-int/lit8 v4, v4, 0xa

    .restart local v4  # "index":I
    goto :goto_5d

    .line 5569
    .end local v4  # "index":I
    :cond_47
    const/high16 v4, 0x8000000

    and-int/2addr v4, v3

    if-eqz v4, :cond_53

    .line 5570
    iget v4, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    add-int/lit8 v4, v4, 0x5

    div-int/lit8 v4, v4, 0xa

    .restart local v4  # "index":I
    goto :goto_5d

    .line 5572
    .end local v4  # "index":I
    :cond_53
    iget-object v4, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x5

    div-int/lit8 v4, v4, 0xa

    .line 5574
    .restart local v4  # "index":I
    :goto_5d
    invoke-direct {p0, v4, v3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setStreamVolumeIndex(II)V

    .line 5559
    .end local v3  # "device":I
    .end local v4  # "index":I
    :cond_60
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 5579
    .end local v2  # "i":I
    :cond_63
    iget-boolean v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMuted:Z

    if-eqz v2, :cond_69

    .line 5580
    const/4 v2, 0x0

    .local v2, "index":I
    goto :goto_71

    .line 5582
    .end local v2  # "index":I
    :cond_69
    invoke-virtual {p0, v4}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x5

    div-int/lit8 v2, v2, 0xa

    .line 5584
    .restart local v2  # "index":I
    :goto_71
    invoke-direct {p0, v2, v4}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setStreamVolumeIndex(II)V

    .line 5585
    .end local v2  # "index":I
    monitor-exit v1

    .line 5586
    return-void

    .line 5585
    :catchall_76
    move-exception v2

    monitor-exit v1
    :try_end_78
    .catchall {:try_start_e .. :try_end_78} :catchall_76

    throw v2
.end method

.method applyDeviceVolume_syncVSS(IZ)V
    .registers 6
    .param p1, "device"  # I
    .param p2, "isAvrcpAbsVolSupported"  # Z

    .line 5537
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMuted:Z

    if-eqz v0, :cond_6

    .line 5538
    const/4 v0, 0x0

    .local v0, "index":I
    goto :goto_3b

    .line 5539
    .end local v0  # "index":I
    :cond_6
    and-int/lit16 v0, p1, 0x380

    if-eqz v0, :cond_19

    if-eqz p2, :cond_19

    .line 5540
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    div-int/lit8 v0, v0, 0xa

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getAbsoluteVolumeIndex(I)I

    move-result v0

    .restart local v0  # "index":I
    goto :goto_3b

    .line 5541
    .end local v0  # "index":I
    :cond_19
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget v0, v0, Lcom/android/server/audio/AudioService;->mFullVolumeDevices:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_27

    .line 5542
    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    add-int/lit8 v0, v0, 0x5

    div-int/lit8 v0, v0, 0xa

    .restart local v0  # "index":I
    goto :goto_3b

    .line 5543
    .end local v0  # "index":I
    :cond_27
    const/high16 v0, 0x8000000

    and-int/2addr v0, p1

    if-eqz v0, :cond_33

    .line 5544
    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    add-int/lit8 v0, v0, 0x5

    div-int/lit8 v0, v0, 0xa

    .restart local v0  # "index":I
    goto :goto_3b

    .line 5546
    .end local v0  # "index":I
    :cond_33
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    div-int/lit8 v0, v0, 0xa

    .line 5549
    .restart local v0  # "index":I
    :goto_3b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "applyDeviceVolume: mStreamType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",device = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AS.AudioService"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5551
    invoke-direct {p0, v0, p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setStreamVolumeIndex(II)V

    .line 5552
    return-void
.end method

.method public applyMusicVolumes()V
    .registers 6

    .line 5589
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$2000(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioDeviceBroker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/audio/AudioDeviceBroker;->isAvrcpAbsoluteVolumeSupported()Z

    move-result v0

    .line 5590
    .local v0, "isAvrcpAbsVolSupported":Z
    const-class v1, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v1

    .line 5593
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_e
    :try_start_e
    iget-object v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_4a

    .line 5594
    iget-object v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    .line 5595
    .local v3, "device":I
    const/high16 v4, 0x40000000  # 2.0f

    if-eq v3, v4, :cond_47

    .line 5596
    iget-boolean v4, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMuted:Z

    if-eqz v4, :cond_26

    .line 5597
    const/4 v4, 0x0

    .local v4, "index":I
    goto :goto_44

    .line 5598
    .end local v4  # "index":I
    :cond_26
    and-int/lit16 v4, v3, 0x380

    if-eqz v4, :cond_2c

    if-nez v0, :cond_33

    :cond_2c
    iget-object v4, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget v4, v4, Lcom/android/server/audio/AudioService;->mFullVolumeDevices:I

    and-int/2addr v4, v3

    if-eqz v4, :cond_3a

    .line 5602
    :cond_33
    iget v4, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    add-int/lit8 v4, v4, 0x5

    div-int/lit8 v4, v4, 0xa

    .restart local v4  # "index":I
    goto :goto_44

    .line 5604
    .end local v4  # "index":I
    :cond_3a
    iget-object v4, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x5

    div-int/lit8 v4, v4, 0xa

    .line 5606
    .restart local v4  # "index":I
    :goto_44
    invoke-direct {p0, v4, v3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setStreamVolumeIndex(II)V

    .line 5593
    .end local v3  # "device":I
    .end local v4  # "index":I
    :cond_47
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 5609
    .end local v2  # "i":I
    :cond_4a
    monitor-exit v1

    .line 5610
    return-void

    .line 5609
    :catchall_4c
    move-exception v2

    monitor-exit v1
    :try_end_4e
    .catchall {:try_start_e .. :try_end_4e} :catchall_4c

    throw v2
.end method

.method public checkFixedVolumeDevices()V
    .registers 8

    .line 5800
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$2000(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioDeviceBroker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/audio/AudioDeviceBroker;->isAvrcpAbsoluteVolumeSupported()Z

    move-result v0

    .line 5801
    .local v0, "isAvrcpAbsVolSupported":Z
    const-class v1, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v1

    .line 5803
    :try_start_d
    sget-object v2, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    iget v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    aget v2, v2, v3

    const/4 v3, 0x3

    if-ne v2, v3, :cond_48

    .line 5804
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_17
    iget-object v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_48

    .line 5805
    iget-object v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    .line 5806
    .local v3, "device":I
    iget-object v4, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    .line 5807
    .local v4, "index":I
    iget-object v5, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget v5, v5, Lcom/android/server/audio/AudioService;->mFullVolumeDevices:I

    and-int/2addr v5, v3

    if-nez v5, :cond_3b

    iget-object v5, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget v5, v5, Lcom/android/server/audio/AudioService;->mFixedVolumeDevices:I

    and-int/2addr v5, v3

    if-eqz v5, :cond_42

    if-eqz v4, :cond_42

    .line 5809
    :cond_3b
    iget-object v5, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    iget v6, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    invoke-virtual {v5, v3, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 5811
    :cond_42
    invoke-virtual {p0, v3, v0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->applyDeviceVolume_syncVSS(IZ)V

    .line 5804
    .end local v3  # "device":I
    .end local v4  # "index":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 5814
    .end local v2  # "i":I
    :cond_48
    monitor-exit v1

    .line 5815
    return-void

    .line 5814
    :catchall_4a
    move-exception v2

    monitor-exit v1
    :try_end_4c
    .catchall {:try_start_d .. :try_end_4c} :catchall_4a

    throw v2
.end method

.method public getIndex(I)I
    .registers 6
    .param p1, "device"  # I

    .line 5683
    const-class v0, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v0

    .line 5684
    :try_start_3
    iget-object v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    const/4 v2, -0x1

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    .line 5685
    .local v1, "index":I
    if-ne v1, v2, :cond_15

    .line 5687
    iget-object v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    const/high16 v3, 0x40000000  # 2.0f

    invoke-virtual {v2, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    move v1, v2

    .line 5689
    :cond_15
    monitor-exit v0

    return v1

    .line 5690
    .end local v1  # "index":I
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v1
.end method

.method public getMaxIndex()I
    .registers 2

    .line 5700
    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    return v0
.end method

.method public getMinIndex()I
    .registers 2

    .line 5704
    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMin:I

    return v0
.end method

.method public getSettingNameForDevice(I)Ljava/lang/String;
    .registers 5
    .param p1, "device"  # I

    .line 5409
    invoke-direct {p0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->hasValidSettingsName()Z

    move-result v0

    if-nez v0, :cond_8

    .line 5410
    const/4 v0, 0x0

    return-object v0

    .line 5412
    :cond_8
    invoke-static {p1}, Landroid/media/AudioSystem;->getOutputDeviceName(I)Ljava/lang/String;

    move-result-object v0

    .line 5413
    .local v0, "suffix":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 5414
    iget-object v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeIndexSettingName:Ljava/lang/String;

    return-object v1

    .line 5416
    :cond_15
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeIndexSettingName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getStreamType()I
    .registers 2

    .line 5796
    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    return v0
.end method

.method public hasIndexForDevice(I)Z
    .registers 5
    .param p1, "device"  # I

    .line 5694
    const-class v0, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v0

    .line 5695
    :try_start_3
    iget-object v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    const/4 v2, -0x1

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    if-eq v1, v2, :cond_e

    const/4 v1, 0x1

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    monitor-exit v0

    return v1

    .line 5696
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public mute(Z)V
    .registers 12
    .param p1, "state"  # Z

    .line 5769
    const/4 v0, 0x0

    .line 5770
    .local v0, "changed":Z
    const-class v1, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v1

    .line 5771
    :try_start_4
    iget-boolean v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMuted:Z

    if-eq p1, v2, :cond_1b

    .line 5772
    const/4 v0, 0x1

    .line 5773
    iput-boolean p1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMuted:Z

    .line 5778
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

    .line 5785
    :cond_1b
    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_4 .. :try_end_1c} :catchall_37

    .line 5786
    if-eqz v0, :cond_36

    .line 5788
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.media.STREAM_MUTE_CHANGED_ACTION"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5789
    .local v1, "intent":Landroid/content/Intent;
    iget v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    const-string v3, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5790
    const-string v2, "android.media.EXTRA_STREAM_VOLUME_MUTED"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 5791
    iget-object v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2, v1}, Lcom/android/server/audio/AudioService;->access$3200(Lcom/android/server/audio/AudioService;Landroid/content/Intent;)V

    .line 5793
    .end local v1  # "intent":Landroid/content/Intent;
    :cond_36
    return-void

    .line 5785
    :catchall_37
    move-exception v2

    :try_start_38
    monitor-exit v1
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_37

    throw v2
.end method

.method public observeDevicesForStream_syncVSS(Z)I
    .registers 7
    .param p1, "checkOthers"  # Z

    .line 5388
    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    invoke-static {v0}, Landroid/media/AudioSystem;->getDevicesForStream(I)I

    move-result v0

    .line 5389
    .local v0, "devices":I
    iget v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mObservedDevices:I

    if-ne v0, v1, :cond_b

    .line 5390
    return v0

    .line 5392
    :cond_b
    iget v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mObservedDevices:I

    .line 5393
    .local v1, "prevDevices":I
    iput v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mObservedDevices:I

    .line 5394
    if-eqz p1, :cond_18

    .line 5396
    iget-object v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    invoke-static {v2, v3}, Lcom/android/server/audio/AudioService;->access$3100(Lcom/android/server/audio/AudioService;I)V

    .line 5399
    :cond_18
    sget-object v2, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    iget v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    aget v2, v2, v3

    if-ne v2, v3, :cond_23

    .line 5400
    invoke-static {v3, v1, v0}, Lcom/android/server/EventLogTags;->writeStreamDevicesChanged(III)V

    .line 5402
    :cond_23
    iget-object v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamDevicesChanged:Landroid/content/Intent;

    .line 5403
    const-string v4, "android.media.EXTRA_PREV_VOLUME_STREAM_DEVICES"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v3

    .line 5404
    const-string v4, "android.media.EXTRA_VOLUME_STREAM_DEVICES"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v3

    .line 5402
    invoke-static {v2, v3}, Lcom/android/server/audio/AudioService;->access$3200(Lcom/android/server/audio/AudioService;Landroid/content/Intent;)V

    .line 5405
    return v0
.end method

.method public readSettings()V
    .registers 12

    .line 5424
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$3300(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 5425
    :try_start_7
    const-class v1, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v1
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_d1

    .line 5427
    :try_start_a
    iget-object v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$3400(Lcom/android/server/audio/AudioService;)Z

    move-result v2

    const/high16 v3, 0x40000000  # 2.0f

    if-eqz v2, :cond_1e

    .line 5428
    iget-object v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    iget v4, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 5429
    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_a .. :try_end_1c} :catchall_ce

    :try_start_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_d1

    return-void

    .line 5435
    :cond_1e
    :try_start_1e
    iget v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    const/4 v4, 0x7

    if-ne v2, v4, :cond_3e

    .line 5438
    sget-object v2, Landroid/media/AudioSystem;->DEFAULT_STREAM_VOLUME:[I

    iget v4, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    aget v2, v2, v4

    mul-int/lit8 v2, v2, 0xa

    .line 5439
    .local v2, "index":I
    iget-object v4, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$3500(Lcom/android/server/audio/AudioService;)Z

    move-result v4

    if-eqz v4, :cond_36

    .line 5440
    iget v4, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    move v2, v4

    .line 5442
    :cond_36
    iget-object v4, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v3, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 5443
    monitor-exit v1
    :try_end_3c
    .catchall {:try_start_1e .. :try_end_3c} :catchall_ce

    :try_start_3c
    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_d1

    return-void

    .line 5445
    .end local v2  # "index":I
    :cond_3e
    :try_start_3e
    monitor-exit v1
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_ce

    .line 5446
    :try_start_3f
    monitor-exit v0
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_d1

    .line 5447
    const-class v1, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v1

    .line 5448
    const v0, 0x4fffffff  # 8.5899341E9f

    .line 5450
    .local v0, "remainingDevices":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_47
    if-eqz v0, :cond_c9

    .line 5451
    const/4 v4, 0x1

    shl-int v5, v4, v2

    .line 5452
    .local v5, "device":I
    and-int v6, v5, v0

    if-nez v6, :cond_52

    .line 5453
    goto/16 :goto_c5

    .line 5455
    :cond_52
    not-int v6, v5

    and-int/2addr v0, v6

    .line 5460
    const/4 v6, -0x1

    if-ne v5, v3, :cond_5e

    .line 5461
    :try_start_57
    sget-object v7, Landroid/media/AudioSystem;->DEFAULT_STREAM_VOLUME:[I

    iget v8, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    aget v7, v7, v8

    goto :goto_5f

    :cond_5e
    move v7, v6

    .line 5463
    .local v7, "defaultIndex":I
    :goto_5f
    invoke-direct {p0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->hasValidSettingsName()Z

    move-result v8

    if-nez v8, :cond_67

    .line 5464
    move v8, v7

    .local v8, "index":I
    goto :goto_77

    .line 5466
    .end local v8  # "index":I
    :cond_67
    invoke-virtual {p0, v5}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getSettingNameForDevice(I)Ljava/lang/String;

    move-result-object v8

    .line 5467
    .local v8, "name":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    .line 5468
    invoke-static {v9}, Lcom/android/server/audio/AudioService;->access$3600(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v9

    const/4 v10, -0x2

    .line 5467
    invoke-static {v9, v8, v7, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v9

    move v8, v9

    .line 5470
    .local v8, "index":I
    :goto_77
    if-ne v8, v6, :cond_ba

    .line 5477
    const/4 v6, 0x2

    if-ne v5, v6, :cond_80

    iget v9, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    if-eq v9, v6, :cond_87

    :cond_80
    if-ne v5, v6, :cond_99

    iget v9, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    const/4 v10, 0x3

    if-ne v9, v10, :cond_99

    .line 5481
    :cond_87
    sget-object v9, Landroid/media/AudioSystem;->DEFAULT_STREAM_VOLUME:[I

    iget v10, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    aget v9, v9, v10

    move v8, v9

    .line 5482
    iget-object v9, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    mul-int/lit8 v10, v8, 0xa

    invoke-direct {p0, v10}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getValidIndex(I)I

    move-result v10

    invoke-virtual {v9, v5, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 5486
    :cond_99
    iget v9, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    if-ne v9, v4, :cond_c5

    if-eq v5, v4, :cond_a8

    if-eq v5, v6, :cond_a8

    const/4 v4, 0x4

    if-eq v5, v4, :cond_a8

    const/16 v4, 0x80

    if-ne v5, v4, :cond_c5

    .line 5491
    :cond_a8
    sget-object v4, Landroid/media/AudioSystem;->DEFAULT_STREAM_VOLUME:[I

    iget v6, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    aget v4, v4, v6

    .line 5492
    .end local v8  # "index":I
    .local v4, "index":I
    iget-object v6, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    mul-int/lit8 v8, v4, 0xa

    invoke-direct {p0, v8}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getValidIndex(I)I

    move-result v8

    invoke-virtual {v6, v5, v8}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_c5

    .line 5498
    .end local v4  # "index":I
    .restart local v8  # "index":I
    :cond_ba
    iget-object v4, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    mul-int/lit8 v6, v8, 0xa

    invoke-direct {p0, v6}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getValidIndex(I)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 5450
    .end local v5  # "device":I
    .end local v7  # "defaultIndex":I
    .end local v8  # "index":I
    :cond_c5
    :goto_c5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_47

    .line 5500
    .end local v0  # "remainingDevices":I
    .end local v2  # "i":I
    :cond_c9
    monitor-exit v1

    .line 5501
    return-void

    .line 5500
    :catchall_cb
    move-exception v0

    monitor-exit v1
    :try_end_cd
    .catchall {:try_start_57 .. :try_end_cd} :catchall_cb

    throw v0

    .line 5445
    :catchall_ce
    move-exception v2

    :try_start_cf
    monitor-exit v1
    :try_end_d0
    .catchall {:try_start_cf .. :try_end_d0} :catchall_ce

    .end local p0  # "this":Lcom/android/server/audio/AudioService$VolumeStreamState;
    :try_start_d0
    throw v2

    .line 5446
    .restart local p0  # "this":Lcom/android/server/audio/AudioService$VolumeStreamState;
    :catchall_d1
    move-exception v1

    monitor-exit v0
    :try_end_d3
    .catchall {:try_start_d0 .. :try_end_d3} :catchall_d1

    throw v1
.end method

.method public setAllIndexes(Lcom/android/server/audio/AudioService$VolumeStreamState;Ljava/lang/String;)V
    .registers 10
    .param p1, "srcStream"  # Lcom/android/server/audio/AudioService$VolumeStreamState;
    .param p2, "caller"  # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "VolumeStreamState.class"
        }
    .end annotation

    .line 5717
    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    iget v1, p1, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    if-ne v0, v1, :cond_7

    .line 5718
    return-void

    .line 5720
    :cond_7
    invoke-virtual {p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getStreamType()I

    move-result v0

    .line 5723
    .local v0, "srcStreamType":I
    const/high16 v1, 0x40000000  # 2.0f

    invoke-virtual {p1, v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v1

    .line 5724
    .local v1, "index":I
    iget-object v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    invoke-static {v2, v1, v0, v3}, Lcom/android/server/audio/AudioService;->access$3900(Lcom/android/server/audio/AudioService;III)I

    move-result v1

    .line 5725
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1a
    iget-object v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_2e

    .line 5726
    iget-object v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v3, v4, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 5725
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    .line 5729
    .end local v2  # "i":I
    :cond_2e
    iget-object v2, p1, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    .line 5730
    .local v2, "srcMap":Landroid/util/SparseIntArray;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_31
    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_4d

    .line 5731
    invoke-virtual {v2, v3}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    .line 5732
    .local v4, "device":I
    invoke-virtual {v2, v3}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v1

    .line 5733
    iget-object v5, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget v6, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    invoke-static {v5, v1, v0, v6}, Lcom/android/server/audio/AudioService;->access$3900(Lcom/android/server/audio/AudioService;III)I

    move-result v1

    .line 5735
    invoke-virtual {p0, v1, v4, p2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setIndex(IILjava/lang/String;)Z

    .line 5730
    .end local v4  # "device":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_31

    .line 5737
    .end local v3  # "i":I
    :cond_4d
    return-void
.end method

.method public setAllIndexesForMusic(Ljava/lang/String;ZZ)V
    .registers 12
    .param p1, "prefix"  # Ljava/lang/String;
    .param p2, "setToMin"  # Z
    .param p3, "byRingerMode"  # Z

    .line 5748
    const-class v0, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v0

    .line 5749
    :try_start_3
    sget-object v1, Landroid/media/AudioSystem;->DEFAULT_STREAM_VOLUME:[I

    const/4 v2, 0x3

    aget v1, v1, v2

    .line 5750
    .local v1, "defaultIndex":I
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getSettingNameForDevice(I)Ljava/lang/String;

    move-result-object v3

    .line 5751
    .local v3, "name":Ljava/lang/String;
    const/4 v4, 0x0

    .line 5752
    .local v4, "index":I
    const/4 v5, -0x2

    if-eqz p2, :cond_36

    .line 5753
    iget-object v6, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v6}, Lcom/android/server/audio/AudioService;->access$3600(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {v6, v3, v1, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    move v4, v6

    .line 5755
    iget-object v6, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v6}, Lcom/android/server/audio/AudioService;->access$3600(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v4, v5}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 5757
    const/4 v4, 0x0

    goto :goto_50

    .line 5759
    :cond_36
    iget-object v6, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v6}, Lcom/android/server/audio/AudioService;->access$3600(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    move v4, v6

    .line 5762
    :goto_50
    iget-object v6, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v6}, Lcom/android/server/audio/AudioService;->access$3600(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {v6, v3, v4, v5}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 5764
    iget-object v5, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    mul-int/lit8 v6, v4, 0xa

    invoke-direct {p0, v6}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getValidIndex(I)I

    move-result v6

    invoke-virtual {v5, v2, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 5765
    .end local v1  # "defaultIndex":I
    .end local v3  # "name":Ljava/lang/String;
    .end local v4  # "index":I
    monitor-exit v0

    .line 5766
    return-void

    .line 5765
    :catchall_66
    move-exception v1

    monitor-exit v0
    :try_end_68
    .catchall {:try_start_3 .. :try_end_68} :catchall_66

    throw v1
.end method

.method public setAllIndexesToMax()V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "VolumeStreamState.class"
        }
    .end annotation

    .line 5742
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 5743
    iget-object v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    iget v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 5742
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 5745
    .end local v0  # "i":I
    :cond_17
    return-void
.end method

.method public setIndex(IILjava/lang/String;)Z
    .registers 15
    .param p1, "index"  # I
    .param p2, "device"  # I
    .param p3, "caller"  # Ljava/lang/String;

    .line 5619
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$3300(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 5620
    :try_start_7
    const-class v1, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v1
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_ed

    .line 5621
    :try_start_a
    invoke-virtual {p0, p2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v2

    .line 5622
    .local v2, "oldIndex":I
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getValidIndex(I)I

    move-result v3

    move p1, v3

    .line 5623
    iget v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    const/4 v4, 0x7

    if-ne v3, v4, :cond_23

    iget-object v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v3}, Lcom/android/server/audio/AudioService;->access$3500(Lcom/android/server/audio/AudioService;)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 5624
    iget v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    move p1, v3

    .line 5626
    :cond_23
    iget-object v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v3, p2, p1}, Landroid/util/SparseIntArray;->put(II)V

    .line 5628
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v2, p1, :cond_2e

    move v5, v4

    goto :goto_2f

    :cond_2e
    move v5, v3

    .line 5634
    .local v5, "changed":Z
    :goto_2f
    iget-object v6, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget v7, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    invoke-virtual {v6, v7}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v6

    if-ne p2, v6, :cond_3a

    goto :goto_3b

    :cond_3a
    move v4, v3

    .line 5635
    .local v4, "isCurrentDevice":Z
    :goto_3b
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v6

    .line 5636
    .local v6, "numStreamTypes":I
    add-int/lit8 v7, v6, -0x1

    .local v7, "streamType":I
    :goto_41
    if-ltz v7, :cond_78

    .line 5637
    iget-object v8, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v8}, Lcom/android/server/audio/AudioService;->access$3800(Lcom/android/server/audio/AudioService;)[Lcom/android/server/audio/AudioService$VolumeStreamState;

    move-result-object v8

    aget-object v8, v8, v7

    .line 5638
    .local v8, "aliasStreamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    iget v9, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    if-eq v7, v9, :cond_75

    sget-object v9, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v9, v9, v7

    iget v10, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    if-ne v9, v10, :cond_75

    if-nez v5, :cond_5f

    .line 5640
    invoke-virtual {v8, p2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->hasIndexForDevice(I)Z

    move-result v9

    if-nez v9, :cond_75

    .line 5641
    :cond_5f
    iget-object v9, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget v10, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    invoke-static {v9, p1, v10, v7}, Lcom/android/server/audio/AudioService;->access$3900(Lcom/android/server/audio/AudioService;III)I

    move-result v9

    .line 5642
    .local v9, "scaledIndex":I
    invoke-virtual {v8, v9, p2, p3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setIndex(IILjava/lang/String;)Z

    .line 5643
    if-eqz v4, :cond_75

    .line 5644
    iget-object v10, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    .line 5645
    invoke-virtual {v10, v7}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v10

    .line 5644
    invoke-virtual {v8, v9, v10, p3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setIndex(IILjava/lang/String;)Z

    .line 5636
    .end local v8  # "aliasStreamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    .end local v9  # "scaledIndex":I
    :cond_75
    add-int/lit8 v7, v7, -0x1

    goto :goto_41

    .line 5650
    .end local v7  # "streamType":I
    :cond_78
    if-eqz v5, :cond_9c

    iget v7, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_9c

    if-ne p2, v8, :cond_9c

    .line 5652
    nop

    .local v3, "i":I
    :goto_82
    iget-object v7, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v7}, Landroid/util/SparseIntArray;->size()I

    move-result v7

    if-ge v3, v7, :cond_9c

    .line 5653
    iget-object v7, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v3}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v7

    .line 5654
    .local v7, "otherDevice":I
    and-int/lit8 v8, v7, 0x70

    if-eqz v8, :cond_99

    .line 5655
    iget-object v8, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v8, v7, p1}, Landroid/util/SparseIntArray;->put(II)V

    .line 5652
    .end local v7  # "otherDevice":I
    :cond_99
    add-int/lit8 v3, v3, 0x1

    goto :goto_82

    .line 5659
    .end local v3  # "i":I
    .end local v4  # "isCurrentDevice":Z
    .end local v6  # "numStreamTypes":I
    :cond_9c
    monitor-exit v1
    :try_end_9d
    .catchall {:try_start_a .. :try_end_9d} :catchall_ea

    .line 5660
    :try_start_9d
    monitor-exit v0
    :try_end_9e
    .catchall {:try_start_9d .. :try_end_9e} :catchall_ed

    .line 5661
    if-eqz v5, :cond_e9

    .line 5662
    add-int/lit8 v0, v2, 0x5

    div-int/lit8 v2, v0, 0xa

    .line 5663
    add-int/lit8 v0, p1, 0x5

    div-int/lit8 p1, v0, 0xa

    .line 5665
    sget-object v0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    iget v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    aget v0, v0, v1

    if-ne v0, v1, :cond_c7

    .line 5666
    if-nez p3, :cond_be

    .line 5667
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    const-string v1, "AS.AudioService"

    const-string v3, "No caller for volume_changed event"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5669
    :cond_be
    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    iget v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    div-int/lit8 v1, v1, 0xa

    invoke-static {v0, v2, p1, v1, p3}, Lcom/android/server/EventLogTags;->writeVolumeChanged(IIIILjava/lang/String;)V

    .line 5673
    :cond_c7
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeChanged:Landroid/content/Intent;

    const-string v1, "android.media.EXTRA_VOLUME_STREAM_VALUE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5674
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeChanged:Landroid/content/Intent;

    const-string v1, "android.media.EXTRA_PREV_VOLUME_STREAM_VALUE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5675
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeChanged:Landroid/content/Intent;

    sget-object v1, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    iget v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    aget v1, v1, v3

    const-string v3, "android.media.EXTRA_VOLUME_STREAM_TYPE_ALIAS"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5677
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeChanged:Landroid/content/Intent;

    invoke-static {v0, v1}, Lcom/android/server/audio/AudioService;->access$3200(Lcom/android/server/audio/AudioService;Landroid/content/Intent;)V

    .line 5679
    :cond_e9
    return v5

    .line 5659
    .end local v2  # "oldIndex":I
    .end local v5  # "changed":Z
    :catchall_ea
    move-exception v2

    :try_start_eb
    monitor-exit v1
    :try_end_ec
    .catchall {:try_start_eb .. :try_end_ec} :catchall_ea

    .end local p0  # "this":Lcom/android/server/audio/AudioService$VolumeStreamState;
    .end local p1  # "index":I
    .end local p2  # "device":I
    .end local p3  # "caller":Ljava/lang/String;
    :try_start_ec
    throw v2

    .line 5660
    .restart local p0  # "this":Lcom/android/server/audio/AudioService$VolumeStreamState;
    .restart local p1  # "index":I
    .restart local p2  # "device":I
    .restart local p3  # "caller":Ljava/lang/String;
    :catchall_ed
    move-exception v1

    monitor-exit v0
    :try_end_ef
    .catchall {:try_start_ec .. :try_end_ef} :catchall_ed

    throw v1
.end method
