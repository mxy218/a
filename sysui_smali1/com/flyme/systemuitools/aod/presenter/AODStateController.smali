.class public Lcom/flyme/systemuitools/aod/presenter/AODStateController;
.super Ljava/lang/Object;
.source "AODStateController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/systemuitools/aod/presenter/AODStateController$StyleChangeCallback;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/flyme/systemuitools/aod/presenter/AODStateController;


# instance fields
.field private mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/flyme/systemuitools/aod/presenter/AODStateController$StyleChangeCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mClockStyle:I

.field private mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field private mGradientColors:[[[I

.field private mLockscreenPosterObserver:Landroid/database/ContentObserver;

.field private mResolver:Landroid/content/ContentResolver;

.field private mShowNotification:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 10

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 31
    iput v0, p0, Lcom/flyme/systemuitools/aod/presenter/AODStateController;->mClockStyle:I

    .line 38
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/systemuitools/aod/presenter/AODStateController;->mCallbacks:Ljava/util/ArrayList;

    const/16 v0, 0xc

    new-array v0, v0, [[[I

    const/4 v1, 0x4

    new-array v2, v1, [[I

    .line 40
    sget-object v3, Lcom/flyme/systemuitools/aod/Config;->DEFAULT_COLOR:[I

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const/4 v6, 0x2

    aput-object v3, v2, v6

    const/4 v7, 0x3

    aput-object v3, v2, v7

    aput-object v2, v0, v4

    new-array v2, v1, [[I

    new-array v3, v6, [I

    fill-array-data v3, :array_1e2

    aput-object v3, v2, v4

    new-array v3, v6, [I

    fill-array-data v3, :array_1ea

    aput-object v3, v2, v5

    new-array v3, v6, [I

    fill-array-data v3, :array_1f2

    aput-object v3, v2, v6

    new-array v3, v6, [I

    fill-array-data v3, :array_1fa

    aput-object v3, v2, v7

    aput-object v2, v0, v5

    new-array v2, v1, [[I

    new-array v3, v6, [I

    fill-array-data v3, :array_202

    aput-object v3, v2, v4

    new-array v3, v6, [I

    fill-array-data v3, :array_20a

    aput-object v3, v2, v5

    new-array v3, v6, [I

    fill-array-data v3, :array_212

    aput-object v3, v2, v6

    new-array v3, v6, [I

    fill-array-data v3, :array_21a

    aput-object v3, v2, v7

    aput-object v2, v0, v6

    new-array v2, v1, [[I

    new-array v3, v6, [I

    fill-array-data v3, :array_222

    aput-object v3, v2, v4

    new-array v3, v6, [I

    fill-array-data v3, :array_22a

    aput-object v3, v2, v5

    new-array v3, v6, [I

    fill-array-data v3, :array_232

    aput-object v3, v2, v6

    new-array v3, v6, [I

    fill-array-data v3, :array_23a

    aput-object v3, v2, v7

    aput-object v2, v0, v7

    new-array v2, v1, [[I

    new-array v3, v6, [I

    fill-array-data v3, :array_242

    aput-object v3, v2, v4

    new-array v3, v6, [I

    fill-array-data v3, :array_24a

    aput-object v3, v2, v5

    new-array v3, v6, [I

    fill-array-data v3, :array_252

    aput-object v3, v2, v6

    new-array v3, v6, [I

    fill-array-data v3, :array_25a

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    new-array v2, v1, [[I

    new-array v3, v6, [I

    fill-array-data v3, :array_262

    aput-object v3, v2, v4

    new-array v3, v6, [I

    fill-array-data v3, :array_26a

    aput-object v3, v2, v5

    new-array v3, v6, [I

    fill-array-data v3, :array_272

    aput-object v3, v2, v6

    new-array v3, v6, [I

    fill-array-data v3, :array_27a

    aput-object v3, v2, v7

    const/4 v3, 0x5

    aput-object v2, v0, v3

    new-array v2, v1, [[I

    new-array v3, v6, [I

    fill-array-data v3, :array_282

    aput-object v3, v2, v4

    new-array v3, v6, [I

    fill-array-data v3, :array_28a

    aput-object v3, v2, v5

    new-array v3, v6, [I

    fill-array-data v3, :array_292

    aput-object v3, v2, v6

    new-array v3, v6, [I

    fill-array-data v3, :array_29a

    aput-object v3, v2, v7

    const/4 v3, 0x6

    aput-object v2, v0, v3

    new-array v2, v1, [[I

    new-array v3, v6, [I

    fill-array-data v3, :array_2a2

    aput-object v3, v2, v4

    new-array v3, v6, [I

    fill-array-data v3, :array_2aa

    aput-object v3, v2, v5

    new-array v3, v6, [I

    fill-array-data v3, :array_2b2

    aput-object v3, v2, v6

    new-array v3, v6, [I

    fill-array-data v3, :array_2ba

    aput-object v3, v2, v7

    const/4 v3, 0x7

    aput-object v2, v0, v3

    new-array v2, v1, [[I

    new-array v3, v6, [I

    fill-array-data v3, :array_2c2

    aput-object v3, v2, v4

    new-array v3, v6, [I

    fill-array-data v3, :array_2ca

    aput-object v3, v2, v5

    new-array v3, v6, [I

    fill-array-data v3, :array_2d2

    aput-object v3, v2, v6

    new-array v3, v6, [I

    fill-array-data v3, :array_2da

    aput-object v3, v2, v7

    const/16 v3, 0x8

    aput-object v2, v0, v3

    new-array v2, v1, [[I

    new-array v3, v6, [I

    fill-array-data v3, :array_2e2

    aput-object v3, v2, v4

    new-array v3, v6, [I

    fill-array-data v3, :array_2ea

    aput-object v3, v2, v5

    new-array v3, v6, [I

    fill-array-data v3, :array_2f2

    aput-object v3, v2, v6

    new-array v3, v6, [I

    fill-array-data v3, :array_2fa

    aput-object v3, v2, v7

    const/16 v3, 0x9

    aput-object v2, v0, v3

    new-array v2, v1, [[I

    new-array v3, v6, [I

    fill-array-data v3, :array_302

    aput-object v3, v2, v4

    new-array v3, v6, [I

    fill-array-data v3, :array_30a

    aput-object v3, v2, v5

    new-array v3, v6, [I

    fill-array-data v3, :array_312

    aput-object v3, v2, v6

    new-array v3, v6, [I

    fill-array-data v3, :array_31a

    aput-object v3, v2, v7

    const/16 v3, 0xa

    aput-object v2, v0, v3

    new-array v1, v1, [[I

    new-array v2, v6, [I

    fill-array-data v2, :array_322

    aput-object v2, v1, v4

    new-array v2, v6, [I

    fill-array-data v2, :array_32a

    aput-object v2, v1, v5

    new-array v2, v6, [I

    fill-array-data v2, :array_332

    aput-object v2, v1, v6

    new-array v2, v6, [I

    fill-array-data v2, :array_33a

    aput-object v2, v1, v7

    const/16 v2, 0xb

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/flyme/systemuitools/aod/presenter/AODStateController;->mGradientColors:[[[I

    .line 102
    new-instance v0, Lcom/flyme/systemuitools/aod/presenter/AODStateController$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/flyme/systemuitools/aod/presenter/AODStateController$1;-><init>(Lcom/flyme/systemuitools/aod/presenter/AODStateController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/flyme/systemuitools/aod/presenter/AODStateController;->mLockscreenPosterObserver:Landroid/database/ContentObserver;

    .line 57
    const-class v0, Landroid/hardware/fingerprint/FingerprintManager;

    .line 58
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object v0, p0, Lcom/flyme/systemuitools/aod/presenter/AODStateController;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 59
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/flyme/systemuitools/aod/presenter/AODStateController;->mResolver:Landroid/content/ContentResolver;

    .line 61
    iget-object p1, p0, Lcom/flyme/systemuitools/aod/presenter/AODStateController;->mResolver:Landroid/content/ContentResolver;

    const-string v0, "aod_style"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/flyme/systemuitools/aod/presenter/AODStateController;->mLockscreenPosterObserver:Landroid/database/ContentObserver;

    invoke-virtual {p1, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 63
    iget-object p1, p0, Lcom/flyme/systemuitools/aod/presenter/AODStateController;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "notification_settings"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/flyme/systemuitools/aod/presenter/AODStateController;->mLockscreenPosterObserver:Landroid/database/ContentObserver;

    invoke-virtual {p1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 66
    iget-object p1, p0, Lcom/flyme/systemuitools/aod/presenter/AODStateController;->mResolver:Landroid/content/ContentResolver;

    invoke-static {p1, v0, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/flyme/systemuitools/aod/presenter/AODStateController;->mClockStyle:I

    .line 68
    iget-object p1, p0, Lcom/flyme/systemuitools/aod/presenter/AODStateController;->mResolver:Landroid/content/ContentResolver;

    invoke-static {p1, v1, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v5, :cond_1d7

    move v4, v5

    :cond_1d7
    iput-boolean v4, p0, Lcom/flyme/systemuitools/aod/presenter/AODStateController;->mShowNotification:Z

    .line 69
    iget-boolean p1, p0, Lcom/flyme/systemuitools/aod/presenter/AODStateController;->mShowNotification:Z

    invoke-direct {p0, p1}, Lcom/flyme/systemuitools/aod/presenter/AODStateController;->updateNotificationSettings(Z)V

    .line 71
    invoke-direct {p0}, Lcom/flyme/systemuitools/aod/presenter/AODStateController;->updateGradientColors()V

    return-void

    :array_1e2
    .array-data 4
        -0xb55af0
        -0xbd62f0
    .end array-data

    :array_1ea
    .array-data 4
        -0xb25eec
        -0xbf76f0
    .end array-data

    :array_1f2
    .array-data 4
        -0xb25eec
        -0xbe73ef
    .end array-data

    :array_1fa
    .array-data 4
        -0xa74fec
        -0xf595f2
    .end array-data

    :array_202
    .array-data 4
        -0xe88d42
        -0xe89142
    .end array-data

    :array_20a
    .array-data 4
        -0xe9934b  # -1.9994864E38f
        -0xeaae59
    .end array-data

    :array_212
    .array-data 4
        -0xe9934b  # -1.9994864E38f
        -0xeaaa57
    .end array-data

    :array_21a
    .array-data 4
        -0xe98e41  # -1.999748E38f
        -0xe8a749
    .end array-data

    :array_222
    .array-data 4
        -0xc69905
        -0x81c502
    .end array-data

    :array_22a
    .array-data 4
        -0xc69905
        -0x8fbe06
    .end array-data

    :array_232
    .array-data 4
        -0xc69905
        -0x8fbe06
    .end array-data

    :array_23a
    .array-data 4
        -0xc59701
        -0x8abf02
    .end array-data

    :array_242
    .array-data 4
        -0x10eaa6
        -0x19e787
    .end array-data

    :array_24a
    .array-data 4
        -0x22e07d
        -0x28de70
    .end array-data

    :array_252
    .array-data 4
        -0x28de6f
        -0x2fe375
    .end array-data

    :array_25a
    .array-data 4
        -0x3d09b
        -0x1ce353
    .end array-data

    :array_262
    .array-data 4
        -0x9ab802
        -0x8dbf02
    .end array-data

    :array_26a
    .array-data 4
        -0xc69905
        -0x8dc006
    .end array-data

    :array_272
    .array-data 4
        -0xc69905
        -0x91bc06
    .end array-data

    :array_27a
    .array-data 4
        -0xc59701
        -0x88c002
    .end array-data

    :array_282
    .array-data 4
        -0x12eaa0
        -0x15e893
    .end array-data

    :array_28a
    .array-data 4
        -0x1ee184
        -0x25df75
    .end array-data

    :array_292
    .array-data 4
        -0x28de6f
        -0x2be875
    .end array-data

    :array_29a
    .array-data 4
        -0x3d09b
        -0x1ce353
    .end array-data

    :array_2a2
    .array-data 4
        -0x11c1cd
        -0x14cec8
    .end array-data

    :array_2aa
    .array-data 4
        -0x1bc5c6
        -0x1ecfc0
    .end array-data

    :array_2b2
    .array-data 4
        -0x21dbb9
        -0x27e3c1
    .end array-data

    :array_2ba
    .array-data 4
        -0x14bacb
        -0x22daba
    .end array-data

    :array_2c2
    .array-data 4
        -0x6bb376
        -0x6ab278
    .end array-data

    :array_2ca
    .array-data 4
        -0x87c98c
        -0x7fb993
    .end array-data

    :array_2d2
    .array-data 4
        -0x87c98c
        -0x81bc91
    .end array-data

    :array_2da
    .array-data 4
        -0x85c88a
        -0x7ab094
    .end array-data

    :array_2e2
    .array-data 4
        -0x4a311e
        -0x4a311e
    .end array-data

    :array_2ea
    .array-data 4
        -0x4a311e
        -0x4a311e
    .end array-data

    :array_2f2
    .array-data 4
        -0x4a311e
        -0x4a311e
    .end array-data

    :array_2fa
    .array-data 4
        -0x4a311e
        -0x4a311e
    .end array-data

    :array_302
    .array-data 4
        -0x4b000001
        -0x4b000001
    .end array-data

    :array_30a
    .array-data 4
        -0x4b000001
        -0x4b000001
    .end array-data

    :array_312
    .array-data 4
        -0x4b000001
        -0x4b000001
    .end array-data

    :array_31a
    .array-data 4
        -0x4b000001
        -0x4b000001
    .end array-data

    :array_322
    .array-data 4
        -0x35df80
        -0x35df80
    .end array-data

    :array_32a
    .array-data 4
        -0x35df80
        -0x35df80
    .end array-data

    :array_332
    .array-data 4
        -0x35df80
        -0x35df80
    .end array-data

    :array_33a
    .array-data 4
        -0x35df80
        -0x35df80
    .end array-data
.end method

.method static synthetic access$000(Lcom/flyme/systemuitools/aod/presenter/AODStateController;)Landroid/content/ContentResolver;
    .registers 1

    .line 24
    iget-object p0, p0, Lcom/flyme/systemuitools/aod/presenter/AODStateController;->mResolver:Landroid/content/ContentResolver;

    return-object p0
.end method

.method static synthetic access$100(Lcom/flyme/systemuitools/aod/presenter/AODStateController;)I
    .registers 1

    .line 24
    iget p0, p0, Lcom/flyme/systemuitools/aod/presenter/AODStateController;->mClockStyle:I

    return p0
.end method

.method static synthetic access$102(Lcom/flyme/systemuitools/aod/presenter/AODStateController;I)I
    .registers 2

    .line 24
    iput p1, p0, Lcom/flyme/systemuitools/aod/presenter/AODStateController;->mClockStyle:I

    return p1
.end method

.method static synthetic access$200(Lcom/flyme/systemuitools/aod/presenter/AODStateController;)V
    .registers 1

    .line 24
    invoke-direct {p0}, Lcom/flyme/systemuitools/aod/presenter/AODStateController;->updateStyleChange()V

    return-void
.end method

.method static synthetic access$300(Lcom/flyme/systemuitools/aod/presenter/AODStateController;)V
    .registers 1

    .line 24
    invoke-direct {p0}, Lcom/flyme/systemuitools/aod/presenter/AODStateController;->updateGradientColors()V

    return-void
.end method

.method static synthetic access$400(Lcom/flyme/systemuitools/aod/presenter/AODStateController;)Z
    .registers 1

    .line 24
    iget-boolean p0, p0, Lcom/flyme/systemuitools/aod/presenter/AODStateController;->mShowNotification:Z

    return p0
.end method

.method static synthetic access$402(Lcom/flyme/systemuitools/aod/presenter/AODStateController;Z)Z
    .registers 2

    .line 24
    iput-boolean p1, p0, Lcom/flyme/systemuitools/aod/presenter/AODStateController;->mShowNotification:Z

    return p1
.end method

.method static synthetic access$500(Lcom/flyme/systemuitools/aod/presenter/AODStateController;Z)V
    .registers 2

    .line 24
    invoke-direct {p0, p1}, Lcom/flyme/systemuitools/aod/presenter/AODStateController;->updateNotificationSettings(Z)V

    return-void
.end method

.method private getGradientColorsForAODStyle(I)I
    .registers 6

    const/4 v0, 0x5

    if-ne p1, v0, :cond_5

    const/4 p0, 0x1

    return p0

    :cond_5
    const/4 v1, 0x6

    if-ne p1, v1, :cond_a

    const/4 p0, 0x2

    return p0

    :cond_a
    const/4 v2, 0x4

    if-ne p1, v2, :cond_f

    const/4 p0, 0x7

    return p0

    :cond_f
    const/16 v3, 0x9

    if-ne p1, v3, :cond_14

    return v2

    :cond_14
    const/16 v2, 0xa

    if-ne p1, v2, :cond_1a

    const/4 p0, 0x3

    return p0

    :cond_1a
    const/16 v3, 0xb

    if-ne p1, v3, :cond_1f

    return v0

    :cond_1f
    const/16 v0, 0xc

    if-ne p1, v0, :cond_24

    return v1

    :cond_24
    const/16 v0, 0xd

    if-ne p1, v0, :cond_2b

    const/16 p0, 0x8

    return p0

    .line 153
    :cond_2b
    invoke-virtual {p0, p1}, Lcom/flyme/systemuitools/aod/presenter/AODStateController;->isVerticalSytleWithSvgaBg(I)Z

    move-result v0

    if-nez v0, :cond_48

    invoke-virtual {p0, p1}, Lcom/flyme/systemuitools/aod/presenter/AODStateController;->isHorizontalSytleWithSvgaBg(I)Z

    move-result p1

    if-eqz p1, :cond_38

    goto :goto_48

    .line 155
    :cond_38
    invoke-virtual {p0}, Lcom/flyme/systemuitools/aod/presenter/AODStateController;->isSpringVerticalStyle2020()Z

    move-result p1

    if-nez p1, :cond_47

    invoke-virtual {p0}, Lcom/flyme/systemuitools/aod/presenter/AODStateController;->isSpringHorizontalStyle2020()Z

    move-result p0

    if-eqz p0, :cond_45

    goto :goto_47

    :cond_45
    const/4 p0, 0x0

    return p0

    :cond_47
    :goto_47
    return v3

    :cond_48
    :goto_48
    return v2
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/flyme/systemuitools/aod/presenter/AODStateController;
    .registers 2

    .line 76
    sget-object v0, Lcom/flyme/systemuitools/aod/presenter/AODStateController;->sInstance:Lcom/flyme/systemuitools/aod/presenter/AODStateController;

    if-nez v0, :cond_b

    .line 77
    new-instance v0, Lcom/flyme/systemuitools/aod/presenter/AODStateController;

    invoke-direct {v0, p0}, Lcom/flyme/systemuitools/aod/presenter/AODStateController;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/flyme/systemuitools/aod/presenter/AODStateController;->sInstance:Lcom/flyme/systemuitools/aod/presenter/AODStateController;

    .line 79
    :cond_b
    sget-object p0, Lcom/flyme/systemuitools/aod/presenter/AODStateController;->sInstance:Lcom/flyme/systemuitools/aod/presenter/AODStateController;

    return-object p0
.end method

.method private updateGradientColors()V
    .registers 5

    .line 124
    iget v0, p0, Lcom/flyme/systemuitools/aod/presenter/AODStateController;->mClockStyle:I

    invoke-direct {p0, v0}, Lcom/flyme/systemuitools/aod/presenter/AODStateController;->getGradientColorsForAODStyle(I)I

    move-result v0

    .line 125
    iget-object p0, p0, Lcom/flyme/systemuitools/aod/presenter/AODStateController;->mGradientColors:[[[I

    aget-object v1, p0, v0

    const/4 v2, 0x0

    aget-object v1, v1, v2

    .line 126
    aget-object v2, p0, v0

    const/4 v3, 0x1

    aget-object v2, v2, v3

    .line 127
    aget-object p0, p0, v0

    const/4 v0, 0x2

    aget-object p0, p0, v0

    .line 128
    invoke-static {}, Lcom/flyme/systemuitools/aod/presenter/GradientPresenter;->getInstance()Lcom/flyme/systemuitools/aod/presenter/GradientPresenter;

    move-result-object v0

    invoke-virtual {v0, v1, v2, p0}, Lcom/flyme/systemuitools/aod/presenter/GradientPresenter;->updateGradientColors([I[I[I)V

    return-void
.end method

.method private updateNotificationSettings(Z)V
    .registers 4

    const/4 v0, 0x0

    .line 169
    :goto_1
    iget-object v1, p0, Lcom/flyme/systemuitools/aod/presenter/AODStateController;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 170
    iget-object v1, p0, Lcom/flyme/systemuitools/aod/presenter/AODStateController;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flyme/systemuitools/aod/presenter/AODStateController$StyleChangeCallback;

    .line 171
    invoke-interface {v1, p1}, Lcom/flyme/systemuitools/aod/presenter/AODStateController$StyleChangeCallback;->onNotificationSettings(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_17
    return-void
.end method

.method private updateStyleChange()V
    .registers 3

    const/4 v0, 0x0

    .line 162
    :goto_1
    iget-object v1, p0, Lcom/flyme/systemuitools/aod/presenter/AODStateController;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 163
    iget-object v1, p0, Lcom/flyme/systemuitools/aod/presenter/AODStateController;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flyme/systemuitools/aod/presenter/AODStateController$StyleChangeCallback;

    .line 164
    invoke-interface {v1}, Lcom/flyme/systemuitools/aod/presenter/AODStateController$StyleChangeCallback;->onStyleChange()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_17
    return-void
.end method


# virtual methods
.method public addCallBack(Lcom/flyme/systemuitools/aod/presenter/AODStateController$StyleChangeCallback;)V
    .registers 2

    .line 180
    iget-object p0, p0, Lcom/flyme/systemuitools/aod/presenter/AODStateController;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getClockColors()[I
    .registers 2

    .line 242
    iget v0, p0, Lcom/flyme/systemuitools/aod/presenter/AODStateController;->mClockStyle:I

    invoke-direct {p0, v0}, Lcom/flyme/systemuitools/aod/presenter/AODStateController;->getGradientColorsForAODStyle(I)I

    move-result v0

    .line 243
    iget-object p0, p0, Lcom/flyme/systemuitools/aod/presenter/AODStateController;->mGradientColors:[[[I

    aget-object p0, p0, v0

    const/4 v0, 0x0

    aget-object p0, p0, v0

    return-object p0
.end method

.method public getClockStyle()I
    .registers 1

    .line 83
    iget p0, p0, Lcom/flyme/systemuitools/aod/presenter/AODStateController;->mClockStyle:I

    return p0
.end method

.method public getDateColors()[I
    .registers 2

    .line 247
    iget v0, p0, Lcom/flyme/systemuitools/aod/presenter/AODStateController;->mClockStyle:I

    invoke-direct {p0, v0}, Lcom/flyme/systemuitools/aod/presenter/AODStateController;->getGradientColorsForAODStyle(I)I

    move-result v0

    .line 248
    iget-object p0, p0, Lcom/flyme/systemuitools/aod/presenter/AODStateController;->mGradientColors:[[[I

    aget-object p0, p0, v0

    const/4 v0, 0x1

    aget-object p0, p0, v0

    return-object p0
.end method

.method public getFingerprintColors()[I
    .registers 2

    .line 257
    iget v0, p0, Lcom/flyme/systemuitools/aod/presenter/AODStateController;->mClockStyle:I

    invoke-direct {p0, v0}, Lcom/flyme/systemuitools/aod/presenter/AODStateController;->getGradientColorsForAODStyle(I)I

    move-result v0

    .line 258
    iget-object p0, p0, Lcom/flyme/systemuitools/aod/presenter/AODStateController;->mGradientColors:[[[I

    aget-object p0, p0, v0

    const/4 v0, 0x3

    aget-object p0, p0, v0

    return-object p0
.end method

.method public getNotificationColors()[I
    .registers 2

    .line 252
    iget v0, p0, Lcom/flyme/systemuitools/aod/presenter/AODStateController;->mClockStyle:I

    invoke-direct {p0, v0}, Lcom/flyme/systemuitools/aod/presenter/AODStateController;->getGradientColorsForAODStyle(I)I

    move-result v0

    .line 253
    iget-object p0, p0, Lcom/flyme/systemuitools/aod/presenter/AODStateController;->mGradientColors:[[[I

    aget-object p0, p0, v0

    const/4 v0, 0x2

    aget-object p0, p0, v0

    return-object p0
.end method

.method public getNotificationSettings()Z
    .registers 1

    .line 176
    iget-boolean p0, p0, Lcom/flyme/systemuitools/aod/presenter/AODStateController;->mShowNotification:Z

    return p0
.end method

.method public isDiskClockType(I)Z
    .registers 3

    const/4 p0, 0x1

    if-eq p1, p0, :cond_b

    const/4 v0, 0x2

    if-eq p1, v0, :cond_b

    const/4 v0, 0x3

    if-ne p1, v0, :cond_a

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :cond_b
    :goto_b
    return p0
.end method

.method public isHorizontalStyle(I)Z
    .registers 3

    .line 189
    invoke-virtual {p0, p1}, Lcom/flyme/systemuitools/aod/presenter/AODStateController;->isHorizontalStyleNoBG(I)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 190
    invoke-virtual {p0, p1}, Lcom/flyme/systemuitools/aod/presenter/AODStateController;->isHorizontalStyleWithBG(I)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 191
    invoke-virtual {p0, p1}, Lcom/flyme/systemuitools/aod/presenter/AODStateController;->isHorizontalSytleWithSvgaBg(I)Z

    move-result p1

    if-nez p1, :cond_1b

    .line 192
    invoke-virtual {p0}, Lcom/flyme/systemuitools/aod/presenter/AODStateController;->isSpringHorizontalStyle2020()Z

    move-result p0

    if-eqz p0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 p0, 0x0

    goto :goto_1c

    :cond_1b
    :goto_1b
    const/4 p0, 0x1

    :goto_1c
    return p0
.end method

.method public isHorizontalStyleNoBG(I)Z
    .registers 2

    if-eqz p1, :cond_d

    const/16 p0, 0xb

    if-eq p1, p0, :cond_d

    const/16 p0, 0xc

    if-ne p1, p0, :cond_b

    goto :goto_d

    :cond_b
    const/4 p0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 p0, 0x1

    :goto_e
    return p0
.end method

.method public isHorizontalStyleWithBG(I)Z
    .registers 2

    const/4 p0, 0x5

    if-eq p1, p0, :cond_11

    const/4 p0, 0x6

    if-eq p1, p0, :cond_11

    const/16 p0, 0xd

    if-eq p1, p0, :cond_11

    const/16 p0, 0xe

    if-ne p1, p0, :cond_f

    goto :goto_11

    :cond_f
    const/4 p0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 p0, 0x1

    :goto_12
    return p0
.end method

.method public isHorizontalSytleWithSvgaBg(I)Z
    .registers 2

    const/16 p0, 0x10

    if-eq p1, p0, :cond_b

    const/16 p0, 0x11

    if-ne p1, p0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 p0, 0x1

    :goto_c
    return p0
.end method

.method public isSpringHorizontalStyle2020()Z
    .registers 2

    .line 234
    iget p0, p0, Lcom/flyme/systemuitools/aod/presenter/AODStateController;->mClockStyle:I

    const/16 v0, 0x12

    if-lt p0, v0, :cond_c

    const/16 v0, 0x14

    if-gt p0, v0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public isSpringVerticalStyle2020()Z
    .registers 2

    .line 238
    iget p0, p0, Lcom/flyme/systemuitools/aod/presenter/AODStateController;->mClockStyle:I

    const/16 v0, 0x15

    if-ne p0, v0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public isVerticalStyle(I)Z
    .registers 3

    const/16 v0, 0x8

    if-eq p1, v0, :cond_21

    const/16 v0, 0x9

    if-eq p1, v0, :cond_21

    const/16 v0, 0xa

    if-eq p1, v0, :cond_21

    const/4 v0, 0x7

    if-eq p1, v0, :cond_21

    const/4 v0, 0x4

    if-eq p1, v0, :cond_21

    .line 201
    invoke-virtual {p0, p1}, Lcom/flyme/systemuitools/aod/presenter/AODStateController;->isVerticalSytleWithSvgaBg(I)Z

    move-result p1

    if-nez p1, :cond_21

    .line 202
    invoke-virtual {p0}, Lcom/flyme/systemuitools/aod/presenter/AODStateController;->isSpringVerticalStyle2020()Z

    move-result p0

    if-eqz p0, :cond_1f

    goto :goto_21

    :cond_1f
    const/4 p0, 0x0

    goto :goto_22

    :cond_21
    :goto_21
    const/4 p0, 0x1

    :goto_22
    return p0
.end method

.method public isVerticalSytleWithSvgaBg(I)Z
    .registers 2

    const/16 p0, 0xf

    if-ne p1, p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method
