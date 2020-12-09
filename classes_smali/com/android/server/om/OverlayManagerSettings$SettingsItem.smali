.class final Lcom/android/server/om/OverlayManagerSettings$SettingsItem;
.super Ljava/lang/Object;
.source "OverlayManagerSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/om/OverlayManagerSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SettingsItem"
.end annotation


# instance fields
.field private mBaseCodePath:Ljava/lang/String;

.field private mCache:Landroid/content/om/OverlayInfo;

.field private mCategory:Ljava/lang/String;

.field private mIsEnabled:Z

.field private mIsStatic:Z

.field private final mPackageName:Ljava/lang/String;

.field private mPriority:I

.field private mState:I

.field private final mTargetOverlayableName:Ljava/lang/String;

.field private final mTargetPackageName:Ljava/lang/String;

.field private final mUserId:I


# direct methods
.method constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZILjava/lang/String;)V
    .registers 11

    .line 505
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 506
    iput-object p1, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mPackageName:Ljava/lang/String;

    .line 507
    iput p2, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mUserId:I

    .line 508
    iput-object p3, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mTargetPackageName:Ljava/lang/String;

    .line 509
    iput-object p4, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mTargetOverlayableName:Ljava/lang/String;

    .line 510
    iput-object p5, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mBaseCodePath:Ljava/lang/String;

    .line 511
    iput p6, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mState:I

    .line 512
    if-nez p7, :cond_16

    if-eqz p8, :cond_14

    goto :goto_16

    :cond_14
    const/4 p1, 0x0

    goto :goto_17

    :cond_16
    :goto_16
    const/4 p1, 0x1

    :goto_17
    iput-boolean p1, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mIsEnabled:Z

    .line 513
    iput-object p10, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mCategory:Ljava/lang/String;

    .line 514
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mCache:Landroid/content/om/OverlayInfo;

    .line 515
    iput-boolean p8, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mIsStatic:Z

    .line 516
    iput p9, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mPriority:I

    .line 517
    return-void
.end method

.method constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;)V
    .registers 20

    .line 523
    const/4 v6, -0x1

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v10, p8

    invoke-direct/range {v0 .. v10}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZILjava/lang/String;)V

    .line 525
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;Z)Z
    .registers 2

    .line 488
    invoke-direct {p0, p1}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->setEnabled(Z)Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Z
    .registers 1

    .line 488
    iget-boolean p0, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mIsStatic:Z

    return p0
.end method

.method static synthetic access$1000(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Ljava/lang/String;
    .registers 1

    .line 488
    invoke-direct {p0}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->getTargetPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1100(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Ljava/lang/String;
    .registers 1

    .line 488
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Ljava/lang/String;
    .registers 1

    .line 488
    invoke-direct {p0}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->getTargetOverlayableName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1300(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Ljava/lang/String;
    .registers 1

    .line 488
    invoke-direct {p0}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->getBaseCodePath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1400(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Z
    .registers 1

    .line 488
    invoke-direct {p0}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->isStatic()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1500(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Ljava/lang/String;
    .registers 1

    .line 488
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mCategory:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)I
    .registers 1

    .line 488
    iget p0, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mUserId:I

    return p0
.end method

.method static synthetic access$1700(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Ljava/lang/String;
    .registers 1

    .line 488
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mTargetPackageName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Ljava/lang/String;
    .registers 1

    .line 488
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mTargetOverlayableName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Ljava/lang/String;
    .registers 1

    .line 488
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mBaseCodePath:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)I
    .registers 1

    .line 488
    iget p0, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mPriority:I

    return p0
.end method

.method static synthetic access$2000(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)I
    .registers 1

    .line 488
    iget p0, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mState:I

    return p0
.end method

.method static synthetic access$2100(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Z
    .registers 1

    .line 488
    iget-boolean p0, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mIsEnabled:Z

    return p0
.end method

.method static synthetic access$300(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Landroid/content/om/OverlayInfo;
    .registers 1

    .line 488
    invoke-direct {p0}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->getOverlayInfo()Landroid/content/om/OverlayInfo;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;Ljava/lang/String;)Z
    .registers 2

    .line 488
    invoke-direct {p0, p1}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->setBaseCodePath(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;Ljava/lang/String;)Z
    .registers 2

    .line 488
    invoke-direct {p0, p1}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->setCategory(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Z
    .registers 1

    .line 488
    invoke-direct {p0}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->isEnabled()Z

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)I
    .registers 1

    .line 488
    invoke-direct {p0}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->getState()I

    move-result p0

    return p0
.end method

.method static synthetic access$800(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;I)Z
    .registers 2

    .line 488
    invoke-direct {p0, p1}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->setState(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$900(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)I
    .registers 1

    .line 488
    invoke-direct {p0}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->getUserId()I

    move-result p0

    return p0
.end method

.method private getBaseCodePath()Ljava/lang/String;
    .registers 2

    .line 540
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mBaseCodePath:Ljava/lang/String;

    return-object v0
.end method

.method private getOverlayInfo()Landroid/content/om/OverlayInfo;
    .registers 12

    .line 592
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mCache:Landroid/content/om/OverlayInfo;

    if-nez v0, :cond_1e

    .line 593
    new-instance v0, Landroid/content/om/OverlayInfo;

    iget-object v2, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mPackageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mTargetPackageName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mTargetOverlayableName:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mCategory:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mBaseCodePath:Ljava/lang/String;

    iget v7, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mState:I

    iget v8, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mUserId:I

    iget v9, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mPriority:I

    iget-boolean v10, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mIsStatic:Z

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Landroid/content/om/OverlayInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZ)V

    iput-object v0, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mCache:Landroid/content/om/OverlayInfo;

    .line 596
    :cond_1e
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mCache:Landroid/content/om/OverlayInfo;

    return-object v0
.end method

.method private getPriority()I
    .registers 2

    .line 608
    iget v0, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mPriority:I

    return v0
.end method

.method private getState()I
    .registers 2

    .line 553
    iget v0, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mState:I

    return v0
.end method

.method private getTargetOverlayableName()Ljava/lang/String;
    .registers 2

    .line 532
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mTargetOverlayableName:Ljava/lang/String;

    return-object v0
.end method

.method private getTargetPackageName()Ljava/lang/String;
    .registers 2

    .line 528
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mTargetPackageName:Ljava/lang/String;

    return-object v0
.end method

.method private getUserId()I
    .registers 2

    .line 536
    iget v0, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mUserId:I

    return v0
.end method

.method private invalidateCache()V
    .registers 2

    .line 600
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mCache:Landroid/content/om/OverlayInfo;

    .line 601
    return-void
.end method

.method private isEnabled()Z
    .registers 2

    .line 566
    iget-boolean v0, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mIsEnabled:Z

    return v0
.end method

.method private isStatic()Z
    .registers 2

    .line 604
    iget-boolean v0, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mIsStatic:Z

    return v0
.end method

.method private setBaseCodePath(Ljava/lang/String;)Z
    .registers 3

    .line 544
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mBaseCodePath:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 545
    iput-object p1, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mBaseCodePath:Ljava/lang/String;

    .line 546
    invoke-direct {p0}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->invalidateCache()V

    .line 547
    const/4 p1, 0x1

    return p1

    .line 549
    :cond_f
    const/4 p1, 0x0

    return p1
.end method

.method private setCategory(Ljava/lang/String;)Z
    .registers 3

    .line 583
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mCategory:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 584
    if-nez p1, :cond_c

    const/4 p1, 0x0

    goto :goto_10

    :cond_c
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    :goto_10
    iput-object p1, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mCategory:Ljava/lang/String;

    .line 585
    invoke-direct {p0}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->invalidateCache()V

    .line 586
    const/4 p1, 0x1

    return p1

    .line 588
    :cond_17
    const/4 p1, 0x0

    return p1
.end method

.method private setEnabled(Z)Z
    .registers 4

    .line 570
    iget-boolean v0, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mIsStatic:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 571
    return v1

    .line 574
    :cond_6
    iget-boolean v0, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mIsEnabled:Z

    if-eq v0, p1, :cond_11

    .line 575
    iput-boolean p1, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mIsEnabled:Z

    .line 576
    invoke-direct {p0}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->invalidateCache()V

    .line 577
    const/4 p1, 0x1

    return p1

    .line 579
    :cond_11
    return v1
.end method

.method private setState(I)Z
    .registers 3

    .line 557
    iget v0, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mState:I

    if-eq v0, p1, :cond_b

    .line 558
    iput p1, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mState:I

    .line 559
    invoke-direct {p0}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->invalidateCache()V

    .line 560
    const/4 p1, 0x1

    return p1

    .line 562
    :cond_b
    const/4 p1, 0x0

    return p1
.end method
