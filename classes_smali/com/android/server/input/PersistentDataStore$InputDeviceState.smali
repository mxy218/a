.class final Lcom/android/server/input/PersistentDataStore$InputDeviceState;
.super Ljava/lang/Object;
.source "PersistentDataStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/input/PersistentDataStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InputDeviceState"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final CALIBRATION_NAME:[Ljava/lang/String;


# instance fields
.field private mCurrentKeyboardLayout:Ljava/lang/String;

.field private mKeyboardLayouts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTouchCalibration:[Landroid/hardware/input/TouchCalibration;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 306
    const-class v0, Lcom/android/server/input/PersistentDataStore;

    .line 307
    const-string/jumbo v1, "x_scale"

    const-string/jumbo v2, "x_ymix"

    const-string/jumbo v3, "x_offset"

    const-string/jumbo v4, "y_xmix"

    const-string/jumbo v5, "y_scale"

    const-string/jumbo v6, "y_offset"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->CALIBRATION_NAME:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 306
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 310
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/hardware/input/TouchCalibration;

    iput-object v0, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mTouchCalibration:[Landroid/hardware/input/TouchCalibration;

    .line 313
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mKeyboardLayouts:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/input/PersistentDataStore$1;)V
    .registers 2

    .line 306
    invoke-direct {p0}, Lcom/android/server/input/PersistentDataStore$InputDeviceState;-><init>()V

    return-void
.end method

.method private static stringToSurfaceRotation(Ljava/lang/String;)I
    .registers 4

    .line 547
    const-string v0, "0"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 548
    const/4 p0, 0x0

    return p0

    .line 550
    :cond_a
    const-string v0, "90"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 551
    const/4 p0, 0x1

    return p0

    .line 553
    :cond_14
    const-string v0, "180"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 554
    const/4 p0, 0x2

    return p0

    .line 556
    :cond_1e
    const-string v0, "270"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 557
    const/4 p0, 0x3

    return p0

    .line 559
    :cond_28
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported surface rotation string \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\'"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static surfaceRotationToString(I)Ljava/lang/String;
    .registers 4

    .line 537
    if-eqz p0, :cond_2b

    const/4 v0, 0x1

    if-eq p0, v0, :cond_28

    const/4 v0, 0x2

    if-eq p0, v0, :cond_25

    const/4 v0, 0x3

    if-ne p0, v0, :cond_e

    .line 541
    const-string p0, "270"

    return-object p0

    .line 543
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported surface rotation value"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 540
    :cond_25
    const-string p0, "180"

    return-object p0

    .line 539
    :cond_28
    const-string p0, "90"

    return-object p0

    .line 538
    :cond_2b
    const-string p0, "0"

    return-object p0
.end method

.method private updateCurrentKeyboardLayoutIfRemoved(Ljava/lang/String;I)V
    .registers 4

    .line 382
    iget-object v0, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mCurrentKeyboardLayout:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_28

    .line 383
    iget-object p1, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mKeyboardLayouts:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_25

    .line 384
    nop

    .line 385
    iget-object p1, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mKeyboardLayouts:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ne p2, p1, :cond_1a

    .line 386
    const/4 p2, 0x0

    .line 388
    :cond_1a
    iget-object p1, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mKeyboardLayouts:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mCurrentKeyboardLayout:Ljava/lang/String;

    .line 389
    goto :goto_28

    .line 390
    :cond_25
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mCurrentKeyboardLayout:Ljava/lang/String;

    .line 393
    :cond_28
    :goto_28
    return-void
.end method


# virtual methods
.method public addKeyboardLayout(Ljava/lang/String;)Z
    .registers 5

    .line 359
    iget-object v0, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mKeyboardLayouts:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v0

    .line 360
    if-ltz v0, :cond_a

    .line 361
    const/4 p1, 0x0

    return p1

    .line 363
    :cond_a
    iget-object v1, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mKeyboardLayouts:Ljava/util/ArrayList;

    neg-int v0, v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 364
    iget-object v0, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mCurrentKeyboardLayout:Ljava/lang/String;

    if-nez v0, :cond_18

    .line 365
    iput-object p1, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mCurrentKeyboardLayout:Ljava/lang/String;

    .line 367
    :cond_18
    return v2
.end method

.method public getCurrentKeyboardLayout()Ljava/lang/String;
    .registers 2

    .line 339
    iget-object v0, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mCurrentKeyboardLayout:Ljava/lang/String;

    return-object v0
.end method

.method public getKeyboardLayouts()[Ljava/lang/String;
    .registers 3

    .line 352
    iget-object v0, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mKeyboardLayouts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 353
    const-class v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0

    .line 355
    :cond_11
    iget-object v0, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mKeyboardLayouts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getTouchCalibration(I)Landroid/hardware/input/TouchCalibration;
    .registers 4

    .line 317
    :try_start_0
    iget-object v0, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mTouchCalibration:[Landroid/hardware/input/TouchCalibration;

    aget-object p1, v0, p1
    :try_end_4
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p1

    .line 318
    :catch_5
    move-exception p1

    .line 319
    const-string v0, "InputManager"

    const-string v1, "Cannot get touch calibration."

    invoke-static {v0, v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 320
    const/4 p1, 0x0

    return-object p1
.end method

.method public loadFromXml(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 427
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    .line 428
    :goto_8
    invoke-static {v1, v2}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_11f

    .line 429
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v5, "keyboard-layout"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v5, 0x0

    if-eqz v3, :cond_62

    .line 430
    const-string v3, "descriptor"

    invoke-interface {v1, v5, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 431
    if-eqz v3, :cond_5a

    .line 435
    const-string v4, "current"

    invoke-interface {v1, v5, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 436
    iget-object v5, v0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mKeyboardLayouts:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_52

    .line 441
    iget-object v5, v0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mKeyboardLayouts:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 442
    if-eqz v4, :cond_11d

    const-string/jumbo v5, "true"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11d

    .line 443
    iget-object v4, v0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mCurrentKeyboardLayout:Ljava/lang/String;

    if-nez v4, :cond_4a

    .line 447
    iput-object v3, v0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mCurrentKeyboardLayout:Ljava/lang/String;

    goto/16 :goto_11d

    .line 444
    :cond_4a
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "Found multiple current keyboard layouts."

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 437
    :cond_52
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "Found duplicate keyboard layout."

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 432
    :cond_5a
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "Missing descriptor attribute on keyboard-layout."

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 449
    :cond_62
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v6, "calibration"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11d

    .line 450
    const-string v3, "format"

    invoke-interface {v1, v5, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 451
    const-string/jumbo v6, "rotation"

    invoke-interface {v1, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 452
    nop

    .line 454
    if-eqz v3, :cond_115

    .line 458
    const-string v6, "affine"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10d

    .line 462
    const/4 v3, -0x1

    if-eqz v5, :cond_97

    .line 464
    :try_start_89
    invoke-static {v5}, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->stringToSurfaceRotation(Ljava/lang/String;)I

    move-result v5
    :try_end_8d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_89 .. :try_end_8d} :catch_8e

    .line 468
    goto :goto_98

    .line 465
    :catch_8e
    move-exception v0

    .line 466
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "Unsupported rotation for calibration."

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 462
    :cond_97
    move v5, v3

    .line 471
    :goto_98
    sget-object v6, Landroid/hardware/input/TouchCalibration;->IDENTITY:Landroid/hardware/input/TouchCalibration;

    invoke-virtual {v6}, Landroid/hardware/input/TouchCalibration;->getAffineTransform()[F

    move-result-object v6

    .line 472
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v7

    .line 473
    :goto_a2
    invoke-static {v1, v7}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v8

    if-eqz v8, :cond_d0

    .line 474
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    .line 475
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v9

    .line 477
    move v10, v4

    :goto_b5
    array-length v11, v6

    if-ge v10, v11, :cond_cf

    sget-object v11, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->CALIBRATION_NAME:[Ljava/lang/String;

    array-length v12, v11

    if-ge v10, v12, :cond_cf

    .line 478
    aget-object v11, v11, v10

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_cc

    .line 479
    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    aput v8, v6, v10

    .line 480
    goto :goto_cf

    .line 477
    :cond_cc
    add-int/lit8 v10, v10, 0x1

    goto :goto_b5

    .line 483
    :cond_cf
    :goto_cf
    goto :goto_a2

    .line 485
    :cond_d0
    const/4 v7, 0x5

    const/4 v8, 0x4

    const/4 v9, 0x3

    const/4 v10, 0x2

    const/4 v11, 0x1

    if-ne v5, v3, :cond_f4

    .line 487
    move v3, v4

    :goto_d8
    iget-object v5, v0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mTouchCalibration:[Landroid/hardware/input/TouchCalibration;

    array-length v12, v5

    if-ge v3, v12, :cond_10b

    .line 488
    new-instance v12, Landroid/hardware/input/TouchCalibration;

    aget v14, v6, v4

    aget v15, v6, v11

    aget v16, v6, v10

    aget v17, v6, v9

    aget v18, v6, v8

    aget v19, v6, v7

    move-object v13, v12

    invoke-direct/range {v13 .. v19}, Landroid/hardware/input/TouchCalibration;-><init>(FFFFFF)V

    aput-object v12, v5, v3

    .line 487
    add-int/lit8 v3, v3, 0x1

    goto :goto_d8

    .line 492
    :cond_f4
    iget-object v3, v0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mTouchCalibration:[Landroid/hardware/input/TouchCalibration;

    new-instance v19, Landroid/hardware/input/TouchCalibration;

    aget v13, v6, v4

    aget v14, v6, v11

    aget v15, v6, v10

    aget v16, v6, v9

    aget v17, v6, v8

    aget v18, v6, v7

    move-object/from16 v12, v19

    invoke-direct/range {v12 .. v18}, Landroid/hardware/input/TouchCalibration;-><init>(FFFFFF)V

    aput-object v19, v3, v5

    .line 495
    :cond_10b
    goto/16 :goto_8

    .line 459
    :cond_10d
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "Unsupported format for calibration."

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 455
    :cond_115
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "Missing format attribute on calibration."

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 449
    :cond_11d
    :goto_11d
    goto/16 :goto_8

    .line 499
    :cond_11f
    iget-object v1, v0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mKeyboardLayouts:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 503
    iget-object v1, v0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mCurrentKeyboardLayout:Ljava/lang/String;

    if-nez v1, :cond_13a

    iget-object v1, v0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mKeyboardLayouts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_13a

    .line 504
    iget-object v1, v0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mKeyboardLayouts:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mCurrentKeyboardLayout:Ljava/lang/String;

    .line 506
    :cond_13a
    return-void
.end method

.method public removeKeyboardLayout(Ljava/lang/String;)Z
    .registers 4

    .line 371
    iget-object v0, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mKeyboardLayouts:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v0

    .line 372
    if-gez v0, :cond_a

    .line 373
    const/4 p1, 0x0

    return p1

    .line 375
    :cond_a
    iget-object v1, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mKeyboardLayouts:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 376
    invoke-direct {p0, p1, v0}, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->updateCurrentKeyboardLayoutIfRemoved(Ljava/lang/String;I)V

    .line 377
    const/4 p1, 0x1

    return p1
.end method

.method public removeUninstalledKeyboardLayouts(Ljava/util/Set;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 412
    nop

    .line 413
    iget-object v0, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mKeyboardLayouts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_8
    add-int/lit8 v2, v0, -0x1

    if-lez v0, :cond_3c

    .line 414
    iget-object v0, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mKeyboardLayouts:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 415
    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3a

    .line 416
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removing uninstalled keyboard layout "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "InputManager"

    invoke-static {v3, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    iget-object v1, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mKeyboardLayouts:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 418
    invoke-direct {p0, v0, v2}, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->updateCurrentKeyboardLayoutIfRemoved(Ljava/lang/String;I)V

    .line 419
    const/4 v0, 0x1

    move v1, v0

    .line 421
    :cond_3a
    move v0, v2

    goto :goto_8

    .line 422
    :cond_3c
    return v1
.end method

.method public saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 509
    iget-object v0, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mKeyboardLayouts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_31

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 510
    const-string v3, "keyboard-layout"

    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 511
    const-string v4, "descriptor"

    invoke-interface {p1, v2, v4, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 512
    iget-object v4, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mCurrentKeyboardLayout:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 513
    const-string v1, "current"

    const-string/jumbo v4, "true"

    invoke-interface {p1, v2, v1, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 515
    :cond_2d
    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 516
    goto :goto_6

    .line 518
    :cond_31
    const/4 v0, 0x0

    move v1, v0

    :goto_33
    iget-object v3, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mTouchCalibration:[Landroid/hardware/input/TouchCalibration;

    array-length v4, v3

    if-ge v1, v4, :cond_81

    .line 519
    aget-object v3, v3, v1

    if-eqz v3, :cond_7e

    .line 520
    invoke-static {v1}, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->surfaceRotationToString(I)Ljava/lang/String;

    move-result-object v3

    .line 521
    iget-object v4, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mTouchCalibration:[Landroid/hardware/input/TouchCalibration;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Landroid/hardware/input/TouchCalibration;->getAffineTransform()[F

    move-result-object v4

    .line 523
    const-string v5, "calibration"

    invoke-interface {p1, v2, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 524
    const-string v6, "format"

    const-string v7, "affine"

    invoke-interface {p1, v2, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 525
    const-string/jumbo v6, "rotation"

    invoke-interface {p1, v2, v6, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 526
    move v3, v0

    :goto_5b
    array-length v6, v4

    if-ge v3, v6, :cond_7b

    sget-object v6, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->CALIBRATION_NAME:[Ljava/lang/String;

    array-length v7, v6

    if-ge v3, v7, :cond_7b

    .line 527
    aget-object v6, v6, v3

    invoke-interface {p1, v2, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 528
    aget v6, v4, v3

    invoke-static {v6}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v6}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 529
    sget-object v6, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->CALIBRATION_NAME:[Ljava/lang/String;

    aget-object v6, v6, v3

    invoke-interface {p1, v2, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 526
    add-int/lit8 v3, v3, 0x1

    goto :goto_5b

    .line 531
    :cond_7b
    invoke-interface {p1, v2, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 518
    :cond_7e
    add-int/lit8 v1, v1, 0x1

    goto :goto_33

    .line 534
    :cond_81
    return-void
.end method

.method public setCurrentKeyboardLayout(Ljava/lang/String;)Z
    .registers 3

    .line 343
    iget-object v0, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mCurrentKeyboardLayout:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 344
    const/4 p1, 0x0

    return p1

    .line 346
    :cond_a
    invoke-virtual {p0, p1}, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->addKeyboardLayout(Ljava/lang/String;)Z

    .line 347
    iput-object p1, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mCurrentKeyboardLayout:Ljava/lang/String;

    .line 348
    const/4 p1, 0x1

    return p1
.end method

.method public setTouchCalibration(ILandroid/hardware/input/TouchCalibration;)Z
    .registers 5

    .line 326
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mTouchCalibration:[Landroid/hardware/input/TouchCalibration;

    aget-object v1, v1, p1

    invoke-virtual {p2, v1}, Landroid/hardware/input/TouchCalibration;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 327
    iget-object v1, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mTouchCalibration:[Landroid/hardware/input/TouchCalibration;

    aput-object p2, v1, p1
    :try_end_f
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_f} :catch_12

    .line 328
    const/4 p1, 0x1

    return p1

    .line 330
    :cond_11
    return v0

    .line 331
    :catch_12
    move-exception p1

    .line 332
    const-string p2, "InputManager"

    const-string v1, "Cannot set touch calibration."

    invoke-static {p2, v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 333
    return v0
.end method

.method public switchKeyboardLayout(I)Z
    .registers 5

    .line 396
    iget-object v0, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mKeyboardLayouts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 397
    const/4 v1, 0x2

    if-ge v0, v1, :cond_b

    .line 398
    const/4 p1, 0x0

    return p1

    .line 400
    :cond_b
    iget-object v1, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mKeyboardLayouts:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mCurrentKeyboardLayout:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v1

    .line 401
    nop

    .line 402
    const/4 v2, 0x1

    if-lez p1, :cond_1a

    .line 403
    add-int/2addr v1, v2

    rem-int/2addr v1, v0

    goto :goto_1d

    .line 405
    :cond_1a
    add-int/2addr v1, v0

    sub-int/2addr v1, v2

    rem-int/2addr v1, v0

    .line 407
    :goto_1d
    iget-object p1, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mKeyboardLayouts:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mCurrentKeyboardLayout:Ljava/lang/String;

    .line 408
    return v2
.end method
