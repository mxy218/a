.class final Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;
.super Lcom/android/server/display/DisplayDevice;
.source "WifiDisplayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/WifiDisplayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "WifiDisplayDevice"
.end annotation


# instance fields
.field private final mAddress:Landroid/view/DisplayAddress;

.field private final mFlags:I

.field private final mHeight:I

.field private mInfo:Lcom/android/server/display/DisplayDeviceInfo;

.field private final mMode:Landroid/view/Display$Mode;

.field private mName:Ljava/lang/String;

.field private final mRefreshRate:F

.field private mSurface:Landroid/view/Surface;

.field private final mWidth:I

.field final synthetic this$0:Lcom/android/server/display/WifiDisplayAdapter;


# direct methods
.method public constructor <init>(Lcom/android/server/display/WifiDisplayAdapter;Landroid/os/IBinder;Ljava/lang/String;IIFILjava/lang/String;Landroid/view/Surface;)V
    .registers 12
    .param p2, "displayToken"  # Landroid/os/IBinder;
    .param p3, "name"  # Ljava/lang/String;
    .param p4, "width"  # I
    .param p5, "height"  # I
    .param p6, "refreshRate"  # F
    .param p7, "flags"  # I
    .param p8, "address"  # Ljava/lang/String;
    .param p9, "surface"  # Landroid/view/Surface;

    .line 631
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    .line 632
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "wifi:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/display/DisplayDevice;-><init>(Lcom/android/server/display/DisplayAdapter;Landroid/os/IBinder;Ljava/lang/String;)V

    .line 633
    iput-object p3, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mName:Ljava/lang/String;

    .line 634
    iput p4, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mWidth:I

    .line 635
    iput p5, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mHeight:I

    .line 636
    iput p6, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mRefreshRate:F

    .line 637
    iput p7, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mFlags:I

    .line 638
    invoke-static {p8}, Landroid/view/DisplayAddress;->fromMacAddress(Ljava/lang/String;)Landroid/view/DisplayAddress$Network;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mAddress:Landroid/view/DisplayAddress;

    .line 639
    iput-object p9, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mSurface:Landroid/view/Surface;

    .line 640
    invoke-static {p4, p5, p6}, Lcom/android/server/display/DisplayAdapter;->createMode(IIF)Landroid/view/Display$Mode;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mMode:Landroid/view/Display$Mode;

    .line 641
    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;

    .line 617
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mName:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public destroyLocked()V
    .registers 2

    .line 649
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_a

    .line 650
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 651
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mSurface:Landroid/view/Surface;

    .line 653
    :cond_a
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->getDisplayTokenLocked()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/SurfaceControl;->destroyDisplay(Landroid/os/IBinder;)V

    .line 654
    return-void
.end method

.method public getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;
    .registers 6

    .line 670
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    if-nez v0, :cond_5e

    .line 671
    new-instance v0, Lcom/android/server/display/DisplayDeviceInfo;

    invoke-direct {v0}, Lcom/android/server/display/DisplayDeviceInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 672
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mName:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->name:Ljava/lang/String;

    .line 673
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->getUniqueId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->uniqueId:Ljava/lang/String;

    .line 674
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v1, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mWidth:I

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    .line 675
    iget v1, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mHeight:I

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    .line 676
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mMode:Landroid/view/Display$Mode;

    invoke-virtual {v1}, Landroid/view/Display$Mode;->getModeId()I

    move-result v1

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->modeId:I

    .line 677
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mMode:Landroid/view/Display$Mode;

    invoke-virtual {v1}, Landroid/view/Display$Mode;->getModeId()I

    move-result v1

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->defaultModeId:I

    .line 678
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/view/Display$Mode;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mMode:Landroid/view/Display$Mode;

    aput-object v3, v1, v2

    iput-object v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->supportedModes:[Landroid/view/Display$Mode;

    .line 679
    const-wide/32 v1, 0x3b9aca00

    iget v3, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mRefreshRate:F

    float-to-int v3, v3

    int-to-long v3, v3

    div-long/2addr v1, v3

    iput-wide v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->presentationDeadlineNanos:J

    .line 680
    iget v1, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mFlags:I

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 681
    const/4 v1, 0x3

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    .line 682
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mAddress:Landroid/view/DisplayAddress;

    iput-object v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->address:Landroid/view/DisplayAddress;

    .line 683
    const/4 v1, 0x2

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->touch:I

    .line 684
    iget v1, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mWidth:I

    iget v2, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/display/DisplayDeviceInfo;->setAssumedDensityForExternalDisplay(II)V

    .line 686
    :cond_5e
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    return-object v0
.end method

.method public hasStableUniqueId()Z
    .registers 2

    .line 645
    const/4 v0, 0x1

    return v0
.end method

.method public performTraversalLocked(Landroid/view/SurfaceControl$Transaction;)V
    .registers 3
    .param p1, "t"  # Landroid/view/SurfaceControl$Transaction;

    .line 663
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_7

    .line 664
    invoke-virtual {p0, p1, v0}, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->setSurfaceLocked(Landroid/view/SurfaceControl$Transaction;Landroid/view/Surface;)V

    .line 666
    :cond_7
    return-void
.end method

.method public setNameLocked(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"  # Ljava/lang/String;

    .line 657
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mName:Ljava/lang/String;

    .line 658
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 659
    return-void
.end method
