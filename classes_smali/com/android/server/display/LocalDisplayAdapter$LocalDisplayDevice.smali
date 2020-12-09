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

    .line 161
    const-class v0, Lcom/android/server/display/LocalDisplayAdapter;

    return-void
.end method

.method constructor <init>(Lcom/android/server/display/LocalDisplayAdapter;Landroid/os/IBinder;J[Landroid/view/SurfaceControl$PhysicalDisplayInfo;I[I[IIZ)V
    .registers 20

    .line 190
    move-object v6, p0

    move-object v0, p1

    move-wide v1, p3

    iput-object v0, v6, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    .line 191
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "local:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v7, p2

    invoke-direct {p0, p1, p2, v3}, Lcom/android/server/display/DisplayDevice;-><init>(Lcom/android/server/display/DisplayAdapter;Landroid/os/IBinder;Ljava/lang/String;)V

    .line 164
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, v6, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    .line 165
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v6, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedColorModes:Ljava/util/ArrayList;

    .line 170
    const/4 v8, 0x0

    iput v8, v6, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mState:I

    .line 171
    const/4 v0, -0x1

    iput v0, v6, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mBrightness:I

    .line 192
    iput-wide v1, v6, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mPhysicalDisplayId:J

    .line 193
    move/from16 v0, p10

    iput-boolean v0, v6, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mIsInternal:Z

    .line 194
    move-object v0, p0

    move-object v1, p5

    move v2, p6

    move-object/from16 v3, p7

    move-object/from16 v4, p8

    move/from16 v5, p9

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->updatePhysicalDisplayInfoLocked([Landroid/view/SurfaceControl$PhysicalDisplayInfo;I[I[II)Z

    .line 196
    move-object/from16 v0, p8

    move/from16 v1, p9

    invoke-direct {p0, v0, v1}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->updateColorModesLocked([II)Z

    .line 197
    const-class v0, Landroid/hardware/sidekick/SidekickInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/sidekick/SidekickInternal;

    iput-object v0, v6, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSidekickInternal:Landroid/hardware/sidekick/SidekickInternal;

    .line 198
    iget-boolean v0, v6, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mIsInternal:Z

    if-eqz v0, :cond_64

    .line 199
    const-class v0, Lcom/android/server/lights/LightsManager;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/lights/LightsManager;

    .line 200
    invoke-virtual {v0, v8}, Lcom/android/server/lights/LightsManager;->getLight(I)Lcom/android/server/lights/Light;

    move-result-object v0

    iput-object v0, v6, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mBacklight:Lcom/android/server/lights/Light;

    .line 201
    goto :goto_67

    .line 202
    :cond_64
    const/4 v0, 0x0

    iput-object v0, v6, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mBacklight:Lcom/android/server/lights/Light;

    .line 204
    :goto_67
    invoke-static {p2}, Landroid/view/SurfaceControl;->getHdrCapabilities(Landroid/os/IBinder;)Landroid/view/Display$HdrCapabilities;

    move-result-object v0

    iput-object v0, v6, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mHdrCapabilities:Landroid/view/Display$HdrCapabilities;

    .line 205
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;)Lcom/android/server/lights/Light;
    .registers 1

    .line 161
    iget-object p0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mBacklight:Lcom/android/server/lights/Light;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;)Z
    .registers 1

    .line 161
    iget-boolean p0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSidekickActive:Z

    return p0
.end method

.method static synthetic access$102(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;Z)Z
    .registers 2

    .line 161
    iput-boolean p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSidekickActive:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;)Landroid/hardware/sidekick/SidekickInternal;
    .registers 1

    .line 161
    iget-object p0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSidekickInternal:Landroid/hardware/sidekick/SidekickInternal;

    return-object p0
.end method

.method private findDisplayInfoIndexLocked(I)I
    .registers 5

    .line 765
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;

    .line 766
    if-eqz p1, :cond_1c

    .line 767
    const/4 v0, 0x0

    :goto_b
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDisplayInfos:[Landroid/view/SurfaceControl$PhysicalDisplayInfo;

    array-length v2, v1

    if-ge v0, v2, :cond_1c

    .line 768
    aget-object v1, v1, v0

    .line 769
    invoke-virtual {p1, v1}, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->hasMatchingMode(Landroid/view/SurfaceControl$PhysicalDisplayInfo;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 770
    return v0

    .line 767
    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 774
    :cond_1c
    const/4 p1, -0x1

    return p1
.end method

.method private findDisplayModeRecord(Landroid/view/SurfaceControl$PhysicalDisplayInfo;)Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;
    .registers 5

    .line 370
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1b

    .line 371
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;

    .line 372
    invoke-virtual {v1, p1}, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->hasMatchingMode(Landroid/view/SurfaceControl$PhysicalDisplayInfo;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 373
    return-object v1

    .line 370
    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 376
    :cond_1b
    const/4 p1, 0x0

    return-object p1
.end method

.method private findMatchingModeIdLocked(I)I
    .registers 6

    .line 778
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDisplayInfos:[Landroid/view/SurfaceControl$PhysicalDisplayInfo;

    aget-object p1, v0, p1

    .line 779
    const/4 v0, 0x0

    move v1, v0

    :goto_6
    iget-object v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_26

    .line 780
    iget-object v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;

    .line 781
    invoke-virtual {v2, p1}, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->hasMatchingMode(Landroid/view/SurfaceControl$PhysicalDisplayInfo;)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 782
    iget-object p1, v2, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->mMode:Landroid/view/Display$Mode;

    invoke-virtual {p1}, Landroid/view/Display$Mode;->getModeId()I

    move-result p1

    return p1

    .line 779
    :cond_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 785
    :cond_26
    return v0
.end method

.method private getDisplayModes(Landroid/util/SparseArray;)[Landroid/view/Display$Mode;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;",
            ">;)[",
            "Landroid/view/Display$Mode;"
        }
    .end annotation

    .line 794
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 795
    new-array v1, v0, [Landroid/view/Display$Mode;

    .line 796
    const/4 v2, 0x0

    :goto_7
    if-ge v2, v0, :cond_16

    .line 797
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;

    .line 798
    iget-object v3, v3, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->mMode:Landroid/view/Display$Mode;

    aput-object v3, v1, v2

    .line 796
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 800
    :cond_16
    return-object v1
.end method

.method private isDisplayPrivate(Landroid/view/DisplayAddress$Physical;)Z
    .registers 7

    .line 804
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 805
    return v0

    .line 807
    :cond_4
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-virtual {v1}, Lcom/android/server/display/LocalDisplayAdapter;->getOverlayContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 808
    const v2, 0x107004c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    .line 810
    if-eqz v1, :cond_28

    .line 811
    invoke-virtual {p1}, Landroid/view/DisplayAddress$Physical;->getPort()B

    move-result p1

    .line 812
    array-length v2, v1

    move v3, v0

    :goto_1d
    if-ge v3, v2, :cond_28

    aget v4, v1, v3

    .line 813
    if-ne v4, p1, :cond_25

    .line 814
    const/4 p1, 0x1

    return p1

    .line 812
    :cond_25
    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    .line 818
    :cond_28
    return v0
.end method

.method private updateColorModesLocked([II)Z
    .registers 11

    .line 319
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 321
    const/4 v0, 0x0

    if-nez p1, :cond_9

    return v0

    .line 323
    :cond_9
    nop

    .line 324
    array-length v1, p1

    move v2, v0

    move v3, v2

    :goto_d
    const/4 v4, 0x1

    if-ge v2, v1, :cond_29

    aget v5, p1, v2

    .line 325
    iget-object v6, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedColorModes:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    .line 326
    move v3, v4

    .line 328
    :cond_1f
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 324
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 331
    :cond_29
    nop

    .line 332
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedColorModes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne p1, v1, :cond_3b

    if-eqz v3, :cond_39

    goto :goto_3b

    :cond_39
    move p1, v0

    goto :goto_3c

    :cond_3b
    :goto_3b
    move p1, v4

    .line 336
    :goto_3c
    if-nez p1, :cond_3f

    .line 337
    return v0

    .line 340
    :cond_3f
    iput-boolean v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mHavePendingChanges:Z

    .line 342
    iget-object p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedColorModes:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 343
    iget-object p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedColorModes:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 344
    iget-object p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedColorModes:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 347
    iget-object p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedColorModes:Ljava/util/ArrayList;

    iget p2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveColorMode:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_91

    .line 348
    iget p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveColorMode:I

    const-string p2, "LocalDisplayAdapter"

    if-eqz p1, :cond_6e

    .line 349
    const-string p1, "Active color mode no longer available, reverting to default mode."

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    iput v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveColorMode:I

    .line 352
    iput-boolean v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveColorModeInvalid:Z

    goto :goto_91

    .line 354
    :cond_6e
    iget-object p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedColorModes:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_8c

    .line 356
    const-string p1, "Default and active color mode is no longer available! Reverting to first available mode."

    invoke-static {p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    iget-object p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedColorModes:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveColorMode:I

    .line 359
    iput-boolean v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveColorModeInvalid:Z

    goto :goto_91

    .line 362
    :cond_8c
    const-string p1, "No color modes available!"

    invoke-static {p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    :cond_91
    :goto_91
    return v4
.end method

.method private updateDeviceInfoLocked()V
    .registers 3

    .line 789
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 790
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    const/4 v1, 0x2

    invoke-virtual {v0, p0, v1}, Lcom/android/server/display/LocalDisplayAdapter;->sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    .line 791
    return-void
.end method


# virtual methods
.method public applyPendingDisplayDeviceInfoChangesLocked()V
    .registers 2

    .line 381
    iget-boolean v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mHavePendingChanges:Z

    if-eqz v0, :cond_a

    .line 382
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 383
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mHavePendingChanges:Z

    .line 385
    :cond_a
    return-void
.end method

.method public dumpLocked(Ljava/io/PrintWriter;)V
    .registers 7

    .line 734
    invoke-super {p0, p1}, Lcom/android/server/display/DisplayDevice;->dumpLocked(Ljava/io/PrintWriter;)V

    .line 735
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mPhysicalDisplayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mPhysicalDisplayId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 736
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mAllowedPhysIndexes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mAllowedPhysIndexes:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 737
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mAllowedModeIds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mAllowedModeIds:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 738
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mAllowedModeIdsInvalid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mAllowedModeIdsInvalid:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 739
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mActivePhysIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActivePhysIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 740
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mActiveModeId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveModeId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 741
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mActiveColorMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveColorMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 742
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mDefaultModeId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDefaultModeId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 743
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mState:I

    invoke-static {v1}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 744
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mBrightness:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 745
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mBacklight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mBacklight:Lcom/android/server/lights/Light;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 746
    const-string v0, "mDisplayInfos="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 747
    const/4 v0, 0x0

    move v1, v0

    :goto_108
    iget-object v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDisplayInfos:[Landroid/view/SurfaceControl$PhysicalDisplayInfo;

    array-length v2, v2

    const-string v3, "  "

    if-ge v1, v2, :cond_128

    .line 748
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDisplayInfos:[Landroid/view/SurfaceControl$PhysicalDisplayInfo;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 747
    add-int/lit8 v1, v1, 0x1

    goto :goto_108

    .line 750
    :cond_128
    const-string v1, "mSupportedModes="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 751
    move v1, v0

    :goto_12e
    iget-object v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_151

    .line 752
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 751
    add-int/lit8 v1, v1, 0x1

    goto :goto_12e

    .line 754
    :cond_151
    const-string v1, "mSupportedColorModes=["

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 755
    nop

    :goto_157
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedColorModes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_172

    .line 756
    if-eqz v0, :cond_166

    .line 757
    const-string v1, ", "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 759
    :cond_166
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedColorModes:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 755
    add-int/lit8 v0, v0, 0x1

    goto :goto_157

    .line 761
    :cond_172
    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 762
    return-void
.end method

.method public getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;
    .registers 10

    .line 389
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    if-nez v0, :cond_17e

    .line 390
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDisplayInfos:[Landroid/view/SurfaceControl$PhysicalDisplayInfo;

    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActivePhysIndex:I

    aget-object v0, v0, v1

    .line 391
    new-instance v1, Lcom/android/server/display/DisplayDeviceInfo;

    invoke-direct {v1}, Lcom/android/server/display/DisplayDeviceInfo;-><init>()V

    iput-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 392
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v2, v0, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->width:I

    iput v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    .line 393
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v2, v0, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->height:I

    iput v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    .line 394
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveModeId:I

    iput v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->modeId:I

    .line 395
    iget v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDefaultModeId:I

    iput v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->defaultModeId:I

    .line 396
    iget-object v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    invoke-direct {p0, v2}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->getDisplayModes(Landroid/util/SparseArray;)[Landroid/view/Display$Mode;

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->supportedModes:[Landroid/view/Display$Mode;

    .line 397
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveColorMode:I

    iput v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->colorMode:I

    .line 398
    iget-object v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedColorModes:Ljava/util/ArrayList;

    .line 399
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [I

    iput-object v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->supportedColorModes:[I

    .line 400
    const/4 v1, 0x0

    move v2, v1

    :goto_41
    iget-object v3, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedColorModes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_5e

    .line 401
    iget-object v3, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v3, v3, Lcom/android/server/display/DisplayDeviceInfo;->supportedColorModes:[I

    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedColorModes:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v3, v2

    .line 400
    add-int/lit8 v2, v2, 0x1

    goto :goto_41

    .line 403
    :cond_5e
    iget-object v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v3, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mHdrCapabilities:Landroid/view/Display$HdrCapabilities;

    iput-object v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->hdrCapabilities:Landroid/view/Display$HdrCapabilities;

    .line 404
    iget-wide v3, v0, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->appVsyncOffsetNanos:J

    iput-wide v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->appVsyncOffsetNanos:J

    .line 405
    iget-object v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-wide v3, v0, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->presentationDeadlineNanos:J

    iput-wide v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->presentationDeadlineNanos:J

    .line 406
    iget-object v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v3, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mState:I

    iput v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->state:I

    .line 407
    invoke-virtual {p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->getUniqueId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->uniqueId:Ljava/lang/String;

    .line 408
    iget-wide v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mPhysicalDisplayId:J

    .line 409
    invoke-static {v2, v3}, Landroid/view/DisplayAddress;->fromPhysicalDisplayId(J)Landroid/view/DisplayAddress$Physical;

    move-result-object v2

    .line 410
    iget-object v3, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iput-object v2, v3, Lcom/android/server/display/DisplayDeviceInfo;->address:Landroid/view/DisplayAddress;

    .line 414
    iget-boolean v3, v0, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->secure:Z

    if-eqz v3, :cond_8e

    .line 415
    iget-object v3, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    const/16 v4, 0xc

    iput v4, v3, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 419
    :cond_8e
    iget-object v3, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-virtual {v3}, Lcom/android/server/display/LocalDisplayAdapter;->getOverlayContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 420
    iget-boolean v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mIsInternal:Z

    const/4 v5, 0x3

    if-eqz v4, :cond_10d

    .line 421
    iget-object v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    const v4, 0x1040203

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/android/server/display/DisplayDeviceInfo;->name:Ljava/lang/String;

    .line 423
    iget-object v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v4, v2, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    or-int/2addr v4, v5

    iput v4, v2, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 425
    const v2, 0x111009c

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-nez v2, :cond_c5

    sget-boolean v2, Landroid/os/Build;->IS_EMULATOR:Z

    if-eqz v2, :cond_cd

    .line 427
    const-string/jumbo v2, "ro.emulator.circular"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_cd

    .line 428
    :cond_c5
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    or-int/lit16 v2, v2, 0x100

    iput v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 430
    :cond_cd
    const v1, 0x111009d

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_de

    .line 432
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    or-int/lit16 v2, v2, 0x800

    iput v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 434
    :cond_de
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v4, v4, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    invoke-static {v3, v2, v4}, Landroid/view/DisplayCutout;->fromResourcesRectApproximation(Landroid/content/res/Resources;II)Landroid/view/DisplayCutout;

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->displayCutout:Landroid/view/DisplayCutout;

    .line 436
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    const/4 v2, 0x1

    iput v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    .line 437
    iget v3, v0, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->density:F

    const/high16 v4, 0x43200000  # 160.0f

    mul-float/2addr v3, v4

    const/high16 v4, 0x3f000000  # 0.5f

    add-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v1, Lcom/android/server/display/DisplayDeviceInfo;->densityDpi:I

    .line 438
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v3, v0, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->xDpi:F

    iput v3, v1, Lcom/android/server/display/DisplayDeviceInfo;->xDpi:F

    .line 439
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v0, v0, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->yDpi:F

    iput v0, v1, Lcom/android/server/display/DisplayDeviceInfo;->yDpi:F

    .line 440
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iput v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->touch:I

    goto :goto_17e

    .line 442
    :cond_10d
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    const/4 v6, 0x0

    iput-object v6, v4, Lcom/android/server/display/DisplayDeviceInfo;->displayCutout:Landroid/view/DisplayCutout;

    .line 443
    const/4 v6, 0x2

    iput v6, v4, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    .line 444
    iget v7, v4, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    or-int/lit8 v7, v7, 0x40

    iput v7, v4, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 445
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v7, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-virtual {v7}, Lcom/android/server/display/LocalDisplayAdapter;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1040204

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lcom/android/server/display/DisplayDeviceInfo;->name:Ljava/lang/String;

    .line 447
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iput v6, v4, Lcom/android/server/display/DisplayDeviceInfo;->touch:I

    .line 448
    iget v7, v0, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->width:I

    iget v0, v0, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->height:I

    invoke-virtual {v4, v7, v0}, Lcom/android/server/display/DisplayDeviceInfo;->setAssumedDensityForExternalDisplay(II)V

    .line 452
    const-string/jumbo v0, "persist.demo.hdmirotation"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "portrait"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14f

    .line 453
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iput v5, v0, Lcom/android/server/display/DisplayDeviceInfo;->rotation:I

    .line 458
    :cond_14f
    const-string/jumbo v0, "persist.demo.hdmirotates"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_15f

    .line 459
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    or-int/2addr v1, v6

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 462
    :cond_15f
    const v0, 0x1110098

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_170

    .line 464
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    or-int/lit16 v1, v1, 0x80

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 467
    :cond_170
    invoke-direct {p0, v2}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->isDisplayPrivate(Landroid/view/DisplayAddress$Physical;)Z

    move-result v0

    if-eqz v0, :cond_17e

    .line 468
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 472
    :cond_17e
    :goto_17e
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    return-object v0
.end method

.method public hasStableUniqueId()Z
    .registers 2

    .line 209
    const/4 v0, 0x1

    return v0
.end method

.method public onActivePhysicalDisplayModeChangedLocked(I)V
    .registers 2

    .line 636
    invoke-virtual {p0, p1}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->updateActiveModeLocked(I)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 637
    invoke-direct {p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->updateDeviceInfoLocked()V

    .line 639
    :cond_9
    return-void
.end method

.method public onOverlayChangedLocked()V
    .registers 1

    .line 632
    invoke-direct {p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->updateDeviceInfoLocked()V

    .line 633
    return-void
.end method

.method public requestColorModeLocked(I)Z
    .registers 5

    .line 718
    iget v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveColorMode:I

    const/4 v1, 0x0

    if-ne v0, p1, :cond_6

    .line 719
    return v1

    .line 721
    :cond_6
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedColorModes:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2e

    .line 722
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to find color mode "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", ignoring request."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LocalDisplayAdapter"

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    return v1

    .line 726
    :cond_2e
    invoke-virtual {p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->getDisplayTokenLocked()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/view/SurfaceControl;->setActiveColorMode(Landroid/os/IBinder;I)Z

    .line 727
    iput p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveColorMode:I

    .line 728
    iput-boolean v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveColorModeInvalid:Z

    .line 729
    const/4 p1, 0x1

    return p1
.end method

.method public requestDisplayStateLocked(II)Ljava/lang/Runnable;
    .registers 16

    .line 478
    nop

    .line 480
    iget v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mState:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, p1, :cond_9

    move v0, v1

    goto :goto_a

    :cond_9
    move v0, v2

    .line 481
    :goto_a
    iget v3, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mBrightness:I

    if-eq v3, p2, :cond_14

    iget-object v3, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mBacklight:Lcom/android/server/lights/Light;

    if-eqz v3, :cond_14

    move v8, v1

    goto :goto_15

    :cond_14
    move v8, v2

    .line 482
    :goto_15
    if-nez v0, :cond_1c

    if-eqz v8, :cond_1a

    goto :goto_1c

    .line 615
    :cond_1a
    const/4 p1, 0x0

    return-object p1

    .line 483
    :cond_1c
    :goto_1c
    iget-wide v10, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mPhysicalDisplayId:J

    .line 484
    invoke-virtual {p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->getDisplayTokenLocked()Landroid/os/IBinder;

    move-result-object v12

    .line 485
    iget v6, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mState:I

    .line 487
    if-eqz v0, :cond_2b

    .line 488
    iput p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mState:I

    .line 489
    invoke-direct {p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->updateDeviceInfoLocked()V

    .line 492
    :cond_2b
    if-eqz v8, :cond_2f

    .line 493
    iput p2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mBrightness:I

    .line 499
    :cond_2f
    new-instance v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;

    move-object v4, v0

    move-object v5, p0

    move v7, p1

    move v9, p2

    invoke-direct/range {v4 .. v12}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;-><init>(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;IIZIJLandroid/os/IBinder;)V

    return-object v0
.end method

.method public setAllowedDisplayModesLocked([I)V
    .registers 2

    .line 627
    invoke-virtual {p0, p1}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->updateAllowedModesLocked([I)V

    .line 628
    return-void
.end method

.method public setRequestedColorModeLocked(I)V
    .registers 2

    .line 620
    invoke-virtual {p0, p1}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->requestColorModeLocked(I)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 621
    invoke-direct {p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->updateDeviceInfoLocked()V

    .line 623
    :cond_9
    return-void
.end method

.method public updateActiveModeLocked(I)Z
    .registers 4

    .line 642
    iget v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActivePhysIndex:I

    const/4 v1, 0x0

    if-ne v0, p1, :cond_6

    .line 643
    return v1

    .line 645
    :cond_6
    iput p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActivePhysIndex:I

    .line 646
    invoke-direct {p0, p1}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->findMatchingModeIdLocked(I)I

    move-result p1

    iput p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveModeId:I

    .line 647
    iget p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveModeId:I

    const/4 v0, 0x1

    if-nez p1, :cond_14

    move v1, v0

    :cond_14
    iput-boolean v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveModeInvalid:Z

    .line 648
    iget-boolean p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveModeInvalid:Z

    if-eqz p1, :cond_3c

    .line 649
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "In unknown mode after setting allowed configs: allowedPhysIndexes="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mAllowedPhysIndexes:[I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", activePhysIndex="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActivePhysIndex:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "LocalDisplayAdapter"

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    :cond_3c
    return v0
.end method

.method public updateAllowedModesInternalLocked([I)Z
    .registers 11

    .line 670
    array-length v0, p1

    new-array v0, v0, [I

    .line 671
    nop

    .line 672
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_8
    if-ge v3, v1, :cond_36

    aget v5, p1, v3

    .line 673
    invoke-direct {p0, v5}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->findDisplayInfoIndexLocked(I)I

    move-result v6

    .line 674
    if-gez v6, :cond_2e

    .line 675
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Requested mode ID "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " not available, dropping from allowed set."

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "LocalDisplayAdapter"

    invoke-static {v6, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_33

    .line 678
    :cond_2e
    add-int/lit8 v5, v4, 0x1

    aput v6, v0, v4

    move v4, v5

    .line 672
    :goto_33
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 684
    :cond_36
    array-length v1, p1

    if-eq v4, v1, :cond_3d

    .line 685
    invoke-static {v0, v4}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    .line 690
    :cond_3d
    if-nez v4, :cond_51

    .line 695
    const/4 p1, 0x1

    new-array v0, p1, [I

    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDefaultModeId:I

    aput v1, v0, v2

    .line 696
    new-array p1, p1, [I

    invoke-direct {p0, v1}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->findDisplayInfoIndexLocked(I)I

    move-result v1

    aput v1, p1, v2

    move-object v8, v0

    move-object v0, p1

    move-object p1, v8

    .line 699
    :cond_51
    iput-object p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mAllowedModeIds:[I

    .line 700
    iput-boolean v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mAllowedModeIdsInvalid:Z

    .line 702
    iget-object p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mAllowedPhysIndexes:[I

    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p1

    if-eqz p1, :cond_5e

    .line 703
    return v2

    .line 705
    :cond_5e
    iput-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mAllowedPhysIndexes:[I

    .line 712
    invoke-virtual {p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->getDisplayTokenLocked()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1, v0}, Landroid/view/SurfaceControl;->setAllowedDisplayConfigs(Landroid/os/IBinder;[I)Z

    .line 713
    invoke-virtual {p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->getDisplayTokenLocked()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/view/SurfaceControl;->getActiveConfig(Landroid/os/IBinder;)I

    move-result p1

    .line 714
    invoke-virtual {p0, p1}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->updateActiveModeLocked(I)Z

    move-result p1

    return p1
.end method

.method public updateAllowedModesLocked([I)V
    .registers 3

    .line 657
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mAllowedModeIds:[I

    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mAllowedModeIdsInvalid:Z

    if-nez v0, :cond_d

    .line 658
    return-void

    .line 660
    :cond_d
    invoke-virtual {p0, p1}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->updateAllowedModesInternalLocked([I)Z

    move-result p1

    if-eqz p1, :cond_16

    .line 661
    invoke-direct {p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->updateDeviceInfoLocked()V

    .line 663
    :cond_16
    return-void
.end method

.method public updatePhysicalDisplayInfoLocked([Landroid/view/SurfaceControl$PhysicalDisplayInfo;I[I[II)Z
    .registers 11

    .line 215
    array-length p4, p1

    invoke-static {p1, p4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p4

    check-cast p4, [Landroid/view/SurfaceControl$PhysicalDisplayInfo;

    iput-object p4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDisplayInfos:[Landroid/view/SurfaceControl$PhysicalDisplayInfo;

    .line 216
    iput p2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActivePhysIndex:I

    .line 217
    array-length p4, p3

    invoke-static {p3, p4}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p3

    iput-object p3, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mAllowedPhysIndexes:[I

    .line 219
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 220
    nop

    .line 221
    const/4 p4, 0x0

    move p5, p4

    move v0, p5

    :goto_1b
    array-length v1, p1

    const/4 v2, 0x1

    if-ge p5, v1, :cond_51

    .line 222
    aget-object v1, p1, p5

    .line 226
    nop

    .line 227
    move v3, p4

    :goto_23
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_3b

    .line 228
    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;

    invoke-virtual {v4, v1}, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->hasMatchingMode(Landroid/view/SurfaceControl$PhysicalDisplayInfo;)Z

    move-result v4

    if-eqz v4, :cond_38

    .line 229
    nop

    .line 230
    move v3, v2

    goto :goto_3c

    .line 227
    :cond_38
    add-int/lit8 v3, v3, 0x1

    goto :goto_23

    :cond_3b
    move v3, p4

    .line 233
    :goto_3c
    if-eqz v3, :cond_3f

    .line 234
    goto :goto_4e

    .line 239
    :cond_3f
    invoke-direct {p0, v1}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->findDisplayModeRecord(Landroid/view/SurfaceControl$PhysicalDisplayInfo;)Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;

    move-result-object v3

    .line 240
    if-nez v3, :cond_4b

    .line 241
    new-instance v3, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;

    invoke-direct {v3, v1}, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;-><init>(Landroid/view/SurfaceControl$PhysicalDisplayInfo;)V

    .line 242
    move v0, v2

    .line 244
    :cond_4b
    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 221
    :goto_4e
    add-int/lit8 p5, p5, 0x1

    goto :goto_1b

    .line 248
    :cond_51
    const/4 p5, 0x0

    .line 249
    move v1, p4

    :goto_53
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_6d

    .line 250
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;

    .line 251
    aget-object v4, p1, p2

    invoke-virtual {v3, v4}, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->hasMatchingMode(Landroid/view/SurfaceControl$PhysicalDisplayInfo;)Z

    move-result v4

    if-eqz v4, :cond_6a

    .line 252
    nop

    .line 253
    move-object p5, v3

    goto :goto_6d

    .line 249
    :cond_6a
    add-int/lit8 v1, v1, 0x1

    goto :goto_53

    .line 259
    :cond_6d
    :goto_6d
    iget p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveModeId:I

    if-eqz p1, :cond_80

    iget-object p2, p5, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->mMode:Landroid/view/Display$Mode;

    .line 260
    invoke-virtual {p2}, Landroid/view/Display$Mode;->getModeId()I

    move-result p2

    if-eq p1, p2, :cond_80

    .line 261
    iput-boolean v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveModeInvalid:Z

    .line 262
    iget-object p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-virtual {p1}, Lcom/android/server/display/LocalDisplayAdapter;->sendTraversalRequestLocked()V

    .line 265
    :cond_80
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p1

    iget-object p2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p2

    if-ne p1, p2, :cond_91

    if-eqz v0, :cond_8f

    goto :goto_91

    :cond_8f
    move p1, p4

    goto :goto_92

    :cond_91
    :goto_91
    move p1, v2

    .line 267
    :goto_92
    if-nez p1, :cond_95

    .line 268
    return p4

    .line 271
    :cond_95
    iput-boolean v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mHavePendingChanges:Z

    .line 273
    iget-object p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    .line 274
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_a0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_b8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;

    .line 275
    iget-object p3, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    iget-object v0, p2, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->mMode:Landroid/view/Display$Mode;

    invoke-virtual {v0}, Landroid/view/Display$Mode;->getModeId()I

    move-result v0

    invoke-virtual {p3, v0, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 276
    goto :goto_a0

    .line 279
    :cond_b8
    iget p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDefaultModeId:I

    invoke-direct {p0, p1}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->findDisplayInfoIndexLocked(I)I

    move-result p1

    const-string p2, "LocalDisplayAdapter"

    if-gez p1, :cond_d3

    .line 280
    iget p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDefaultModeId:I

    if-eqz p1, :cond_cb

    .line 281
    const-string p1, "Default display mode no longer available, using currently active mode as default."

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    :cond_cb
    iget-object p1, p5, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->mMode:Landroid/view/Display$Mode;

    invoke-virtual {p1}, Landroid/view/Display$Mode;->getModeId()I

    move-result p1

    iput p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDefaultModeId:I

    .line 288
    :cond_d3
    iget-object p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    iget p3, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveModeId:I

    invoke-virtual {p1, p3}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result p1

    if-gez p1, :cond_ec

    .line 289
    iget p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveModeId:I

    if-eqz p1, :cond_e6

    .line 290
    const-string p1, "Active display mode no longer available, reverting to default mode."

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    :cond_e6
    iget p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDefaultModeId:I

    iput p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveModeId:I

    .line 294
    iput-boolean v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveModeInvalid:Z

    .line 298
    :cond_ec
    new-array p1, v2, [I

    iget p2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveModeId:I

    aput p2, p1, p4

    iput-object p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mAllowedModeIds:[I

    .line 299
    iget-object p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mAllowedPhysIndexes:[I

    array-length p2, p1

    new-array p2, p2, [I

    .line 300
    nop

    .line 301
    array-length p3, p1

    move p5, p4

    :goto_fc
    if-ge p4, p3, :cond_10e

    aget v0, p1, p4

    .line 302
    invoke-direct {p0, v0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->findMatchingModeIdLocked(I)I

    move-result v0

    .line 303
    if-lez v0, :cond_10b

    .line 304
    add-int/lit8 v1, p5, 0x1

    aput v0, p2, p5

    move p5, v1

    .line 301
    :cond_10b
    add-int/lit8 p4, p4, 0x1

    goto :goto_fc

    .line 310
    :cond_10e
    iget-object p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mAllowedModeIds:[I

    invoke-static {p2, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p1

    xor-int/2addr p1, v2

    iput-boolean p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mAllowedModeIdsInvalid:Z

    .line 313
    iget-object p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-virtual {p1}, Lcom/android/server/display/LocalDisplayAdapter;->sendTraversalRequestLocked()V

    .line 314
    return v2
.end method
