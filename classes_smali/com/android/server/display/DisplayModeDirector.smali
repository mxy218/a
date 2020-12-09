.class public Lcom/android/server/display/DisplayModeDirector;
.super Ljava/lang/Object;
.source "DisplayModeDirector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;,
        Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;,
        Lcom/android/server/display/DisplayModeDirector$DisplayObserver;,
        Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;,
        Lcom/android/server/display/DisplayModeDirector$SettingsObserver;,
        Lcom/android/server/display/DisplayModeDirector$Vote;,
        Lcom/android/server/display/DisplayModeDirector$DisplayModeDirectorHandler;,
        Lcom/android/server/display/DisplayModeDirector$Listener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final EPSILON:F = 0.01f

.field private static final GLOBAL_ID:I = -0x1

.field private static final MSG_ALLOWED_MODES_CHANGED:I = 0x1

.field private static final MSG_BRIGHTNESS_THRESHOLDS_CHANGED:I = 0x2

.field private static final MSG_DEFAULT_PEAK_REFRESH_RATE_CHANGED:I = 0x3

.field private static final MSG_REFRESH_RATE_IN_ZONE_CHANGED:I = 0x4

.field private static final TAG:Ljava/lang/String; = "DisplayModeDirector"


# instance fields
.field private final mAppRequestObserver:Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;

.field private final mBrightnessObserver:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

.field private final mContext:Landroid/content/Context;

.field private final mDefaultModeByDisplay:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/Display$Mode;",
            ">;"
        }
    .end annotation
.end field

.field private final mDeviceConfigDisplaySettings:Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;

.field private final mDisplayObserver:Lcom/android/server/display/DisplayModeDirector$DisplayObserver;

.field private final mHandler:Lcom/android/server/display/DisplayModeDirector$DisplayModeDirectorHandler;

.field private mListener:Lcom/android/server/display/DisplayModeDirector$Listener;

.field private final mLock:Ljava/lang/Object;

.field private final mSettingsObserver:Lcom/android/server/display/DisplayModeDirector$SettingsObserver;

.field private final mSupportedModesByDisplay:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[",
            "Landroid/view/Display$Mode;",
            ">;"
        }
    .end annotation
.end field

.field private final mVotesByDisplay:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/display/DisplayModeDirector$Vote;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 5

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mLock:Ljava/lang/Object;

    .line 104
    iput-object p1, p0, Lcom/android/server/display/DisplayModeDirector;->mContext:Landroid/content/Context;

    .line 105
    new-instance v0, Lcom/android/server/display/DisplayModeDirector$DisplayModeDirectorHandler;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/display/DisplayModeDirector$DisplayModeDirectorHandler;-><init>(Lcom/android/server/display/DisplayModeDirector;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mHandler:Lcom/android/server/display/DisplayModeDirector$DisplayModeDirectorHandler;

    .line 106
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mVotesByDisplay:Landroid/util/SparseArray;

    .line 107
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mSupportedModesByDisplay:Landroid/util/SparseArray;

    .line 108
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mDefaultModeByDisplay:Landroid/util/SparseArray;

    .line 109
    new-instance v0, Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;

    invoke-direct {v0, p0}, Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;-><init>(Lcom/android/server/display/DisplayModeDirector;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mAppRequestObserver:Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;

    .line 110
    new-instance v0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;-><init>(Lcom/android/server/display/DisplayModeDirector;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mSettingsObserver:Lcom/android/server/display/DisplayModeDirector$SettingsObserver;

    .line 111
    new-instance v0, Lcom/android/server/display/DisplayModeDirector$DisplayObserver;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/display/DisplayModeDirector$DisplayObserver;-><init>(Lcom/android/server/display/DisplayModeDirector;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mDisplayObserver:Lcom/android/server/display/DisplayModeDirector$DisplayObserver;

    .line 112
    new-instance v0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;-><init>(Lcom/android/server/display/DisplayModeDirector;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mBrightnessObserver:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    .line 113
    new-instance p1, Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;

    invoke-direct {p1, p0}, Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;-><init>(Lcom/android/server/display/DisplayModeDirector;)V

    iput-object p1, p0, Lcom/android/server/display/DisplayModeDirector;->mDeviceConfigDisplaySettings:Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;

    .line 114
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/display/DisplayModeDirector;)Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;
    .registers 1

    .line 65
    iget-object p0, p0, Lcom/android/server/display/DisplayModeDirector;->mBrightnessObserver:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/server/display/DisplayModeDirector;)Lcom/android/server/display/DisplayModeDirector$SettingsObserver;
    .registers 1

    .line 65
    iget-object p0, p0, Lcom/android/server/display/DisplayModeDirector;->mSettingsObserver:Lcom/android/server/display/DisplayModeDirector$SettingsObserver;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/server/display/DisplayModeDirector;)Lcom/android/server/display/DisplayModeDirector$DisplayModeDirectorHandler;
    .registers 1

    .line 65
    iget-object p0, p0, Lcom/android/server/display/DisplayModeDirector;->mHandler:Lcom/android/server/display/DisplayModeDirector$DisplayModeDirectorHandler;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/android/server/display/DisplayModeDirector;)Landroid/content/Context;
    .registers 1

    .line 65
    iget-object p0, p0, Lcom/android/server/display/DisplayModeDirector;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/server/display/DisplayModeDirector;)Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;
    .registers 1

    .line 65
    iget-object p0, p0, Lcom/android/server/display/DisplayModeDirector;->mDeviceConfigDisplaySettings:Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/server/display/DisplayModeDirector;)Ljava/lang/Object;
    .registers 1

    .line 65
    iget-object p0, p0, Lcom/android/server/display/DisplayModeDirector;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/server/display/DisplayModeDirector;ILcom/android/server/display/DisplayModeDirector$Vote;)V
    .registers 3

    .line 65
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/DisplayModeDirector;->updateVoteLocked(ILcom/android/server/display/DisplayModeDirector$Vote;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/display/DisplayModeDirector;IILcom/android/server/display/DisplayModeDirector$Vote;)V
    .registers 4

    .line 65
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/display/DisplayModeDirector;->updateVoteLocked(IILcom/android/server/display/DisplayModeDirector$Vote;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/display/DisplayModeDirector;)Landroid/util/SparseArray;
    .registers 1

    .line 65
    iget-object p0, p0, Lcom/android/server/display/DisplayModeDirector;->mSupportedModesByDisplay:Landroid/util/SparseArray;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/server/display/DisplayModeDirector;)Landroid/util/SparseArray;
    .registers 1

    .line 65
    iget-object p0, p0, Lcom/android/server/display/DisplayModeDirector;->mDefaultModeByDisplay:Landroid/util/SparseArray;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/server/display/DisplayModeDirector;)V
    .registers 1

    .line 65
    invoke-direct {p0}, Lcom/android/server/display/DisplayModeDirector;->notifyAllowedModesChangedLocked()V

    return-void
.end method

.method private filterModes([Landroid/view/Display$Mode;IIFF)[I
    .registers 14

    .line 254
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 255
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_8
    if-ge v3, v1, :cond_32

    aget-object v4, p1, v3

    .line 256
    invoke-virtual {v4}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v5

    if-ne v5, p2, :cond_2f

    invoke-virtual {v4}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v5

    if-eq v5, p3, :cond_19

    .line 264
    goto :goto_2f

    .line 266
    :cond_19
    invoke-virtual {v4}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v5

    .line 270
    const v6, 0x3c23d70a  # 0.01f

    sub-float v7, p4, v6

    cmpg-float v7, v5, v7

    if-ltz v7, :cond_2f

    add-float/2addr v6, p5

    cmpl-float v5, v5, v6

    if-lez v5, :cond_2c

    .line 279
    goto :goto_2f

    .line 281
    :cond_2c
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 255
    :cond_2f
    :goto_2f
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 283
    :cond_32
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    .line 284
    new-array p2, p1, [I

    .line 285
    nop

    :goto_39
    if-ge v2, p1, :cond_4a

    .line 286
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/Display$Mode;

    invoke-virtual {p3}, Landroid/view/Display$Mode;->getModeId()I

    move-result p3

    aput p3, p2, v2

    .line 285
    add-int/lit8 v2, v2, 0x1

    goto :goto_39

    .line 288
    :cond_4a
    return-object p2
.end method

.method private getAllowedModesLocked(Landroid/util/SparseArray;[Landroid/view/Display$Mode;Landroid/view/Display$Mode;)[I
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/display/DisplayModeDirector$Vote;",
            ">;[",
            "Landroid/view/Display$Mode;",
            "Landroid/view/Display$Mode;",
            ")[I"
        }
    .end annotation

    .line 183
    const/4 v0, 0x0

    move v1, v0

    .line 184
    :goto_2
    const/4 v2, 0x5

    if-gt v1, v2, :cond_64

    .line 185
    const/4 v3, 0x0

    .line 186
    const/high16 v4, 0x7f800000  # Float.POSITIVE_INFINITY

    .line 187
    nop

    .line 188
    nop

    .line 190
    const/4 v5, -0x1

    move v10, v3

    move v11, v4

    move v3, v5

    move v4, v3

    .line 191
    :goto_f
    if-lt v2, v1, :cond_42

    .line 193
    move-object v12, p1

    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/display/DisplayModeDirector$Vote;

    .line 194
    if-nez v6, :cond_1b

    .line 195
    goto :goto_3f

    .line 198
    :cond_1b
    iget v7, v6, Lcom/android/server/display/DisplayModeDirector$Vote;->minRefreshRate:F

    invoke-static {v10, v7}, Ljava/lang/Math;->max(FF)F

    move-result v7

    .line 199
    iget v8, v6, Lcom/android/server/display/DisplayModeDirector$Vote;->maxRefreshRate:F

    invoke-static {v11, v8}, Ljava/lang/Math;->min(FF)F

    move-result v8

    .line 202
    if-ne v3, v5, :cond_3d

    if-ne v4, v5, :cond_3d

    iget v9, v6, Lcom/android/server/display/DisplayModeDirector$Vote;->height:I

    if-lez v9, :cond_3d

    iget v9, v6, Lcom/android/server/display/DisplayModeDirector$Vote;->width:I

    if-lez v9, :cond_3d

    .line 204
    iget v3, v6, Lcom/android/server/display/DisplayModeDirector$Vote;->width:I

    .line 205
    iget v4, v6, Lcom/android/server/display/DisplayModeDirector$Vote;->height:I

    move v10, v7

    move v11, v8

    move v13, v4

    move v4, v3

    move v3, v13

    goto :goto_3f

    .line 192
    :cond_3d
    move v10, v7

    move v11, v8

    :goto_3f
    add-int/lit8 v2, v2, -0x1

    goto :goto_f

    .line 212
    :cond_42
    move-object v12, p1

    if-eq v3, v5, :cond_4b

    if-ne v4, v5, :cond_48

    goto :goto_4b

    :cond_48
    move v9, v3

    move v8, v4

    goto :goto_55

    .line 213
    :cond_4b
    :goto_4b
    invoke-virtual/range {p3 .. p3}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v4

    .line 214
    invoke-virtual/range {p3 .. p3}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v3

    move v9, v3

    move v8, v4

    .line 217
    :goto_55
    nop

    .line 218
    move-object v6, p0

    move-object/from16 v7, p2

    invoke-direct/range {v6 .. v11}, Lcom/android/server/display/DisplayModeDirector;->filterModes([Landroid/view/Display$Mode;IIFF)[I

    move-result-object v2

    .line 219
    array-length v3, v2

    if-lez v3, :cond_61

    .line 230
    return-object v2

    .line 244
    :cond_61
    add-int/lit8 v1, v1, 0x1

    .line 245
    goto :goto_2

    .line 249
    :cond_64
    const/4 v1, 0x1

    new-array v1, v1, [I

    invoke-virtual/range {p3 .. p3}, Landroid/view/Display$Mode;->getModeId()I

    move-result v2

    aput v2, v1, v0

    return-object v1
.end method

.method private getOrCreateVotesByDisplay(I)Landroid/util/SparseArray;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/display/DisplayModeDirector$Vote;",
            ">;"
        }
    .end annotation

    .line 395
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mVotesByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    .line 396
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mVotesByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_16

    .line 397
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mVotesByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/SparseArray;

    return-object p1

    .line 399
    :cond_16
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 400
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector;->mVotesByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 401
    return-object v0
.end method

.method private getVotesLocked(I)Landroid/util/SparseArray;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/display/DisplayModeDirector$Vote;",
            ">;"
        }
    .end annotation

    .line 160
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mVotesByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/SparseArray;

    .line 162
    if-eqz p1, :cond_f

    .line 163
    invoke-virtual {p1}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object p1

    goto :goto_14

    .line 165
    :cond_f
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    .line 168
    :goto_14
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mVotesByDisplay:Landroid/util/SparseArray;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 169
    if-eqz v0, :cond_3c

    .line 170
    const/4 v1, 0x0

    :goto_20
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_3c

    .line 171
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 172
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v3

    if-gez v3, :cond_39

    .line 173
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/display/DisplayModeDirector$Vote;

    invoke-virtual {p1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 170
    :cond_39
    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    .line 177
    :cond_3c
    return-object p1
.end method

.method private notifyAllowedModesChangedLocked()V
    .registers 4

    .line 384
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mListener:Lcom/android/server/display/DisplayModeDirector$Listener;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mHandler:Lcom/android/server/display/DisplayModeDirector$DisplayModeDirectorHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayModeDirector$DisplayModeDirectorHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_18

    .line 389
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mHandler:Lcom/android/server/display/DisplayModeDirector$DisplayModeDirectorHandler;

    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector;->mListener:Lcom/android/server/display/DisplayModeDirector$Listener;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/display/DisplayModeDirector$DisplayModeDirectorHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 390
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 392
    :cond_18
    return-void
.end method

.method private updateVoteLocked(IILcom/android/server/display/DisplayModeDirector$Vote;)V
    .registers 6

    .line 358
    if-ltz p2, :cond_28

    const/4 v0, 0x5

    if-le p2, v0, :cond_6

    goto :goto_28

    .line 364
    :cond_6
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayModeDirector;->getOrCreateVotesByDisplay(I)Landroid/util/SparseArray;

    move-result-object v0

    .line 366
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/DisplayModeDirector$Vote;

    .line 367
    if-eqz p3, :cond_16

    .line 368
    invoke-virtual {v0, p2, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_19

    .line 370
    :cond_16
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 373
    :goto_19
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result p2

    if-nez p2, :cond_24

    .line 377
    iget-object p2, p0, Lcom/android/server/display/DisplayModeDirector;->mVotesByDisplay:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 380
    :cond_24
    invoke-direct {p0}, Lcom/android/server/display/DisplayModeDirector;->notifyAllowedModesChangedLocked()V

    .line 381
    return-void

    .line 359
    :cond_28
    :goto_28
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Received a vote with an invalid priority, ignoring: priority="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    invoke-static {p2}, Lcom/android/server/display/DisplayModeDirector$Vote;->priorityToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", vote="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/Throwable;

    invoke-direct {p2}, Ljava/lang/Throwable;-><init>()V

    .line 359
    const-string p3, "DisplayModeDirector"

    invoke-static {p3, p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 362
    return-void
.end method

.method private updateVoteLocked(ILcom/android/server/display/DisplayModeDirector$Vote;)V
    .registers 4

    .line 349
    const/4 v0, -0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/display/DisplayModeDirector;->updateVoteLocked(IILcom/android/server/display/DisplayModeDirector$Vote;)V

    .line 350
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .registers 9

    .line 316
    const-string v0, "DisplayModeDirector"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 317
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 318
    :try_start_8
    const-string v1, "  mSupportedModesByDisplay:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 319
    const/4 v1, 0x0

    move v2, v1

    :goto_f
    iget-object v3, p0, Lcom/android/server/display/DisplayModeDirector;->mSupportedModesByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_48

    .line 320
    iget-object v3, p0, Lcom/android/server/display/DisplayModeDirector;->mSupportedModesByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 321
    iget-object v4, p0, Lcom/android/server/display/DisplayModeDirector;->mSupportedModesByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/view/Display$Mode;

    .line 322
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " -> "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 319
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 324
    :cond_48
    const-string v2, "  mDefaultModeByDisplay:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 325
    move v2, v1

    :goto_4e
    iget-object v3, p0, Lcom/android/server/display/DisplayModeDirector;->mDefaultModeByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_83

    .line 326
    iget-object v3, p0, Lcom/android/server/display/DisplayModeDirector;->mDefaultModeByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 327
    iget-object v4, p0, Lcom/android/server/display/DisplayModeDirector;->mDefaultModeByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/Display$Mode;

    .line 328
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " -> "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 325
    add-int/lit8 v2, v2, 0x1

    goto :goto_4e

    .line 330
    :cond_83
    const-string v2, "  mVotesByDisplay:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 331
    nop

    :goto_89
    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector;->mVotesByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_ea

    .line 332
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/display/DisplayModeDirector;->mVotesByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 333
    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector;->mVotesByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    .line 334
    const/4 v3, 0x5

    :goto_b9
    if-ltz v3, :cond_e7

    .line 335
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/display/DisplayModeDirector$Vote;

    .line 336
    if-nez v4, :cond_c4

    .line 337
    goto :goto_e4

    .line 339
    :cond_c4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "      "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/android/server/display/DisplayModeDirector$Vote;->priorityToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " -> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 334
    :goto_e4
    add-int/lit8 v3, v3, -0x1

    goto :goto_b9

    .line 331
    :cond_e7
    add-int/lit8 v1, v1, 0x1

    goto :goto_89

    .line 342
    :cond_ea
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector;->mSettingsObserver:Lcom/android/server/display/DisplayModeDirector$SettingsObserver;

    invoke-virtual {v1, p1}, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->dumpLocked(Ljava/io/PrintWriter;)V

    .line 343
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector;->mAppRequestObserver:Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;

    invoke-virtual {v1, p1}, Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;->dumpLocked(Ljava/io/PrintWriter;)V

    .line 344
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector;->mBrightnessObserver:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    invoke-virtual {v1, p1}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->dumpLocked(Ljava/io/PrintWriter;)V

    .line 345
    monitor-exit v0

    .line 346
    return-void

    .line 345
    :catchall_fb
    move-exception p1

    monitor-exit v0
    :try_end_fd
    .catchall {:try_start_8 .. :try_end_fd} :catchall_fb

    throw p1
.end method

.method public getAllowedModes(I)[I
    .registers 6

    .line 145
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 146
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayModeDirector;->getVotesLocked(I)Landroid/util/SparseArray;

    move-result-object v1

    .line 147
    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector;->mSupportedModesByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/view/Display$Mode;

    .line 148
    iget-object v3, p0, Lcom/android/server/display/DisplayModeDirector;->mDefaultModeByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/Display$Mode;

    .line 149
    if-eqz v2, :cond_22

    if-nez v3, :cond_1c

    goto :goto_22

    .line 154
    :cond_1c
    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/display/DisplayModeDirector;->getAllowedModesLocked(Landroid/util/SparseArray;[Landroid/view/Display$Mode;Landroid/view/Display$Mode;)[I

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 150
    :cond_22
    :goto_22
    const-string v1, "DisplayModeDirector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Asked about unknown display, returning empty allowed set! (id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    const/4 p1, 0x0

    new-array p1, p1, [I

    monitor-exit v0

    return-object p1

    .line 155
    :catchall_42
    move-exception p1

    monitor-exit v0
    :try_end_44
    .catchall {:try_start_3 .. :try_end_44} :catchall_42

    throw p1
.end method

.method public getAppRequestObserver()Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;
    .registers 2

    .line 298
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mAppRequestObserver:Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;

    return-object v0
.end method

.method public setListener(Lcom/android/server/display/DisplayModeDirector$Listener;)V
    .registers 3

    .line 305
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 306
    :try_start_3
    iput-object p1, p0, Lcom/android/server/display/DisplayModeDirector;->mListener:Lcom/android/server/display/DisplayModeDirector$Listener;

    .line 307
    monitor-exit v0

    .line 308
    return-void

    .line 307
    :catchall_7
    move-exception p1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p1
.end method

.method public start(Landroid/hardware/SensorManager;)V
    .registers 3

    .line 124
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mSettingsObserver:Lcom/android/server/display/DisplayModeDirector$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->observe()V

    .line 125
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mDisplayObserver:Lcom/android/server/display/DisplayModeDirector$DisplayObserver;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayModeDirector$DisplayObserver;->observe()V

    .line 126
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mSettingsObserver:Lcom/android/server/display/DisplayModeDirector$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->observe()V

    .line 127
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mBrightnessObserver:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    invoke-virtual {v0, p1}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->observe(Landroid/hardware/SensorManager;)V

    .line 128
    iget-object p1, p0, Lcom/android/server/display/DisplayModeDirector;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 131
    :try_start_17
    invoke-direct {p0}, Lcom/android/server/display/DisplayModeDirector;->notifyAllowedModesChangedLocked()V

    .line 132
    monitor-exit p1

    .line 134
    return-void

    .line 132
    :catchall_1c
    move-exception v0

    monitor-exit p1
    :try_end_1e
    .catchall {:try_start_17 .. :try_end_1e} :catchall_1c

    throw v0
.end method
