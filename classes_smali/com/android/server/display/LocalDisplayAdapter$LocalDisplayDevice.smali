.class final Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;
.super Lcom/android/server/display/DisplayDevice;
.source "LocalDisplayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/LocalDisplayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LocalDisplayDevice"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mActiveColorMode:I

.field private mActiveColorModeInvalid:Z

.field private mActiveModeId:I

.field private mActiveModeInvalid:Z

.field private mActivePhysIndex:I

.field private mAllowedModeIds:[I

.field private mAllowedModeIdsInvalid:Z

.field private mAllowedPhysIndexes:[I

.field private final mBacklight:Lcom/android/server/lights/Light;

.field private mBrightness:I

.field private mDefaultModeId:I

.field private mDisplayInfos:[Landroid/view/SurfaceControl$PhysicalDisplayInfo;

.field private mHavePendingChanges:Z

.field private mHdrCapabilities:Landroid/view/Display$HdrCapabilities;

.field private mInfo:Lcom/android/server/display/DisplayDeviceInfo;

.field private final mIsInternal:Z

.field private final mPhysicalDisplayId:J

.field private mSidekickActive:Z

.field private mSidekickInternal:Landroid/hardware/sidekick/SidekickInternal;

.field private mState:I

.field private final mSupportedColorModes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mSupportedModes:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/display/LocalDisplayAdapter;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 166
    const-class v0, Lcom/android/server/display/LocalDisplayAdapter;

    return-void
.end method

.method constructor <init>(Lcom/android/server/display/LocalDisplayAdapter;Landroid/os/IBinder;J[Landroid/view/SurfaceControl$PhysicalDisplayInfo;I[I[IIZ)V
    .registers 23
    .param p2, "displayToken"  # Landroid/os/IBinder;
    .param p3, "physicalDisplayId"  # J
    .param p5, "physicalDisplayInfos"  # [Landroid/view/SurfaceControl$PhysicalDisplayInfo;
    .param p6, "activeDisplayInfo"  # I
    .param p7, "allowedDisplayInfos"  # [I
    .param p8, "colorModes"  # [I
    .param p9, "activeColorMode"  # I
    .param p10, "isInternal"  # Z

    .line 195
    move-object v6, p0

    move-object v0, p1

    move-wide v7, p3

    iput-object v0, v6, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    .line 196
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "local:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v9, p2

    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/display/DisplayDevice;-><init>(Lcom/android/server/display/DisplayAdapter;Landroid/os/IBinder;Ljava/lang/String;)V

    .line 169
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, v6, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    .line 170
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v6, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedColorModes:Ljava/util/ArrayList;

    .line 175
    const/4 v10, 0x0

    iput v10, v6, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mState:I

    .line 176
    const/4 v0, -0x1

    iput v0, v6, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mBrightness:I

    .line 197
    iput-wide v7, v6, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mPhysicalDisplayId:J

    .line 198
    move/from16 v11, p10

    iput-boolean v11, v6, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mIsInternal:Z

    .line 199
    move-object v0, p0

    move-object/from16 v1, p5

    move/from16 v2, p6

    move-object/from16 v3, p7

    move-object/from16 v4, p8

    move/from16 v5, p9

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->updatePhysicalDisplayInfoLocked([Landroid/view/SurfaceControl$PhysicalDisplayInfo;I[I[II)Z

    .line 201
    move-object/from16 v0, p8

    move/from16 v1, p9

    invoke-direct {p0, v0, v1}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->updateColorModesLocked([II)Z

    .line 202
    const-class v2, Landroid/hardware/sidekick/SidekickInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/sidekick/SidekickInternal;

    iput-object v2, v6, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSidekickInternal:Landroid/hardware/sidekick/SidekickInternal;

    .line 203
    iget-boolean v2, v6, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mIsInternal:Z

    if-eqz v2, :cond_67

    .line 204
    const-class v2, Lcom/android/server/lights/LightsManager;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/lights/LightsManager;

    .line 205
    .local v2, "lights":Lcom/android/server/lights/LightsManager;
    invoke-virtual {v2, v10}, Lcom/android/server/lights/LightsManager;->getLight(I)Lcom/android/server/lights/Light;

    move-result-object v3

    iput-object v3, v6, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mBacklight:Lcom/android/server/lights/Light;

    .line 206
    .end local v2  # "lights":Lcom/android/server/lights/LightsManager;
    goto :goto_6a

    .line 207
    :cond_67
    const/4 v2, 0x0

    iput-object v2, v6, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mBacklight:Lcom/android/server/lights/Light;

    .line 209
    :goto_6a
    invoke-static {p2}, Landroid/view/SurfaceControl;->getHdrCapabilities(Landroid/os/IBinder;)Landroid/view/Display$HdrCapabilities;

    move-result-object v2

    iput-object v2, v6, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mHdrCapabilities:Landroid/view/Display$HdrCapabilities;

    .line 210
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;)Lcom/android/server/lights/Light;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    .line 166
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mBacklight:Lcom/android/server/lights/Light;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    .line 166
    iget-boolean v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSidekickActive:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;Z)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;
    .param p1, "x1"  # Z

    .line 166
    iput-boolean p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSidekickActive:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;)Landroid/hardware/sidekick/SidekickInternal;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    .line 166
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSidekickInternal:Landroid/hardware/sidekick/SidekickInternal;

    return-object v0
.end method

.method private findDisplayInfoIndexLocked(I)I
    .registers 6
    .param p1, "modeId"  # I

    .line 821
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;

    .line 822
    .local v0, "record":Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;
    if-eqz v0, :cond_1c

    .line 823
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    iget-object v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDisplayInfos:[Landroid/view/SurfaceControl$PhysicalDisplayInfo;

    array-length v3, v2

    if-ge v1, v3, :cond_1c

    .line 824
    aget-object v2, v2, v1

    .line 825
    .local v2, "info":Landroid/view/SurfaceControl$PhysicalDisplayInfo;
    invoke-virtual {v0, v2}, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->hasMatchingMode(Landroid/view/SurfaceControl$PhysicalDisplayInfo;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 826
    return v1

    .line 823
    .end local v2  # "info":Landroid/view/SurfaceControl$PhysicalDisplayInfo;
    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 830
    .end local v1  # "i":I
    :cond_1c
    const/4 v1, -0x1

    return v1
.end method

.method private findDisplayModeRecord(Landroid/view/SurfaceControl$PhysicalDisplayInfo;)Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;
    .registers 5
    .param p1, "info"  # Landroid/view/SurfaceControl$PhysicalDisplayInfo;

    .line 375
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1b

    .line 376
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;

    .line 377
    .local v1, "record":Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;
    invoke-virtual {v1, p1}, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->hasMatchingMode(Landroid/view/SurfaceControl$PhysicalDisplayInfo;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 378
    return-object v1

    .line 375
    .end local v1  # "record":Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;
    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 381
    .end local v0  # "i":I
    :cond_1b
    const/4 v0, 0x0

    return-object v0
.end method

.method private findMatchingModeIdLocked(I)I
    .registers 6
    .param p1, "physIndex"  # I

    .line 834
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDisplayInfos:[Landroid/view/SurfaceControl$PhysicalDisplayInfo;

    aget-object v0, v0, p1

    .line 835
    .local v0, "info":Landroid/view/SurfaceControl$PhysicalDisplayInfo;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    iget-object v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_25

    .line 836
    iget-object v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;

    .line 837
    .local v2, "record":Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;
    invoke-virtual {v2, v0}, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->hasMatchingMode(Landroid/view/SurfaceControl$PhysicalDisplayInfo;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 838
    iget-object v3, v2, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->mMode:Landroid/view/Display$Mode;

    invoke-virtual {v3}, Landroid/view/Display$Mode;->getModeId()I

    move-result v3

    return v3

    .line 835
    .end local v2  # "record":Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;
    :cond_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 841
    .end local v1  # "i":I
    :cond_25
    const/4 v1, 0x0

    return v1
.end method

.method private getDisplayModes(Landroid/util/SparseArray;)[Landroid/view/Display$Mode;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;",
            ">;)[",
            "Landroid/view/Display$Mode;"
        }
    .end annotation

    .line 850
    .local p1, "records":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;>;"
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 851
    .local v0, "size":I
    new-array v1, v0, [Landroid/view/Display$Mode;

    .line 852
    .local v1, "modes":[Landroid/view/Display$Mode;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    if-ge v2, v0, :cond_16

    .line 853
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;

    .line 854
    .local v3, "record":Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;
    iget-object v4, v3, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->mMode:Landroid/view/Display$Mode;

    aput-object v4, v1, v2

    .line 852
    .end local v3  # "record":Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 856
    .end local v2  # "i":I
    :cond_16
    return-object v1
.end method

.method private isDisplayPrivate(Landroid/view/DisplayAddress$Physical;)Z
    .registers 9
    .param p1, "physicalAddress"  # Landroid/view/DisplayAddress$Physical;

    .line 860
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 861
    return v0

    .line 863
    :cond_4
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-virtual {v1}, Lcom/android/server/display/LocalDisplayAdapter;->getOverlayContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 864
    .local v1, "res":Landroid/content/res/Resources;
    const v2, 0x1070041

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    .line 866
    .local v2, "ports":[I
    if-eqz v2, :cond_28

    .line 867
    invoke-virtual {p1}, Landroid/view/DisplayAddress$Physical;->getPort()B

    move-result v3

    .line 868
    .local v3, "port":I
    array-length v4, v2

    move v5, v0

    :goto_1d
    if-ge v5, v4, :cond_28

    aget v6, v2, v5

    .line 869
    .local v6, "p":I
    if-ne v6, v3, :cond_25

    .line 870
    const/4 v0, 0x1

    return v0

    .line 868
    .end local v6  # "p":I
    :cond_25
    add-int/lit8 v5, v5, 0x1

    goto :goto_1d

    .line 874
    .end local v3  # "port":I
    :cond_28
    return v0
.end method

.method private updateColorModesLocked([II)Z
    .registers 11
    .param p1, "colorModes"  # [I
    .param p2, "activeColorMode"  # I

    .line 324
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 326
    .local v0, "pendingColorModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    if-nez p1, :cond_9

    return v1

    .line 328
    :cond_9
    const/4 v2, 0x0

    .line 329
    .local v2, "colorModesAdded":Z
    array-length v3, p1

    move v4, v2

    move v2, v1

    .end local v2  # "colorModesAdded":Z
    .local v4, "colorModesAdded":Z
    :goto_d
    if-ge v2, v3, :cond_28

    aget v5, p1, v2

    .line 330
    .local v5, "colorMode":I
    iget-object v6, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedColorModes:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1e

    .line 331
    const/4 v4, 0x1

    .line 333
    :cond_1e
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 329
    .end local v5  # "colorMode":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 336
    :cond_28
    nop

    .line 337
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedColorModes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v5, 0x1

    if-ne v2, v3, :cond_3b

    if-eqz v4, :cond_39

    goto :goto_3b

    :cond_39
    move v2, v1

    goto :goto_3c

    :cond_3b
    :goto_3b
    move v2, v5

    .line 341
    .local v2, "colorModesChanged":Z
    :goto_3c
    if-nez v2, :cond_3f

    .line 342
    return v1

    .line 345
    :cond_3f
    iput-boolean v5, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mHavePendingChanges:Z

    .line 347
    iget-object v3, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedColorModes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 348
    iget-object v3, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedColorModes:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 349
    iget-object v3, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedColorModes:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 352
    iget-object v3, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedColorModes:Ljava/util/ArrayList;

    iget v6, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveColorMode:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_91

    .line 353
    iget v3, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveColorMode:I

    const-string v6, "LocalDisplayAdapter"

    if-eqz v3, :cond_6e

    .line 354
    const-string v3, "Active color mode no longer available, reverting to default mode."

    invoke-static {v6, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    iput v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveColorMode:I

    .line 357
    iput-boolean v5, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveColorModeInvalid:Z

    goto :goto_91

    .line 359
    :cond_6e
    iget-object v3, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedColorModes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_8c

    .line 361
    const-string v3, "Default and active color mode is no longer available! Reverting to first available mode."

    invoke-static {v6, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    iget-object v3, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedColorModes:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveColorMode:I

    .line 364
    iput-boolean v5, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveColorModeInvalid:Z

    goto :goto_91

    .line 367
    :cond_8c
    const-string v1, "No color modes available!"

    invoke-static {v6, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    :cond_91
    :goto_91
    return v5
.end method

.method private updateDeviceInfoLocked()V
    .registers 3

    .line 845
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 846
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    const/4 v1, 0x2

    invoke-virtual {v0, p0, v1}, Lcom/android/server/display/LocalDisplayAdapter;->sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    .line 847
    return-void
.end method


# virtual methods
.method public applyPendingDisplayDeviceInfoChangesLocked()V
    .registers 2

    .line 386
    iget-boolean v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mHavePendingChanges:Z

    if-eqz v0, :cond_a

    .line 387
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 388
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mHavePendingChanges:Z

    .line 390
    :cond_a
    return-void
.end method

.method public dumpLocked(Ljava/io/PrintWriter;)V
    .registers 6
    .param p1, "pw"  # Ljava/io/PrintWriter;

    .line 790
    invoke-super {p0, p1}, Lcom/android/server/display/DisplayDevice;->dumpLocked(Ljava/io/PrintWriter;)V

    .line 791
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mPhysicalDisplayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mPhysicalDisplayId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 792
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mAllowedPhysIndexes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mAllowedPhysIndexes:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 793
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mAllowedModeIds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mAllowedModeIds:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 794
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mAllowedModeIdsInvalid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mAllowedModeIdsInvalid:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 795
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mActivePhysIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActivePhysIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 796
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mActiveModeId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveModeId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 797
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mActiveColorMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveColorMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 798
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mDefaultModeId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDefaultModeId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 799
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mState:I

    invoke-static {v1}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 800
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mBrightness:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 801
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mBacklight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mBacklight:Lcom/android/server/lights/Light;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 802
    const-string/jumbo v0, "mDisplayInfos="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 803
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_113
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDisplayInfos:[Landroid/view/SurfaceControl$PhysicalDisplayInfo;

    array-length v1, v1

    const-string v2, "  "

    if-ge v0, v1, :cond_133

    .line 804
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDisplayInfos:[Landroid/view/SurfaceControl$PhysicalDisplayInfo;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 803
    add-int/lit8 v0, v0, 0x1

    goto :goto_113

    .line 806
    .end local v0  # "i":I
    :cond_133
    const-string/jumbo v0, "mSupportedModes="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 807
    const/4 v0, 0x0

    .restart local v0  # "i":I
    :goto_13a
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_15d

    .line 808
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 807
    add-int/lit8 v0, v0, 0x1

    goto :goto_13a

    .line 810
    .end local v0  # "i":I
    :cond_15d
    const-string/jumbo v0, "mSupportedColorModes=["

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 811
    const/4 v0, 0x0

    .restart local v0  # "i":I
    :goto_164
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedColorModes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_17f

    .line 812
    if-eqz v0, :cond_173

    .line 813
    const-string v1, ", "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 815
    :cond_173
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedColorModes:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 811
    add-int/lit8 v0, v0, 0x1

    goto :goto_164

    .line 817
    .end local v0  # "i":I
    :cond_17f
    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 818
    return-void
.end method

.method public getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;
    .registers 11

    .line 394
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    if-nez v0, :cond_1e8

    .line 395
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDisplayInfos:[Landroid/view/SurfaceControl$PhysicalDisplayInfo;

    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActivePhysIndex:I

    aget-object v0, v0, v1

    .line 396
    .local v0, "phys":Landroid/view/SurfaceControl$PhysicalDisplayInfo;
    new-instance v1, Lcom/android/server/display/DisplayDeviceInfo;

    invoke-direct {v1}, Lcom/android/server/display/DisplayDeviceInfo;-><init>()V

    iput-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 397
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v2, v0, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->width:I

    iput v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    .line 398
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v2, v0, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->height:I

    iput v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    .line 399
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveModeId:I

    iput v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->modeId:I

    .line 400
    iget v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDefaultModeId:I

    iput v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->defaultModeId:I

    .line 401
    iget-object v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    invoke-direct {p0, v2}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->getDisplayModes(Landroid/util/SparseArray;)[Landroid/view/Display$Mode;

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->supportedModes:[Landroid/view/Display$Mode;

    .line 402
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveColorMode:I

    iput v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->colorMode:I

    .line 403
    iget-object v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedColorModes:Ljava/util/ArrayList;

    .line 404
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [I

    iput-object v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->supportedColorModes:[I

    .line 405
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_40
    iget-object v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedColorModes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_5d

    .line 406
    iget-object v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v2, v2, Lcom/android/server/display/DisplayDeviceInfo;->supportedColorModes:[I

    iget-object v3, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedColorModes:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v2, v1

    .line 405
    add-int/lit8 v1, v1, 0x1

    goto :goto_40

    .line 408
    .end local v1  # "i":I
    :cond_5d
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mHdrCapabilities:Landroid/view/Display$HdrCapabilities;

    iput-object v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->hdrCapabilities:Landroid/view/Display$HdrCapabilities;

    .line 409
    iget-wide v2, v0, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->appVsyncOffsetNanos:J

    iput-wide v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->appVsyncOffsetNanos:J

    .line 410
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-wide v2, v0, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->presentationDeadlineNanos:J

    iput-wide v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->presentationDeadlineNanos:J

    .line 411
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mState:I

    iput v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->state:I

    .line 412
    invoke-virtual {p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->getUniqueId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->uniqueId:Ljava/lang/String;

    .line 413
    iget-wide v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mPhysicalDisplayId:J

    .line 414
    invoke-static {v1, v2}, Landroid/view/DisplayAddress;->fromPhysicalDisplayId(J)Landroid/view/DisplayAddress$Physical;

    move-result-object v1

    .line 415
    .local v1, "physicalAddress":Landroid/view/DisplayAddress$Physical;
    iget-object v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iput-object v1, v2, Lcom/android/server/display/DisplayDeviceInfo;->address:Landroid/view/DisplayAddress;

    .line 419
    iget-boolean v2, v0, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->secure:Z

    if-eqz v2, :cond_8d

    .line 420
    iget-object v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    const/16 v3, 0xc

    iput v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 424
    :cond_8d
    iget-object v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-virtual {v2}, Lcom/android/server/display/LocalDisplayAdapter;->getOverlayContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 425
    .local v2, "res":Landroid/content/res/Resources;
    iget-object v3, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v3, v3, Lcom/android/server/display/DisplayDeviceInfo;->address:Landroid/view/DisplayAddress;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_ad

    .line 426
    iget-object v3, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v3, v3, Lcom/android/server/display/DisplayDeviceInfo;->address:Landroid/view/DisplayAddress;

    check-cast v3, Landroid/view/DisplayAddress$Physical;

    invoke-virtual {v3}, Landroid/view/DisplayAddress$Physical;->getPort()B

    move-result v3

    if-gez v3, :cond_ad

    move v3, v5

    goto :goto_ae

    :cond_ad
    move v3, v4

    .line 427
    .local v3, "isBuiltIn":Z
    :goto_ae
    iget-boolean v6, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mIsInternal:Z

    const/4 v7, 0x3

    const v8, 0x10401ff

    if-eqz v6, :cond_123

    .line 428
    iget-object v6, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lcom/android/server/display/DisplayDeviceInfo;->name:Ljava/lang/String;

    .line 430
    iget-object v6, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v8, v6, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    or-int/2addr v7, v8

    iput v7, v6, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 432
    const v6, 0x1110096

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    if-nez v6, :cond_db

    sget-boolean v6, Landroid/os/Build;->IS_EMULATOR:Z

    if-eqz v6, :cond_e3

    .line 434
    const-string/jumbo v6, "ro.emulator.circular"

    invoke-static {v6, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_e3

    .line 435
    :cond_db
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v6, v4, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    or-int/lit16 v6, v6, 0x100

    iput v6, v4, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 437
    :cond_e3
    const v4, 0x1110097

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_f4

    .line 439
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v6, v4, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    or-int/lit16 v6, v6, 0x800

    iput v6, v4, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 441
    :cond_f4
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v6, v4, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    iget-object v7, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v7, v7, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    invoke-static {v2, v6, v7}, Landroid/view/DisplayCutout;->fromResourcesRectApproximation(Landroid/content/res/Resources;II)Landroid/view/DisplayCutout;

    move-result-object v6

    iput-object v6, v4, Lcom/android/server/display/DisplayDeviceInfo;->displayCutout:Landroid/view/DisplayCutout;

    .line 443
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iput v5, v4, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    .line 444
    iget v6, v0, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->density:F

    const/high16 v7, 0x43200000  # 160.0f

    mul-float/2addr v6, v7

    const/high16 v7, 0x3f000000  # 0.5f

    add-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, v4, Lcom/android/server/display/DisplayDeviceInfo;->densityDpi:I

    .line 445
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v6, v0, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->xDpi:F

    iput v6, v4, Lcom/android/server/display/DisplayDeviceInfo;->xDpi:F

    .line 446
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v6, v0, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->yDpi:F

    iput v6, v4, Lcom/android/server/display/DisplayDeviceInfo;->yDpi:F

    .line 447
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iput v5, v4, Lcom/android/server/display/DisplayDeviceInfo;->touch:I

    goto/16 :goto_1e8

    .line 448
    :cond_123
    const/4 v6, 0x2

    if-eqz v3, :cond_178

    .line 449
    iget-object v7, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iput v5, v7, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    .line 450
    iput v5, v7, Lcom/android/server/display/DisplayDeviceInfo;->touch:I

    .line 451
    iget-object v5, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-virtual {v5}, Lcom/android/server/display/LocalDisplayAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v7, Lcom/android/server/display/DisplayDeviceInfo;->name:Ljava/lang/String;

    .line 453
    iget-object v5, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v7, v5, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    or-int/2addr v6, v7

    iput v6, v5, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 455
    const-string/jumbo v5, "vendor.display.builtin_presentation"

    invoke-static {v5, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_155

    .line 457
    iget-object v5, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v6, v5, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    or-int/lit8 v6, v6, 0x40

    iput v6, v5, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    goto :goto_15d

    .line 459
    :cond_155
    iget-object v5, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v6, v5, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    or-int/lit8 v6, v6, 0x10

    iput v6, v5, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 462
    :goto_15d
    const-string/jumbo v5, "vendor.display.builtin_mirroring"

    invoke-static {v5, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_16e

    .line 464
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v5, v4, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    or-int/lit16 v5, v5, 0x80

    iput v5, v4, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 467
    :cond_16e
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v5, v0, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->width:I

    iget v6, v0, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->height:I

    invoke-virtual {v4, v5, v6}, Lcom/android/server/display/DisplayDeviceInfo;->setAssumedDensityForExternalDisplay(II)V

    goto :goto_1e8

    .line 469
    :cond_178
    iget-object v5, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    const/4 v8, 0x0

    iput-object v8, v5, Lcom/android/server/display/DisplayDeviceInfo;->displayCutout:Landroid/view/DisplayCutout;

    .line 470
    iput v6, v5, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    .line 471
    iget v8, v5, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    or-int/lit8 v8, v8, 0x40

    iput v8, v5, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 472
    iget-object v5, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v8, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-virtual {v8}, Lcom/android/server/display/LocalDisplayAdapter;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x1040200

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lcom/android/server/display/DisplayDeviceInfo;->name:Ljava/lang/String;

    .line 474
    iget-object v5, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iput v6, v5, Lcom/android/server/display/DisplayDeviceInfo;->touch:I

    .line 475
    iget v8, v0, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->width:I

    iget v9, v0, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->height:I

    invoke-virtual {v5, v8, v9}, Lcom/android/server/display/DisplayDeviceInfo;->setAssumedDensityForExternalDisplay(II)V

    .line 479
    const-string/jumbo v5, "persist.demo.hdmirotation"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v8, "portrait"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b9

    .line 480
    iget-object v5, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iput v7, v5, Lcom/android/server/display/DisplayDeviceInfo;->rotation:I

    .line 485
    :cond_1b9
    const-string/jumbo v5, "persist.demo.hdmirotates"

    invoke-static {v5, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_1c9

    .line 486
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v5, v4, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    or-int/2addr v5, v6

    iput v5, v4, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 489
    :cond_1c9
    const v4, 0x1110092

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-nez v4, :cond_1da

    .line 491
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v5, v4, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    or-int/lit16 v5, v5, 0x80

    iput v5, v4, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 494
    :cond_1da
    invoke-direct {p0, v1}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->isDisplayPrivate(Landroid/view/DisplayAddress$Physical;)Z

    move-result v4

    if-eqz v4, :cond_1e8

    .line 495
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v5, v4, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    or-int/lit8 v5, v5, 0x10

    iput v5, v4, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 499
    .end local v0  # "phys":Landroid/view/SurfaceControl$PhysicalDisplayInfo;
    .end local v1  # "physicalAddress":Landroid/view/DisplayAddress$Physical;
    .end local v2  # "res":Landroid/content/res/Resources;
    .end local v3  # "isBuiltIn":Z
    :cond_1e8
    :goto_1e8
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    return-object v0
.end method

.method public hasStableUniqueId()Z
    .registers 2

    .line 214
    const/4 v0, 0x1

    return v0
.end method

.method public onActivePhysicalDisplayModeChangedLocked(I)V
    .registers 3
    .param p1, "physIndex"  # I

    .line 689
    invoke-virtual {p0, p1}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->updateActiveModeLocked(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 690
    invoke-direct {p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->updateDeviceInfoLocked()V

    .line 692
    :cond_9
    return-void
.end method

.method public onOverlayChangedLocked()V
    .registers 1

    .line 685
    invoke-direct {p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->updateDeviceInfoLocked()V

    .line 686
    return-void
.end method

.method public requestColorModeLocked(I)Z
    .registers 5
    .param p1, "colorMode"  # I

    .line 774
    iget v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveColorMode:I

    const/4 v1, 0x0

    if-ne v0, p1, :cond_6

    .line 775
    return v1

    .line 777
    :cond_6
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedColorModes:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2e

    .line 778
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to find color mode "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", ignoring request."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "LocalDisplayAdapter"

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    return v1

    .line 782
    :cond_2e
    invoke-virtual {p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->getDisplayTokenLocked()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/view/SurfaceControl;->setActiveColorMode(Landroid/os/IBinder;I)Z

    .line 783
    iput p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveColorMode:I

    .line 784
    iput-boolean v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveColorModeInvalid:Z

    .line 785
    const/4 v0, 0x1

    return v0
.end method

.method public requestDisplayStateLocked(II)Ljava/lang/Runnable;
    .registers 23
    .param p1, "state"  # I
    .param p2, "brightness"  # I

    .line 505
    move-object/from16 v10, p0

    move/from16 v11, p1

    move/from16 v12, p2

    .line 507
    iget v0, v10, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mState:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v11, :cond_e

    move v0, v1

    goto :goto_f

    :cond_e
    move v0, v2

    :goto_f
    move v13, v0

    .line 508
    .local v13, "stateChanged":Z
    iget v0, v10, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mBrightness:I

    if-eq v0, v12, :cond_1a

    iget-object v0, v10, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mBacklight:Lcom/android/server/lights/Light;

    if-eqz v0, :cond_1a

    move v0, v1

    goto :goto_1b

    :cond_1a
    move v0, v2

    :goto_1b
    move v14, v0

    .line 509
    .local v14, "brightnessChanged":Z
    if-nez v13, :cond_23

    if-eqz v14, :cond_21

    goto :goto_23

    .line 668
    :cond_21
    const/4 v0, 0x0

    return-object v0

    .line 510
    :cond_23
    :goto_23
    iget-wide v7, v10, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mPhysicalDisplayId:J

    .line 511
    .local v7, "physicalDisplayId":J
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->getDisplayTokenLocked()Landroid/os/IBinder;

    move-result-object v15

    .line 512
    .local v15, "token":Landroid/os/IBinder;
    iget v9, v10, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mState:I

    .line 514
    .local v9, "oldState":I
    if-eqz v13, :cond_32

    .line 515
    iput v11, v10, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mState:I

    .line 516
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->updateDeviceInfoLocked()V

    .line 520
    :cond_32
    iget v0, v10, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mBrightness:I

    if-nez v0, :cond_3a

    if-lez v12, :cond_3a

    move v5, v1

    goto :goto_3b

    :cond_3a
    move v5, v2

    .line 523
    .local v5, "delayBrightness":Z
    :goto_3b
    if-eqz v14, :cond_3f

    .line 524
    iput v12, v10, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mBrightness:I

    .line 530
    :cond_3f
    new-instance v16, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move v2, v9

    move/from16 v3, p1

    move v4, v14

    move/from16 v6, p2

    move-wide/from16 v17, v7

    .end local v7  # "physicalDisplayId":J
    .local v17, "physicalDisplayId":J
    move/from16 v19, v9

    .end local v9  # "oldState":I
    .local v19, "oldState":I
    move-object v9, v15

    invoke-direct/range {v0 .. v9}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;-><init>(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;IIZZIJLandroid/os/IBinder;)V

    return-object v16
.end method

.method public setAllowedDisplayModesLocked([I)V
    .registers 2
    .param p1, "modes"  # [I

    .line 680
    invoke-virtual {p0, p1}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->updateAllowedModesLocked([I)V

    .line 681
    return-void
.end method

.method public setRequestedColorModeLocked(I)V
    .registers 3
    .param p1, "colorMode"  # I

    .line 673
    invoke-virtual {p0, p1}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->requestColorModeLocked(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 674
    invoke-direct {p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->updateDeviceInfoLocked()V

    .line 676
    :cond_9
    return-void
.end method

.method public updateActiveModeLocked(I)Z
    .registers 5
    .param p1, "activePhysIndex"  # I

    .line 695
    iget v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActivePhysIndex:I

    const/4 v1, 0x0

    if-ne v0, p1, :cond_6

    .line 696
    return v1

    .line 698
    :cond_6
    iput p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActivePhysIndex:I

    .line 699
    invoke-direct {p0, p1}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->findMatchingModeIdLocked(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveModeId:I

    .line 700
    iget v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveModeId:I

    const/4 v2, 0x1

    if-nez v0, :cond_14

    move v1, v2

    :cond_14
    iput-boolean v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveModeInvalid:Z

    .line 701
    iget-boolean v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveModeInvalid:Z

    if-eqz v0, :cond_3c

    .line 702
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "In unknown mode after setting allowed configs: allowedPhysIndexes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mAllowedPhysIndexes:[I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", activePhysIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActivePhysIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LocalDisplayAdapter"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    :cond_3c
    return v2
.end method

.method public updateAllowedModesInternalLocked([I)Z
    .registers 13
    .param p1, "allowedModes"  # [I

    .line 720
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateAllowedModesInternalLocked(allowedModes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 721
    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 720
    const-string v2, "LocalDisplayAdapter"

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    array-length v0, p1

    new-array v0, v0, [I

    .line 724
    .local v0, "allowedPhysIndexes":[I
    const/4 v3, 0x0

    .line 725
    .local v3, "size":I
    array-length v4, p1

    const/4 v5, 0x0

    move v6, v3

    move v3, v5

    .end local v3  # "size":I
    .local v6, "size":I
    :goto_28
    if-ge v3, v4, :cond_54

    aget v7, p1, v3

    .line 726
    .local v7, "modeId":I
    invoke-direct {p0, v7}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->findDisplayInfoIndexLocked(I)I

    move-result v8

    .line 727
    .local v8, "physIndex":I
    if-gez v8, :cond_4c

    .line 728
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Requested mode ID "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " not available, dropping from allowed set."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_51

    .line 731
    :cond_4c
    add-int/lit8 v9, v6, 0x1

    .end local v6  # "size":I
    .local v9, "size":I
    aput v8, v0, v6

    move v6, v9

    .line 725
    .end local v7  # "modeId":I
    .end local v8  # "physIndex":I
    .end local v9  # "size":I
    .restart local v6  # "size":I
    :goto_51
    add-int/lit8 v3, v3, 0x1

    goto :goto_28

    .line 737
    :cond_54
    array-length v3, p1

    if-eq v6, v3, :cond_5b

    .line 738
    invoke-static {v0, v6}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    .line 743
    :cond_5b
    if-nez v6, :cond_87

    .line 745
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No valid modes allowed, falling back to default mode (id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDefaultModeId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    const/4 v1, 0x1

    new-array v3, v1, [I

    iget v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDefaultModeId:I

    aput v4, v3, v5

    move-object p1, v3

    .line 749
    new-array v1, v1, [I

    invoke-direct {p0, v4}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->findDisplayInfoIndexLocked(I)I

    move-result v3

    aput v3, v1, v5

    move-object v0, v1

    .line 752
    :cond_87
    iput-object p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mAllowedModeIds:[I

    .line 753
    iput-boolean v5, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mAllowedModeIdsInvalid:Z

    .line 755
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mAllowedPhysIndexes:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    if-eqz v1, :cond_94

    .line 756
    return v5

    .line 758
    :cond_94
    iput-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mAllowedPhysIndexes:[I

    .line 761
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting allowed physical configs: allowedPhysIndexes="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 762
    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 761
    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    invoke-virtual {p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->getDisplayTokenLocked()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/view/SurfaceControl;->setAllowedDisplayConfigs(Landroid/os/IBinder;[I)Z

    .line 766
    invoke-virtual {p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->getDisplayTokenLocked()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/SurfaceControl;->getActiveConfig(Landroid/os/IBinder;)I

    move-result v1

    .line 767
    .local v1, "activePhysIndex":I
    if-gez v1, :cond_c0

    .line 768
    return v5

    .line 770
    :cond_c0
    invoke-virtual {p0, v1}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->updateActiveModeLocked(I)Z

    move-result v2

    return v2
.end method

.method public updateAllowedModesLocked([I)V
    .registers 3
    .param p1, "allowedModes"  # [I

    .line 710
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mAllowedModeIds:[I

    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mAllowedModeIdsInvalid:Z

    if-nez v0, :cond_d

    .line 711
    return-void

    .line 713
    :cond_d
    invoke-virtual {p0, p1}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->updateAllowedModesInternalLocked([I)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 714
    invoke-direct {p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->updateDeviceInfoLocked()V

    .line 716
    :cond_16
    return-void
.end method

.method public updatePhysicalDisplayInfoLocked([Landroid/view/SurfaceControl$PhysicalDisplayInfo;I[I[II)Z
    .registers 23
    .param p1, "physicalDisplayInfos"  # [Landroid/view/SurfaceControl$PhysicalDisplayInfo;
    .param p2, "activeDisplayInfo"  # I
    .param p3, "allowedDisplayInfos"  # [I
    .param p4, "colorModes"  # [I
    .param p5, "activeColorMode"  # I

    .line 220
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    array-length v4, v1

    invoke-static {v1, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/view/SurfaceControl$PhysicalDisplayInfo;

    iput-object v4, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDisplayInfos:[Landroid/view/SurfaceControl$PhysicalDisplayInfo;

    .line 221
    iput v2, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActivePhysIndex:I

    .line 222
    array-length v4, v3

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v4

    iput-object v4, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mAllowedPhysIndexes:[I

    .line 224
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 225
    .local v4, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;>;"
    const/4 v5, 0x0

    .line 226
    .local v5, "modesAdded":Z
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_21
    array-length v7, v1

    if-ge v6, v7, :cond_55

    .line 227
    aget-object v7, v1, v6

    .line 231
    .local v7, "info":Landroid/view/SurfaceControl$PhysicalDisplayInfo;
    const/4 v8, 0x0

    .line 232
    .local v8, "existingMode":Z
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_28
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v9, v10, :cond_3f

    .line 233
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;

    invoke-virtual {v10, v7}, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->hasMatchingMode(Landroid/view/SurfaceControl$PhysicalDisplayInfo;)Z

    move-result v10

    if-eqz v10, :cond_3c

    .line 234
    const/4 v8, 0x1

    .line 235
    goto :goto_3f

    .line 232
    :cond_3c
    add-int/lit8 v9, v9, 0x1

    goto :goto_28

    .line 238
    .end local v9  # "j":I
    :cond_3f
    :goto_3f
    if-eqz v8, :cond_42

    .line 239
    goto :goto_52

    .line 244
    :cond_42
    invoke-direct {v0, v7}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->findDisplayModeRecord(Landroid/view/SurfaceControl$PhysicalDisplayInfo;)Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;

    move-result-object v9

    .line 245
    .local v9, "record":Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;
    if-nez v9, :cond_4f

    .line 246
    new-instance v10, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;

    invoke-direct {v10, v7}, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;-><init>(Landroid/view/SurfaceControl$PhysicalDisplayInfo;)V

    move-object v9, v10

    .line 247
    const/4 v5, 0x1

    .line 249
    :cond_4f
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 226
    .end local v7  # "info":Landroid/view/SurfaceControl$PhysicalDisplayInfo;
    .end local v8  # "existingMode":Z
    .end local v9  # "record":Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;
    :goto_52
    add-int/lit8 v6, v6, 0x1

    goto :goto_21

    .line 253
    .end local v6  # "i":I
    :cond_55
    const/4 v6, 0x0

    .line 254
    .local v6, "activeRecord":Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_57
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_70

    .line 255
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;

    .line 256
    .local v8, "record":Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;
    aget-object v9, v1, v2

    invoke-virtual {v8, v9}, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->hasMatchingMode(Landroid/view/SurfaceControl$PhysicalDisplayInfo;)Z

    move-result v9

    if-eqz v9, :cond_6d

    .line 257
    move-object v6, v8

    .line 258
    goto :goto_70

    .line 254
    .end local v8  # "record":Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;
    :cond_6d
    add-int/lit8 v7, v7, 0x1

    goto :goto_57

    .line 264
    .end local v7  # "i":I
    :cond_70
    :goto_70
    iget v7, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveModeId:I

    const/4 v8, 0x1

    if-eqz v7, :cond_84

    iget-object v9, v6, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->mMode:Landroid/view/Display$Mode;

    .line 265
    invoke-virtual {v9}, Landroid/view/Display$Mode;->getModeId()I

    move-result v9

    if-eq v7, v9, :cond_84

    .line 266
    iput-boolean v8, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveModeInvalid:Z

    .line 267
    iget-object v7, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-virtual {v7}, Lcom/android/server/display/LocalDisplayAdapter;->sendTraversalRequestLocked()V

    .line 270
    :cond_84
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    iget-object v9, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v9

    const/4 v10, 0x0

    if-ne v7, v9, :cond_96

    if-eqz v5, :cond_94

    goto :goto_96

    :cond_94
    move v7, v10

    goto :goto_97

    :cond_96
    :goto_96
    move v7, v8

    .line 272
    .local v7, "recordsChanged":Z
    :goto_97
    if-nez v7, :cond_9a

    .line 273
    return v10

    .line 276
    :cond_9a
    iput-boolean v8, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mHavePendingChanges:Z

    .line 278
    iget-object v9, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->clear()V

    .line 279
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_a5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_bd

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;

    .line 280
    .local v11, "record":Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;
    iget-object v12, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    iget-object v13, v11, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->mMode:Landroid/view/Display$Mode;

    invoke-virtual {v13}, Landroid/view/Display$Mode;->getModeId()I

    move-result v13

    invoke-virtual {v12, v13, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 281
    .end local v11  # "record":Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;
    goto :goto_a5

    .line 284
    :cond_bd
    iget v9, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDefaultModeId:I

    invoke-direct {v0, v9}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->findDisplayInfoIndexLocked(I)I

    move-result v9

    const-string v11, "LocalDisplayAdapter"

    if-gez v9, :cond_d8

    .line 285
    iget v9, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDefaultModeId:I

    if-eqz v9, :cond_d0

    .line 286
    const-string v9, "Default display mode no longer available, using currently active mode as default."

    invoke-static {v11, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    :cond_d0
    iget-object v9, v6, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->mMode:Landroid/view/Display$Mode;

    invoke-virtual {v9}, Landroid/view/Display$Mode;->getModeId()I

    move-result v9

    iput v9, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDefaultModeId:I

    .line 293
    :cond_d8
    iget-object v9, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    iget v12, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveModeId:I

    invoke-virtual {v9, v12}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v9

    if-gez v9, :cond_f1

    .line 294
    iget v9, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveModeId:I

    if-eqz v9, :cond_eb

    .line 295
    const-string v9, "Active display mode no longer available, reverting to default mode."

    invoke-static {v11, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    :cond_eb
    iget v9, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDefaultModeId:I

    iput v9, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveModeId:I

    .line 299
    iput-boolean v8, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveModeInvalid:Z

    .line 303
    :cond_f1
    new-array v9, v8, [I

    iget v11, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveModeId:I

    aput v11, v9, v10

    iput-object v9, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mAllowedModeIds:[I

    .line 304
    iget-object v9, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mAllowedPhysIndexes:[I

    array-length v11, v9

    new-array v11, v11, [I

    .line 305
    .local v11, "allowedModeIds":[I
    const/4 v12, 0x0

    .line 306
    .local v12, "size":I
    array-length v13, v9

    :goto_100
    if-ge v10, v13, :cond_113

    aget v14, v9, v10

    .line 307
    .local v14, "physIndex":I
    invoke-direct {v0, v14}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->findMatchingModeIdLocked(I)I

    move-result v15

    .line 308
    .local v15, "modeId":I
    if-lez v15, :cond_110

    .line 309
    add-int/lit8 v16, v12, 0x1

    .end local v12  # "size":I
    .local v16, "size":I
    aput v15, v11, v12

    move/from16 v12, v16

    .line 306
    .end local v14  # "physIndex":I
    .end local v15  # "modeId":I
    .end local v16  # "size":I
    .restart local v12  # "size":I
    :cond_110
    add-int/lit8 v10, v10, 0x1

    goto :goto_100

    .line 315
    :cond_113
    iget-object v9, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mAllowedModeIds:[I

    invoke-static {v11, v9}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v9

    xor-int/2addr v9, v8

    iput-boolean v9, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mAllowedModeIdsInvalid:Z

    .line 318
    iget-object v9, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-virtual {v9}, Lcom/android/server/display/LocalDisplayAdapter;->sendTraversalRequestLocked()V

    .line 319
    return v8
.end method
