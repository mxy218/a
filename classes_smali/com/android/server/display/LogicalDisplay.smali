.class final Lcom/android/server/display/LogicalDisplay;
.super Ljava/lang/Object;
.source "LogicalDisplay.java"


# static fields
.field private static final BLANK_LAYER_STACK:I = -0x1


# instance fields
.field private mAllowedDisplayModes:[I

.field private final mBaseDisplayInfo:Landroid/view/DisplayInfo;

.field private final mDisplayId:I

.field private mDisplayOffsetX:I

.field private mDisplayOffsetY:I

.field private mDisplayScalingDisabled:Z

.field private mHasContent:Z

.field private mInfo:Landroid/view/DisplayInfo;

.field private final mLayerStack:I

.field private mOverrideDisplayInfo:Landroid/view/DisplayInfo;

.field private mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

.field private mPrimaryDisplayDeviceInfo:Lcom/android/server/display/DisplayDeviceInfo;

.field private mRequestedColorMode:I

.field private final mTempDisplayRect:Landroid/graphics/Rect;

.field private final mTempLayerStackRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(IILcom/android/server/display/DisplayDevice;)V
    .registers 5

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    .line 90
    const/4 v0, 0x0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mAllowedDisplayModes:[I

    .line 106
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mTempLayerStackRect:Landroid/graphics/Rect;

    .line 107
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mTempDisplayRect:Landroid/graphics/Rect;

    .line 110
    iput p1, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayId:I

    .line 111
    iput p2, p0, Lcom/android/server/display/LogicalDisplay;->mLayerStack:I

    .line 112
    iput-object p3, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    .line 113
    return-void
.end method

.method private static getMaskingInsets(Lcom/android/server/display/DisplayDeviceInfo;)Landroid/graphics/Rect;
    .registers 2

    .line 326
    iget v0, p0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    .line 327
    :goto_9
    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceInfo;->displayCutout:Landroid/view/DisplayCutout;

    if-eqz v0, :cond_16

    .line 328
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceInfo;->displayCutout:Landroid/view/DisplayCutout;

    invoke-virtual {p0}, Landroid/view/DisplayCutout;->getSafeInsets()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0

    .line 330
    :cond_16
    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    return-object p0
.end method


# virtual methods
.method public configureDisplayLocked(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/display/DisplayDevice;Z)V
    .registers 12

    .line 355
    if-eqz p3, :cond_4

    const/4 p3, -0x1

    goto :goto_6

    :cond_4
    iget p3, p0, Lcom/android/server/display/LogicalDisplay;->mLayerStack:I

    :goto_6
    invoke-virtual {p2, p1, p3}, Lcom/android/server/display/DisplayDevice;->setLayerStackLocked(Landroid/view/SurfaceControl$Transaction;I)V

    .line 358
    iget-object p3, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p2, p3, :cond_1a

    .line 359
    iget-object p3, p0, Lcom/android/server/display/LogicalDisplay;->mAllowedDisplayModes:[I

    invoke-virtual {p2, p3}, Lcom/android/server/display/DisplayDevice;->setAllowedDisplayModesLocked([I)V

    .line 360
    iget p3, p0, Lcom/android/server/display/LogicalDisplay;->mRequestedColorMode:I

    invoke-virtual {p2, p3}, Lcom/android/server/display/DisplayDevice;->setRequestedColorModeLocked(I)V

    goto :goto_24

    .line 363
    :cond_1a
    new-array p3, v0, [I

    aput v1, p3, v1

    invoke-virtual {p2, p3}, Lcom/android/server/display/DisplayDevice;->setAllowedDisplayModesLocked([I)V

    .line 364
    invoke-virtual {p2, v1}, Lcom/android/server/display/DisplayDevice;->setRequestedColorModeLocked(I)V

    .line 368
    :goto_24
    invoke-virtual {p0}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object p3

    .line 369
    invoke-virtual {p2}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v2

    .line 374
    iget-object v3, p0, Lcom/android/server/display/LogicalDisplay;->mTempLayerStackRect:Landroid/graphics/Rect;

    iget v4, p3, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v5, p3, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-virtual {v3, v1, v1, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 379
    nop

    .line 380
    iget v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    const/4 v4, 0x2

    and-int/2addr v3, v4

    if-eqz v3, :cond_3f

    .line 381
    iget v3, p3, Landroid/view/DisplayInfo;->rotation:I

    goto :goto_40

    .line 380
    :cond_3f
    move v3, v1

    .line 385
    :goto_40
    iget v5, v2, Lcom/android/server/display/DisplayDeviceInfo;->rotation:I

    add-int/2addr v3, v5

    rem-int/lit8 v3, v3, 0x4

    .line 392
    if-eq v3, v0, :cond_4a

    const/4 v5, 0x3

    if-ne v3, v5, :cond_4b

    :cond_4a
    move v1, v0

    .line 394
    :cond_4b
    if-eqz v1, :cond_50

    iget v5, v2, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    goto :goto_52

    :cond_50
    iget v5, v2, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    .line 395
    :goto_52
    if-eqz v1, :cond_57

    iget v1, v2, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    goto :goto_59

    :cond_57
    iget v1, v2, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    .line 397
    :goto_59
    invoke-static {v2}, Lcom/android/server/display/LogicalDisplay;->getMaskingInsets(Lcom/android/server/display/DisplayDeviceInfo;)Landroid/graphics/Rect;

    move-result-object v2

    .line 398
    invoke-static {v2, v3}, Lcom/android/server/wm/utils/InsetUtils;->rotateInsets(Landroid/graphics/Rect;I)V

    .line 400
    iget v6, v2, Landroid/graphics/Rect;->left:I

    iget v7, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, v7

    sub-int/2addr v5, v6

    .line 401
    iget v6, v2, Landroid/graphics/Rect;->top:I

    iget v7, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v7

    sub-int/2addr v1, v6

    .line 411
    iget v6, p3, Landroid/view/DisplayInfo;->flags:I

    const/high16 v7, 0x40000000  # 2.0f

    and-int/2addr v6, v7

    if-nez v6, :cond_94

    iget-boolean v6, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayScalingDisabled:Z

    if-eqz v6, :cond_78

    goto :goto_94

    .line 414
    :cond_78
    iget v6, p3, Landroid/view/DisplayInfo;->logicalHeight:I

    mul-int/2addr v6, v5

    iget v7, p3, Landroid/view/DisplayInfo;->logicalWidth:I

    mul-int/2addr v7, v1

    if-ge v6, v7, :cond_8a

    .line 417
    nop

    .line 418
    iget v6, p3, Landroid/view/DisplayInfo;->logicalHeight:I

    mul-int/2addr v6, v5

    iget p3, p3, Landroid/view/DisplayInfo;->logicalWidth:I

    div-int p3, v6, p3

    move v6, v5

    goto :goto_98

    .line 421
    :cond_8a
    iget v6, p3, Landroid/view/DisplayInfo;->logicalWidth:I

    mul-int/2addr v6, v1

    iget p3, p3, Landroid/view/DisplayInfo;->logicalHeight:I

    div-int p3, v6, p3

    .line 422
    move v6, p3

    move p3, v1

    goto :goto_98

    .line 412
    :cond_94
    :goto_94
    iget v6, p3, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 413
    iget p3, p3, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 424
    :goto_98
    sub-int/2addr v1, p3

    div-int/2addr v1, v4

    .line 425
    sub-int/2addr v5, v6

    div-int/2addr v5, v4

    .line 426
    iget-object v7, p0, Lcom/android/server/display/LogicalDisplay;->mTempDisplayRect:Landroid/graphics/Rect;

    add-int/2addr v6, v5

    add-int/2addr p3, v1

    invoke-virtual {v7, v5, v1, v6, p3}, Landroid/graphics/Rect;->set(IIII)V

    .line 430
    iget-object p3, p0, Lcom/android/server/display/LogicalDisplay;->mTempDisplayRect:Landroid/graphics/Rect;

    iget v1, v2, Landroid/graphics/Rect;->left:I

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p3, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 432
    if-nez v3, :cond_b8

    .line 433
    iget-object p3, p0, Lcom/android/server/display/LogicalDisplay;->mTempDisplayRect:Landroid/graphics/Rect;

    iget v0, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetX:I

    iget v1, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetY:I

    invoke-virtual {p3, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_dd

    .line 434
    :cond_b8
    if-ne v3, v0, :cond_c5

    .line 435
    iget-object p3, p0, Lcom/android/server/display/LogicalDisplay;->mTempDisplayRect:Landroid/graphics/Rect;

    iget v0, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetY:I

    iget v1, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetX:I

    neg-int v1, v1

    invoke-virtual {p3, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_dd

    .line 436
    :cond_c5
    if-ne v3, v4, :cond_d3

    .line 437
    iget-object p3, p0, Lcom/android/server/display/LogicalDisplay;->mTempDisplayRect:Landroid/graphics/Rect;

    iget v0, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetX:I

    neg-int v0, v0

    iget v1, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetY:I

    neg-int v1, v1

    invoke-virtual {p3, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_dd

    .line 439
    :cond_d3
    iget-object p3, p0, Lcom/android/server/display/LogicalDisplay;->mTempDisplayRect:Landroid/graphics/Rect;

    iget v0, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetY:I

    neg-int v0, v0

    iget v1, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetX:I

    invoke-virtual {p3, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 441
    :goto_dd
    iget-object p3, p0, Lcom/android/server/display/LogicalDisplay;->mTempLayerStackRect:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mTempDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {p2, p1, v3, p3, v0}, Lcom/android/server/display/DisplayDevice;->setProjectionLocked(Landroid/view/SurfaceControl$Transaction;ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 442
    return-void
.end method

.method public dumpLocked(Ljava/io/PrintWriter;)V
    .registers 4

    .line 534
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mDisplayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 535
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mLayerStack="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/LogicalDisplay;->mLayerStack:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 536
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mHasContent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/LogicalDisplay;->mHasContent:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 537
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mAllowedDisplayModes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mAllowedDisplayModes:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 538
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mRequestedColorMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/LogicalDisplay;->mRequestedColorMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 539
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mDisplayOffset=("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 540
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mDisplayScalingDisabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayScalingDisabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 541
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mPrimaryDisplayDevice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    if-eqz v1, :cond_c0

    .line 542
    invoke-virtual {v1}, Lcom/android/server/display/DisplayDevice;->getNameLocked()Ljava/lang/String;

    move-result-object v1

    goto :goto_c3

    :cond_c0
    const-string/jumbo v1, "null"

    :goto_c3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 541
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 543
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mBaseDisplayInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 544
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mOverrideDisplayInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 545
    return-void
.end method

.method public getAllowedDisplayModesLocked()[I
    .registers 2

    .line 478
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mAllowedDisplayModes:[I

    return-object v0
.end method

.method public getDisplayIdLocked()I
    .registers 2

    .line 121
    iget v0, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayId:I

    return v0
.end method

.method public getDisplayInfoLocked()Landroid/view/DisplayInfo;
    .registers 3

    .line 141
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    if-nez v0, :cond_9c

    .line 142
    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    .line 143
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0, v1}, Landroid/view/DisplayInfo;->copyFrom(Landroid/view/DisplayInfo;)V

    .line 144
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    if-eqz v0, :cond_9c

    .line 145
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    iget v0, v0, Landroid/view/DisplayInfo;->appWidth:I

    iput v0, v1, Landroid/view/DisplayInfo;->appWidth:I

    .line 146
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->appHeight:I

    iput v1, v0, Landroid/view/DisplayInfo;->appHeight:I

    .line 147
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    iput v1, v0, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    .line 148
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->smallestNominalAppHeight:I

    iput v1, v0, Landroid/view/DisplayInfo;->smallestNominalAppHeight:I

    .line 149
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->largestNominalAppWidth:I

    iput v1, v0, Landroid/view/DisplayInfo;->largestNominalAppWidth:I

    .line 150
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->largestNominalAppHeight:I

    iput v1, v0, Landroid/view/DisplayInfo;->largestNominalAppHeight:I

    .line 151
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->logicalWidth:I

    iput v1, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 152
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    iput v1, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 153
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->overscanLeft:I

    iput v1, v0, Landroid/view/DisplayInfo;->overscanLeft:I

    .line 154
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->overscanTop:I

    iput v1, v0, Landroid/view/DisplayInfo;->overscanTop:I

    .line 155
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->overscanRight:I

    iput v1, v0, Landroid/view/DisplayInfo;->overscanRight:I

    .line 156
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->overscanBottom:I

    iput v1, v0, Landroid/view/DisplayInfo;->overscanBottom:I

    .line 157
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->rotation:I

    iput v1, v0, Landroid/view/DisplayInfo;->rotation:I

    .line 158
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v1, v1, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    iput-object v1, v0, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    .line 159
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    iput v1, v0, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    .line 160
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->physicalXDpi:F

    iput v1, v0, Landroid/view/DisplayInfo;->physicalXDpi:F

    .line 161
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->physicalYDpi:F

    iput v1, v0, Landroid/view/DisplayInfo;->physicalYDpi:F

    .line 164
    :cond_9c
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    return-object v0
.end method

.method public getDisplayOffsetXLocked()I
    .registers 2

    .line 497
    iget v0, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetX:I

    return v0
.end method

.method public getDisplayOffsetYLocked()I
    .registers 2

    .line 504
    iget v0, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetY:I

    return v0
.end method

.method public getInsets()Landroid/graphics/Rect;
    .registers 2

    .line 319
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDeviceInfo:Lcom/android/server/display/DisplayDeviceInfo;

    invoke-static {v0}, Lcom/android/server/display/LogicalDisplay;->getMaskingInsets(Lcom/android/server/display/DisplayDeviceInfo;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method getNonOverrideDisplayInfoLocked(Landroid/view/DisplayInfo;)V
    .registers 3

    .line 171
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {p1, v0}, Landroid/view/DisplayInfo;->copyFrom(Landroid/view/DisplayInfo;)V

    .line 172
    return-void
.end method

.method public getPrimaryDisplayDeviceLocked()Lcom/android/server/display/DisplayDevice;
    .registers 2

    .line 130
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    return-object v0
.end method

.method public getRequestedColorModeLocked()I
    .registers 2

    .line 490
    iget v0, p0, Lcom/android/server/display/LogicalDisplay;->mRequestedColorMode:I

    return v0
.end method

.method public hasContentLocked()Z
    .registers 2

    .line 455
    iget-boolean v0, p0, Lcom/android/server/display/LogicalDisplay;->mHasContent:Z

    return v0
.end method

.method public isDisplayScalingDisabled()Z
    .registers 2

    .line 520
    iget-boolean v0, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayScalingDisabled:Z

    return v0
.end method

.method public isValidLocked()Z
    .registers 2

    .line 210
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public setAllowedDisplayModesLocked([I)V
    .registers 2

    .line 471
    iput-object p1, p0, Lcom/android/server/display/LogicalDisplay;->mAllowedDisplayModes:[I

    .line 472
    return-void
.end method

.method public setDisplayInfoOverrideFromWindowManagerLocked(Landroid/view/DisplayInfo;)Z
    .registers 5

    .line 182
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_20

    .line 183
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    if-nez v2, :cond_12

    .line 184
    new-instance v2, Landroid/view/DisplayInfo;

    invoke-direct {v2, p1}, Landroid/view/DisplayInfo;-><init>(Landroid/view/DisplayInfo;)V

    iput-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    .line 185
    iput-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    .line 186
    return v0

    .line 188
    :cond_12
    invoke-virtual {v2, p1}, Landroid/view/DisplayInfo;->equals(Landroid/view/DisplayInfo;)Z

    move-result v2

    if-nez v2, :cond_29

    .line 189
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v2, p1}, Landroid/view/DisplayInfo;->copyFrom(Landroid/view/DisplayInfo;)V

    .line 190
    iput-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    .line 191
    return v0

    .line 193
    :cond_20
    iget-object p1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    if-eqz p1, :cond_29

    .line 194
    iput-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    .line 195
    iput-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    .line 196
    return v0

    .line 198
    :cond_29
    const/4 p1, 0x0

    return p1
.end method

.method public setDisplayOffsetsLocked(II)V
    .registers 3

    .line 511
    iput p1, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetX:I

    .line 512
    iput p2, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetY:I

    .line 513
    return-void
.end method

.method public setDisplayScalingDisabledLocked(Z)V
    .registers 2

    .line 530
    iput-boolean p1, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayScalingDisabled:Z

    .line 531
    return-void
.end method

.method public setHasContentLocked(Z)V
    .registers 2

    .line 464
    iput-boolean p1, p0, Lcom/android/server/display/LogicalDisplay;->mHasContent:Z

    .line 465
    return-void
.end method

.method public setRequestedColorModeLocked(I)V
    .registers 2

    .line 485
    iput p1, p0, Lcom/android/server/display/LogicalDisplay;->mRequestedColorMode:I

    .line 486
    return-void
.end method

.method public updateLocked(Ljava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/display/DisplayDevice;",
            ">;)V"
        }
    .end annotation

    .line 222
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    if-nez v0, :cond_5

    .line 223
    return-void

    .line 227
    :cond_5
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_f

    .line 228
    iput-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    .line 229
    return-void

    .line 237
    :cond_f
    iget-object p1, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object p1

    .line 238
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDeviceInfo:Lcom/android/server/display/DisplayDeviceInfo;

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_153

    .line 239
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, p0, Lcom/android/server/display/LogicalDisplay;->mLayerStack:I

    iput v2, v1, Landroid/view/DisplayInfo;->layerStack:I

    .line 240
    const/4 v2, 0x0

    iput v2, v1, Landroid/view/DisplayInfo;->flags:I

    .line 241
    iget v1, p1, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    and-int/lit8 v1, v1, 0x8

    const/4 v3, 0x1

    if-eqz v1, :cond_34

    .line 242
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v4, v1, Landroid/view/DisplayInfo;->flags:I

    or-int/2addr v4, v3

    iput v4, v1, Landroid/view/DisplayInfo;->flags:I

    .line 244
    :cond_34
    iget v1, p1, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_42

    .line 245
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v4, v1, Landroid/view/DisplayInfo;->flags:I

    or-int/lit8 v4, v4, 0x2

    iput v4, v1, Landroid/view/DisplayInfo;->flags:I

    .line 247
    :cond_42
    iget v1, p1, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_54

    .line 248
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v4, v1, Landroid/view/DisplayInfo;->flags:I

    or-int/lit8 v4, v4, 0x4

    iput v4, v1, Landroid/view/DisplayInfo;->flags:I

    .line 250
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iput v3, v1, Landroid/view/DisplayInfo;->removeMode:I

    .line 252
    :cond_54
    iget v1, p1, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_5e

    .line 253
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iput v3, v1, Landroid/view/DisplayInfo;->removeMode:I

    .line 255
    :cond_5e
    iget v1, p1, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_6c

    .line 256
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v4, v1, Landroid/view/DisplayInfo;->flags:I

    or-int/lit8 v4, v4, 0x8

    iput v4, v1, Landroid/view/DisplayInfo;->flags:I

    .line 258
    :cond_6c
    iget v1, p1, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_7a

    .line 259
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v4, v1, Landroid/view/DisplayInfo;->flags:I

    or-int/lit8 v4, v4, 0x10

    iput v4, v1, Landroid/view/DisplayInfo;->flags:I

    .line 261
    :cond_7a
    iget v1, p1, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_88

    .line 262
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v4, v1, Landroid/view/DisplayInfo;->flags:I

    or-int/lit8 v4, v4, 0x20

    iput v4, v1, Landroid/view/DisplayInfo;->flags:I

    .line 264
    :cond_88
    iget v1, p1, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    and-int/lit16 v1, v1, 0x1000

    if-eqz v1, :cond_96

    .line 265
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v4, v1, Landroid/view/DisplayInfo;->flags:I

    or-int/lit8 v4, v4, 0x40

    iput v4, v1, Landroid/view/DisplayInfo;->flags:I

    .line 267
    :cond_96
    invoke-static {p1}, Lcom/android/server/display/LogicalDisplay;->getMaskingInsets(Lcom/android/server/display/DisplayDeviceInfo;)Landroid/graphics/Rect;

    move-result-object v1

    .line 268
    iget v4, p1, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    iget v5, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    iget v5, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v5

    .line 269
    iget v5, p1, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    iget v6, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v1

    .line 271
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v6, p1, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    iput v6, v1, Landroid/view/DisplayInfo;->type:I

    .line 272
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v6, p1, Lcom/android/server/display/DisplayDeviceInfo;->address:Landroid/view/DisplayAddress;

    iput-object v6, v1, Landroid/view/DisplayInfo;->address:Landroid/view/DisplayAddress;

    .line 273
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v6, p1, Lcom/android/server/display/DisplayDeviceInfo;->name:Ljava/lang/String;

    iput-object v6, v1, Landroid/view/DisplayInfo;->name:Ljava/lang/String;

    .line 274
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v6, p1, Lcom/android/server/display/DisplayDeviceInfo;->uniqueId:Ljava/lang/String;

    iput-object v6, v1, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    .line 275
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iput v4, v1, Landroid/view/DisplayInfo;->appWidth:I

    .line 276
    iput v5, v1, Landroid/view/DisplayInfo;->appHeight:I

    .line 277
    iput v4, v1, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 278
    iput v5, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 279
    iput v2, v1, Landroid/view/DisplayInfo;->rotation:I

    .line 280
    iget v6, p1, Lcom/android/server/display/DisplayDeviceInfo;->modeId:I

    iput v6, v1, Landroid/view/DisplayInfo;->modeId:I

    .line 281
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v6, p1, Lcom/android/server/display/DisplayDeviceInfo;->defaultModeId:I

    iput v6, v1, Landroid/view/DisplayInfo;->defaultModeId:I

    .line 282
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v6, p1, Lcom/android/server/display/DisplayDeviceInfo;->supportedModes:[Landroid/view/Display$Mode;

    iget-object v7, p1, Lcom/android/server/display/DisplayDeviceInfo;->supportedModes:[Landroid/view/Display$Mode;

    array-length v7, v7

    invoke-static {v6, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/view/Display$Mode;

    iput-object v6, v1, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    .line 284
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v6, p1, Lcom/android/server/display/DisplayDeviceInfo;->colorMode:I

    iput v6, v1, Landroid/view/DisplayInfo;->colorMode:I

    .line 285
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v6, p1, Lcom/android/server/display/DisplayDeviceInfo;->supportedColorModes:[I

    iget-object v7, p1, Lcom/android/server/display/DisplayDeviceInfo;->supportedColorModes:[I

    array-length v7, v7

    invoke-static {v6, v7}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v6

    iput-object v6, v1, Landroid/view/DisplayInfo;->supportedColorModes:[I

    .line 288
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v6, p1, Lcom/android/server/display/DisplayDeviceInfo;->hdrCapabilities:Landroid/view/Display$HdrCapabilities;

    iput-object v6, v1, Landroid/view/DisplayInfo;->hdrCapabilities:Landroid/view/Display$HdrCapabilities;

    .line 289
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v6, p1, Lcom/android/server/display/DisplayDeviceInfo;->densityDpi:I

    iput v6, v1, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    .line 290
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v6, p1, Lcom/android/server/display/DisplayDeviceInfo;->xDpi:F

    iput v6, v1, Landroid/view/DisplayInfo;->physicalXDpi:F

    .line 291
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v6, p1, Lcom/android/server/display/DisplayDeviceInfo;->yDpi:F

    iput v6, v1, Landroid/view/DisplayInfo;->physicalYDpi:F

    .line 292
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget-wide v6, p1, Lcom/android/server/display/DisplayDeviceInfo;->appVsyncOffsetNanos:J

    iput-wide v6, v1, Landroid/view/DisplayInfo;->appVsyncOffsetNanos:J

    .line 293
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget-wide v6, p1, Lcom/android/server/display/DisplayDeviceInfo;->presentationDeadlineNanos:J

    iput-wide v6, v1, Landroid/view/DisplayInfo;->presentationDeadlineNanos:J

    .line 294
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v6, p1, Lcom/android/server/display/DisplayDeviceInfo;->state:I

    iput v6, v1, Landroid/view/DisplayInfo;->state:I

    .line 295
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iput v4, v1, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    .line 296
    iput v5, v1, Landroid/view/DisplayInfo;->smallestNominalAppHeight:I

    .line 297
    iput v4, v1, Landroid/view/DisplayInfo;->largestNominalAppWidth:I

    .line 298
    iput v5, v1, Landroid/view/DisplayInfo;->largestNominalAppHeight:I

    .line 299
    iget v4, p1, Lcom/android/server/display/DisplayDeviceInfo;->ownerUid:I

    iput v4, v1, Landroid/view/DisplayInfo;->ownerUid:I

    .line 300
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v4, p1, Lcom/android/server/display/DisplayDeviceInfo;->ownerPackageName:Ljava/lang/String;

    iput-object v4, v1, Landroid/view/DisplayInfo;->ownerPackageName:Ljava/lang/String;

    .line 301
    iget v1, p1, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    and-int/lit16 v1, v1, 0x800

    if-eqz v1, :cond_13f

    move v2, v3

    .line 303
    :cond_13f
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    if-eqz v2, :cond_145

    move-object v2, v0

    goto :goto_147

    :cond_145
    iget-object v2, p1, Lcom/android/server/display/DisplayDeviceInfo;->displayCutout:Landroid/view/DisplayCutout;

    :goto_147
    iput-object v2, v1, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    .line 304
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayId:I

    iput v2, v1, Landroid/view/DisplayInfo;->displayId:I

    .line 306
    iput-object p1, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDeviceInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 307
    iput-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    .line 309
    :cond_153
    return-void
.end method
