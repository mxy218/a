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
    .param p1, "displayId"  # I
    .param p2, "layerStack"  # I
    .param p3, "primaryDisplayDevice"  # Lcom/android/server/display/DisplayDevice;

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
    .registers 3
    .param p0, "deviceInfo"  # Lcom/android/server/display/DisplayDeviceInfo;

    .line 326
    iget v0, p0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    .line 327
    .local v0, "maskCutout":Z
    :goto_9
    if-eqz v0, :cond_16

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->displayCutout:Landroid/view/DisplayCutout;

    if-eqz v1, :cond_16

    .line 328
    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->displayCutout:Landroid/view/DisplayCutout;

    invoke-virtual {v1}, Landroid/view/DisplayCutout;->getSafeInsets()Landroid/graphics/Rect;

    move-result-object v1

    return-object v1

    .line 330
    :cond_16
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    return-object v1
.end method


# virtual methods
.method public configureDisplayLocked(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/display/DisplayDevice;Z)V
    .registers 21
    .param p1, "t"  # Landroid/view/SurfaceControl$Transaction;
    .param p2, "device"  # Lcom/android/server/display/DisplayDevice;
    .param p3, "isBlanked"  # Z

    .line 357
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p3, :cond_1c

    invoke-static {}, Lcom/android/server/display/MzDisplayUtils;->isAODOn()Z

    move-result v5

    if-eqz v5, :cond_1a

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v5

    iget v5, v5, Lcom/android/server/display/DisplayDeviceInfo;->state:I

    if-ne v5, v3, :cond_1a

    move v5, v4

    goto :goto_1e

    :cond_1a
    const/4 v5, -0x1

    goto :goto_1e

    :cond_1c
    iget v5, v0, Lcom/android/server/display/LogicalDisplay;->mLayerStack:I

    :goto_1e
    invoke-virtual {v2, v1, v5}, Lcom/android/server/display/DisplayDevice;->setLayerStackLocked(Landroid/view/SurfaceControl$Transaction;I)V

    .line 362
    iget-object v5, v0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    if-ne v2, v5, :cond_30

    .line 363
    iget-object v5, v0, Lcom/android/server/display/LogicalDisplay;->mAllowedDisplayModes:[I

    invoke-virtual {v2, v5}, Lcom/android/server/display/DisplayDevice;->setAllowedDisplayModesLocked([I)V

    .line 364
    iget v5, v0, Lcom/android/server/display/LogicalDisplay;->mRequestedColorMode:I

    invoke-virtual {v2, v5}, Lcom/android/server/display/DisplayDevice;->setRequestedColorModeLocked(I)V

    goto :goto_3a

    .line 367
    :cond_30
    new-array v5, v3, [I

    aput v4, v5, v4

    invoke-virtual {v2, v5}, Lcom/android/server/display/DisplayDevice;->setAllowedDisplayModesLocked([I)V

    .line 368
    invoke-virtual {v2, v4}, Lcom/android/server/display/DisplayDevice;->setRequestedColorModeLocked(I)V

    .line 372
    :goto_3a
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v5

    .line 373
    .local v5, "displayInfo":Landroid/view/DisplayInfo;
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v6

    .line 378
    .local v6, "displayDeviceInfo":Lcom/android/server/display/DisplayDeviceInfo;
    iget-object v7, v0, Lcom/android/server/display/LogicalDisplay;->mTempLayerStackRect:Landroid/graphics/Rect;

    iget v8, v5, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v9, v5, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-virtual {v7, v4, v4, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 383
    const/4 v7, 0x0

    .line 384
    .local v7, "orientation":I
    iget v8, v6, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    const/4 v9, 0x2

    and-int/2addr v8, v9

    if-eqz v8, :cond_54

    .line 385
    iget v7, v5, Landroid/view/DisplayInfo;->rotation:I

    .line 389
    :cond_54
    iget v8, v6, Lcom/android/server/display/DisplayDeviceInfo;->rotation:I

    add-int/2addr v8, v7

    rem-int/lit8 v8, v8, 0x4

    .line 396
    .end local v7  # "orientation":I
    .local v8, "orientation":I
    if-eq v8, v3, :cond_5e

    const/4 v7, 0x3

    if-ne v8, v7, :cond_5f

    :cond_5e
    move v4, v3

    .line 398
    .local v4, "rotated":Z
    :cond_5f
    if-eqz v4, :cond_64

    iget v7, v6, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    goto :goto_66

    :cond_64
    iget v7, v6, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    .line 399
    .local v7, "physWidth":I
    :goto_66
    if-eqz v4, :cond_6b

    iget v10, v6, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    goto :goto_6d

    :cond_6b
    iget v10, v6, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    .line 401
    .local v10, "physHeight":I
    :goto_6d
    invoke-static {v6}, Lcom/android/server/display/LogicalDisplay;->getMaskingInsets(Lcom/android/server/display/DisplayDeviceInfo;)Landroid/graphics/Rect;

    move-result-object v11

    .line 402
    .local v11, "maskingInsets":Landroid/graphics/Rect;
    invoke-static {v11, v8}, Lcom/android/server/wm/utils/InsetUtils;->rotateInsets(Landroid/graphics/Rect;I)V

    .line 404
    iget v12, v11, Landroid/graphics/Rect;->left:I

    iget v13, v11, Landroid/graphics/Rect;->right:I

    add-int/2addr v12, v13

    sub-int/2addr v7, v12

    .line 405
    iget v12, v11, Landroid/graphics/Rect;->top:I

    iget v13, v11, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v12, v13

    sub-int/2addr v10, v12

    .line 415
    iget v12, v5, Landroid/view/DisplayInfo;->flags:I

    const/high16 v13, 0x40000000  # 2.0f

    and-int/2addr v12, v13

    if-nez v12, :cond_a4

    iget-boolean v12, v0, Lcom/android/server/display/LogicalDisplay;->mDisplayScalingDisabled:Z

    if-eqz v12, :cond_8c

    goto :goto_a4

    .line 418
    :cond_8c
    iget v12, v5, Landroid/view/DisplayInfo;->logicalHeight:I

    mul-int/2addr v12, v7

    iget v13, v5, Landroid/view/DisplayInfo;->logicalWidth:I

    mul-int/2addr v13, v10

    if-ge v12, v13, :cond_9c

    .line 421
    move v12, v7

    .line 422
    .local v12, "displayRectWidth":I
    iget v13, v5, Landroid/view/DisplayInfo;->logicalHeight:I

    mul-int/2addr v13, v7

    iget v14, v5, Landroid/view/DisplayInfo;->logicalWidth:I

    div-int/2addr v13, v14

    .local v13, "displayRectHeight":I
    goto :goto_a8

    .line 425
    .end local v12  # "displayRectWidth":I
    .end local v13  # "displayRectHeight":I
    :cond_9c
    iget v12, v5, Landroid/view/DisplayInfo;->logicalWidth:I

    mul-int/2addr v12, v10

    iget v13, v5, Landroid/view/DisplayInfo;->logicalHeight:I

    div-int/2addr v12, v13

    .line 426
    .restart local v12  # "displayRectWidth":I
    move v13, v10

    .restart local v13  # "displayRectHeight":I
    goto :goto_a8

    .line 416
    .end local v12  # "displayRectWidth":I
    .end local v13  # "displayRectHeight":I
    :cond_a4
    :goto_a4
    iget v12, v5, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 417
    .restart local v12  # "displayRectWidth":I
    iget v13, v5, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 428
    .restart local v13  # "displayRectHeight":I
    :goto_a8
    sub-int v14, v10, v13

    div-int/2addr v14, v9

    .line 429
    .local v14, "displayRectTop":I
    sub-int v15, v7, v12

    div-int/2addr v15, v9

    .line 430
    .local v15, "displayRectLeft":I
    iget-object v9, v0, Lcom/android/server/display/LogicalDisplay;->mTempDisplayRect:Landroid/graphics/Rect;

    add-int v3, v15, v12

    move/from16 v16, v4

    .end local v4  # "rotated":Z
    .local v16, "rotated":Z
    add-int v4, v14, v13

    invoke-virtual {v9, v15, v14, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 434
    iget-object v3, v0, Lcom/android/server/display/LogicalDisplay;->mTempDisplayRect:Landroid/graphics/Rect;

    iget v4, v11, Landroid/graphics/Rect;->left:I

    iget v9, v11, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3, v4, v9}, Landroid/graphics/Rect;->offset(II)V

    .line 436
    if-nez v8, :cond_ce

    .line 437
    iget-object v3, v0, Lcom/android/server/display/LogicalDisplay;->mTempDisplayRect:Landroid/graphics/Rect;

    iget v4, v0, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetX:I

    iget v9, v0, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetY:I

    invoke-virtual {v3, v4, v9}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_f5

    .line 438
    :cond_ce
    const/4 v3, 0x1

    if-ne v8, v3, :cond_dc

    .line 439
    iget-object v3, v0, Lcom/android/server/display/LogicalDisplay;->mTempDisplayRect:Landroid/graphics/Rect;

    iget v4, v0, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetY:I

    iget v9, v0, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetX:I

    neg-int v9, v9

    invoke-virtual {v3, v4, v9}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_f5

    .line 440
    :cond_dc
    const/4 v3, 0x2

    if-ne v8, v3, :cond_eb

    .line 441
    iget-object v3, v0, Lcom/android/server/display/LogicalDisplay;->mTempDisplayRect:Landroid/graphics/Rect;

    iget v4, v0, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetX:I

    neg-int v4, v4

    iget v9, v0, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetY:I

    neg-int v9, v9

    invoke-virtual {v3, v4, v9}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_f5

    .line 443
    :cond_eb
    iget-object v3, v0, Lcom/android/server/display/LogicalDisplay;->mTempDisplayRect:Landroid/graphics/Rect;

    iget v4, v0, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetY:I

    neg-int v4, v4

    iget v9, v0, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetX:I

    invoke-virtual {v3, v4, v9}, Landroid/graphics/Rect;->offset(II)V

    .line 445
    :goto_f5
    iget-object v3, v0, Lcom/android/server/display/LogicalDisplay;->mTempLayerStackRect:Landroid/graphics/Rect;

    iget-object v4, v0, Lcom/android/server/display/LogicalDisplay;->mTempDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v1, v8, v3, v4}, Lcom/android/server/display/DisplayDevice;->setProjectionLocked(Landroid/view/SurfaceControl$Transaction;ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 446
    return-void
.end method

.method public dumpLocked(Ljava/io/PrintWriter;)V
    .registers 4
    .param p1, "pw"  # Ljava/io/PrintWriter;

    .line 538
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mDisplayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 539
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mLayerStack="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/LogicalDisplay;->mLayerStack:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 540
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mHasContent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/LogicalDisplay;->mHasContent:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 541
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mAllowedDisplayModes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mAllowedDisplayModes:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 542
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mRequestedColorMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/LogicalDisplay;->mRequestedColorMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 543
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mDisplayOffset=("

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

    .line 544
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mDisplayScalingDisabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayScalingDisabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 545
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mPrimaryDisplayDevice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    if-eqz v1, :cond_c8

    .line 546
    invoke-virtual {v1}, Lcom/android/server/display/DisplayDevice;->getNameLocked()Ljava/lang/String;

    move-result-object v1

    goto :goto_cb

    :cond_c8
    const-string/jumbo v1, "null"

    :goto_cb
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 545
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 547
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mBaseDisplayInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 548
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mOverrideDisplayInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 549
    return-void
.end method

.method public getAllowedDisplayModesLocked()[I
    .registers 2

    .line 482
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

    .line 501
    iget v0, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetX:I

    return v0
.end method

.method public getDisplayOffsetYLocked()I
    .registers 2

    .line 508
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
    .param p1, "outInfo"  # Landroid/view/DisplayInfo;

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

    .line 494
    iget v0, p0, Lcom/android/server/display/LogicalDisplay;->mRequestedColorMode:I

    return v0
.end method

.method public hasContentLocked()Z
    .registers 2

    .line 459
    iget-boolean v0, p0, Lcom/android/server/display/LogicalDisplay;->mHasContent:Z

    return v0
.end method

.method public isDisplayScalingDisabled()Z
    .registers 2

    .line 524
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
    .param p1, "modes"  # [I

    .line 475
    iput-object p1, p0, Lcom/android/server/display/LogicalDisplay;->mAllowedDisplayModes:[I

    .line 476
    return-void
.end method

.method public setDisplayInfoOverrideFromWindowManagerLocked(Landroid/view/DisplayInfo;)Z
    .registers 5
    .param p1, "info"  # Landroid/view/DisplayInfo;

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
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    if-eqz v2, :cond_29

    .line 194
    iput-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    .line 195
    iput-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    .line 196
    return v0

    .line 198
    :cond_29
    const/4 v0, 0x0

    return v0
.end method

.method public setDisplayOffsetsLocked(II)V
    .registers 3
    .param p1, "x"  # I
    .param p2, "y"  # I

    .line 515
    iput p1, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetX:I

    .line 516
    iput p2, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetY:I

    .line 517
    return-void
.end method

.method public setDisplayScalingDisabledLocked(Z)V
    .registers 2
    .param p1, "disableScaling"  # Z

    .line 534
    iput-boolean p1, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayScalingDisabled:Z

    .line 535
    return-void
.end method

.method public setHasContentLocked(Z)V
    .registers 2
    .param p1, "hasContent"  # Z

    .line 468
    iput-boolean p1, p0, Lcom/android/server/display/LogicalDisplay;->mHasContent:Z

    .line 469
    return-void
.end method

.method public setRequestedColorModeLocked(I)V
    .registers 2
    .param p1, "colorMode"  # I

    .line 489
    iput p1, p0, Lcom/android/server/display/LogicalDisplay;->mRequestedColorMode:I

    .line 490
    return-void
.end method

.method public updateLocked(Ljava/util/List;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/display/DisplayDevice;",
            ">;)V"
        }
    .end annotation

    .line 222
    .local p1, "devices":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/display/DisplayDevice;>;"
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    if-nez v0, :cond_5

    .line 223
    return-void

    .line 227
    :cond_5
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_f

    .line 228
    iput-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    .line 229
    return-void

    .line 237
    :cond_f
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v0

    .line 238
    .local v0, "deviceInfo":Lcom/android/server/display/DisplayDeviceInfo;
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDeviceInfo:Lcom/android/server/display/DisplayDeviceInfo;

    invoke-static {v2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_153

    .line 239
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v3, p0, Lcom/android/server/display/LogicalDisplay;->mLayerStack:I

    iput v3, v2, Landroid/view/DisplayInfo;->layerStack:I

    .line 240
    const/4 v3, 0x0

    iput v3, v2, Landroid/view/DisplayInfo;->flags:I

    .line 241
    iget v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    and-int/lit8 v2, v2, 0x8

    const/4 v4, 0x1

    if-eqz v2, :cond_34

    .line 242
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v5, v2, Landroid/view/DisplayInfo;->flags:I

    or-int/2addr v5, v4

    iput v5, v2, Landroid/view/DisplayInfo;->flags:I

    .line 244
    :cond_34
    iget v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_42

    .line 245
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v5, v2, Landroid/view/DisplayInfo;->flags:I

    or-int/lit8 v5, v5, 0x2

    iput v5, v2, Landroid/view/DisplayInfo;->flags:I

    .line 247
    :cond_42
    iget v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_54

    .line 248
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v5, v2, Landroid/view/DisplayInfo;->flags:I

    or-int/lit8 v5, v5, 0x4

    iput v5, v2, Landroid/view/DisplayInfo;->flags:I

    .line 250
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iput v4, v2, Landroid/view/DisplayInfo;->removeMode:I

    .line 252
    :cond_54
    iget v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    and-int/lit16 v2, v2, 0x400

    if-eqz v2, :cond_5e

    .line 253
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iput v4, v2, Landroid/view/DisplayInfo;->removeMode:I

    .line 255
    :cond_5e
    iget v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_6c

    .line 256
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v5, v2, Landroid/view/DisplayInfo;->flags:I

    or-int/lit8 v5, v5, 0x8

    iput v5, v2, Landroid/view/DisplayInfo;->flags:I

    .line 258
    :cond_6c
    iget v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    and-int/lit16 v2, v2, 0x100

    if-eqz v2, :cond_7a

    .line 259
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v5, v2, Landroid/view/DisplayInfo;->flags:I

    or-int/lit8 v5, v5, 0x10

    iput v5, v2, Landroid/view/DisplayInfo;->flags:I

    .line 261
    :cond_7a
    iget v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    and-int/lit16 v2, v2, 0x200

    if-eqz v2, :cond_88

    .line 262
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v5, v2, Landroid/view/DisplayInfo;->flags:I

    or-int/lit8 v5, v5, 0x20

    iput v5, v2, Landroid/view/DisplayInfo;->flags:I

    .line 264
    :cond_88
    iget v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    and-int/lit16 v2, v2, 0x1000

    if-eqz v2, :cond_96

    .line 265
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v5, v2, Landroid/view/DisplayInfo;->flags:I

    or-int/lit8 v5, v5, 0x40

    iput v5, v2, Landroid/view/DisplayInfo;->flags:I

    .line 267
    :cond_96
    invoke-static {v0}, Lcom/android/server/display/LogicalDisplay;->getMaskingInsets(Lcom/android/server/display/DisplayDeviceInfo;)Landroid/graphics/Rect;

    move-result-object v2

    .line 268
    .local v2, "maskingInsets":Landroid/graphics/Rect;
    iget v5, v0, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    iget v6, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v6

    iget v6, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v6

    .line 269
    .local v5, "maskedWidth":I
    iget v6, v0, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    iget v7, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v7

    iget v7, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v7

    .line 271
    .local v6, "maskedHeight":I
    iget-object v7, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v8, v0, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    iput v8, v7, Landroid/view/DisplayInfo;->type:I

    .line 272
    iget-object v7, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v8, v0, Lcom/android/server/display/DisplayDeviceInfo;->address:Landroid/view/DisplayAddress;

    iput-object v8, v7, Landroid/view/DisplayInfo;->address:Landroid/view/DisplayAddress;

    .line 273
    iget-object v7, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v8, v0, Lcom/android/server/display/DisplayDeviceInfo;->name:Ljava/lang/String;

    iput-object v8, v7, Landroid/view/DisplayInfo;->name:Ljava/lang/String;

    .line 274
    iget-object v7, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v8, v0, Lcom/android/server/display/DisplayDeviceInfo;->uniqueId:Ljava/lang/String;

    iput-object v8, v7, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    .line 275
    iget-object v7, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iput v5, v7, Landroid/view/DisplayInfo;->appWidth:I

    .line 276
    iput v6, v7, Landroid/view/DisplayInfo;->appHeight:I

    .line 277
    iput v5, v7, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 278
    iput v6, v7, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 279
    iput v3, v7, Landroid/view/DisplayInfo;->rotation:I

    .line 280
    iget v8, v0, Lcom/android/server/display/DisplayDeviceInfo;->modeId:I

    iput v8, v7, Landroid/view/DisplayInfo;->modeId:I

    .line 281
    iget-object v7, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v8, v0, Lcom/android/server/display/DisplayDeviceInfo;->defaultModeId:I

    iput v8, v7, Landroid/view/DisplayInfo;->defaultModeId:I

    .line 282
    iget-object v7, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v8, v0, Lcom/android/server/display/DisplayDeviceInfo;->supportedModes:[Landroid/view/Display$Mode;

    iget-object v9, v0, Lcom/android/server/display/DisplayDeviceInfo;->supportedModes:[Landroid/view/Display$Mode;

    array-length v9, v9

    invoke-static {v8, v9}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Landroid/view/Display$Mode;

    iput-object v8, v7, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    .line 284
    iget-object v7, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v8, v0, Lcom/android/server/display/DisplayDeviceInfo;->colorMode:I

    iput v8, v7, Landroid/view/DisplayInfo;->colorMode:I

    .line 285
    iget-object v7, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v8, v0, Lcom/android/server/display/DisplayDeviceInfo;->supportedColorModes:[I

    iget-object v9, v0, Lcom/android/server/display/DisplayDeviceInfo;->supportedColorModes:[I

    array-length v9, v9

    invoke-static {v8, v9}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v8

    iput-object v8, v7, Landroid/view/DisplayInfo;->supportedColorModes:[I

    .line 288
    iget-object v7, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v8, v0, Lcom/android/server/display/DisplayDeviceInfo;->hdrCapabilities:Landroid/view/Display$HdrCapabilities;

    iput-object v8, v7, Landroid/view/DisplayInfo;->hdrCapabilities:Landroid/view/Display$HdrCapabilities;

    .line 289
    iget-object v7, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v8, v0, Lcom/android/server/display/DisplayDeviceInfo;->densityDpi:I

    iput v8, v7, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    .line 290
    iget-object v7, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v8, v0, Lcom/android/server/display/DisplayDeviceInfo;->xDpi:F

    iput v8, v7, Landroid/view/DisplayInfo;->physicalXDpi:F

    .line 291
    iget-object v7, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v8, v0, Lcom/android/server/display/DisplayDeviceInfo;->yDpi:F

    iput v8, v7, Landroid/view/DisplayInfo;->physicalYDpi:F

    .line 292
    iget-object v7, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget-wide v8, v0, Lcom/android/server/display/DisplayDeviceInfo;->appVsyncOffsetNanos:J

    iput-wide v8, v7, Landroid/view/DisplayInfo;->appVsyncOffsetNanos:J

    .line 293
    iget-object v7, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget-wide v8, v0, Lcom/android/server/display/DisplayDeviceInfo;->presentationDeadlineNanos:J

    iput-wide v8, v7, Landroid/view/DisplayInfo;->presentationDeadlineNanos:J

    .line 294
    iget-object v7, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v8, v0, Lcom/android/server/display/DisplayDeviceInfo;->state:I

    iput v8, v7, Landroid/view/DisplayInfo;->state:I

    .line 295
    iget-object v7, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iput v5, v7, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    .line 296
    iput v6, v7, Landroid/view/DisplayInfo;->smallestNominalAppHeight:I

    .line 297
    iput v5, v7, Landroid/view/DisplayInfo;->largestNominalAppWidth:I

    .line 298
    iput v6, v7, Landroid/view/DisplayInfo;->largestNominalAppHeight:I

    .line 299
    iget v8, v0, Lcom/android/server/display/DisplayDeviceInfo;->ownerUid:I

    iput v8, v7, Landroid/view/DisplayInfo;->ownerUid:I

    .line 300
    iget-object v7, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v8, v0, Lcom/android/server/display/DisplayDeviceInfo;->ownerPackageName:Ljava/lang/String;

    iput-object v8, v7, Landroid/view/DisplayInfo;->ownerPackageName:Ljava/lang/String;

    .line 301
    iget v7, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    and-int/lit16 v7, v7, 0x800

    if-eqz v7, :cond_13f

    move v3, v4

    .line 303
    .local v3, "maskCutout":Z
    :cond_13f
    iget-object v4, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    if-eqz v3, :cond_145

    move-object v7, v1

    goto :goto_147

    :cond_145
    iget-object v7, v0, Lcom/android/server/display/DisplayDeviceInfo;->displayCutout:Landroid/view/DisplayCutout;

    :goto_147
    iput-object v7, v4, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    .line 304
    iget-object v4, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v7, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayId:I

    iput v7, v4, Landroid/view/DisplayInfo;->displayId:I

    .line 306
    iput-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDeviceInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 307
    iput-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    .line 309
    .end local v2  # "maskingInsets":Landroid/graphics/Rect;
    .end local v3  # "maskCutout":Z
    .end local v5  # "maskedWidth":I
    .end local v6  # "maskedHeight":I
    :cond_153
    return-void
.end method
