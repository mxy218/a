.class public Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;
.super Landroid/widget/FrameLayout;
.source "NavigationBarInflaterView.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/NavigationModeController$ModeChangedListener;


# static fields
.field public static final IS_IN_CTS_STATE:Z


# instance fields
.field private mAlternativeOrder:Z

.field mButtonDispatchers:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/systemui/statusbar/phone/ButtonDispatcher;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentLayout:Ljava/lang/String;

.field protected mHorizontal:Landroid/widget/FrameLayout;

.field private mIsVertical:Z

.field protected mLandscapeInflater:Landroid/view/LayoutInflater;

.field private mLastLandscape:Landroid/view/View;

.field private mLastPortrait:Landroid/view/View;

.field protected mLayoutInflater:Landroid/view/LayoutInflater;

.field private mNavBarMode:I

.field private mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

.field private mUsingCustomLayout:Z

.field protected mVertical:Landroid/widget/FrameLayout;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "persist.sys_cts_state"

    const/4 v1, 0x0

    .line 525
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->IS_IN_CTS_STATE:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 105
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 102
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mNavBarMode:I

    .line 106
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->createInflaters()V

    .line 107
    const-class p1, Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/recents/OverviewProxyService;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    .line 108
    const-class p1, Lcom/android/systemui/statusbar/phone/NavigationModeController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/NavigationModeController;

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/phone/NavigationModeController;->addListener(Lcom/android/systemui/statusbar/phone/NavigationModeController$ModeChangedListener;)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mNavBarMode:I

    return-void
.end method

.method private addAll(Lcom/android/systemui/statusbar/phone/ButtonDispatcher;Landroid/view/ViewGroup;)V
    .registers 6

    const/4 v0, 0x0

    .line 234
    :goto_1
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_30

    .line 238
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->getId()I

    move-result v2

    if-ne v1, v2, :cond_1c

    .line 239
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->addView(Landroid/view/View;)V

    .line 241
    :cond_1c
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_2d

    .line 242
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-direct {p0, p1, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->addAll(Lcom/android/systemui/statusbar/phone/ButtonDispatcher;Landroid/view/ViewGroup;)V

    :cond_2d
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_30
    return-void
.end method

.method private addGravitySpacer(Landroid/widget/LinearLayout;)V
    .registers 5

    .line 284
    new-instance v0, Landroid/widget/Space;

    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Landroid/widget/Space;-><init>(Landroid/content/Context;)V

    new-instance p0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000  # 1.0f

    invoke-direct {p0, v1, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p1, v0, p0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private addToDispatchers(Landroid/view/View;)V
    .registers 5

    .line 462
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mButtonDispatchers:Landroid/util/SparseArray;

    if-eqz v0, :cond_30

    .line 463
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_19

    .line 465
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mButtonDispatchers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->addView(Landroid/view/View;)V

    .line 467
    :cond_19
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_30

    .line 468
    check-cast p1, Landroid/view/ViewGroup;

    .line 469
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_24
    if-ge v1, v0, :cond_30

    .line 471
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->addToDispatchers(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    :cond_30
    return-void
.end method

.method private applySize(Landroid/view/View;Ljava/lang/String;ZZ)Landroid/view/View;
    .registers 10

    .line 329
    invoke-static {p2}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->extractSize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_7

    return-object p1

    :cond_7
    const-string v0, "W"

    .line 332
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "A"

    if-nez v1, :cond_28

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_18

    goto :goto_28

    .line 371
    :cond_18
    invoke-static {p2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    .line 372
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    .line 373
    iget p3, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float p3, p3

    mul-float/2addr p3, p0

    float-to-int p0, p3

    iput p0, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    return-object p1

    .line 335
    :cond_28
    :goto_28
    new-instance v1, Lcom/android/systemui/statusbar/phone/ReverseLinearLayout$ReverseRelativeLayout;

    iget-object v3, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/android/systemui/statusbar/phone/ReverseLinearLayout$ReverseRelativeLayout;-><init>(Landroid/content/Context;)V

    .line 336
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz p3, :cond_42

    if-eqz p4, :cond_3f

    const/16 p3, 0x30

    goto :goto_4b

    :cond_3f
    const/16 p3, 0x50

    goto :goto_4b

    :cond_42
    if-eqz p4, :cond_48

    const p3, 0x800003

    goto :goto_4b

    :cond_48
    const p3, 0x800005

    :goto_4b
    const-string p4, "WC"

    .line 341
    invoke-virtual {p2, p4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_56

    const/16 p3, 0x11

    goto :goto_60

    :cond_56
    const-string p4, "C"

    .line 343
    invoke-virtual {p2, p4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_60

    const/16 p3, 0x10

    .line 348
    :cond_60
    :goto_60
    invoke-virtual {v1, p3}, Lcom/android/systemui/statusbar/phone/ReverseLinearLayout$ReverseRelativeLayout;->setDefaultGravity(I)V

    .line 349
    invoke-virtual {v1, p3}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 351
    invoke-virtual {v1, p1, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 353
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 p3, -0x1

    const/4 p4, 0x0

    if-eqz p1, :cond_86

    .line 356
    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p2, p4, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 355
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    .line 357
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p1, p4, p3, p0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, p1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_a1

    .line 359
    :cond_86
    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 360
    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p4, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    .line 359
    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->convertDpToPx(Landroid/content/Context;F)F

    move-result p0

    float-to-int p0, p0

    .line 361
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p1, p0, p3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, p1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 365
    :goto_a1
    invoke-virtual {v1, p4}, Landroid/widget/RelativeLayout;->setClipChildren(Z)V

    .line 366
    invoke-virtual {v1, p4}, Landroid/widget/RelativeLayout;->setClipToPadding(Z)V

    return-object v1
.end method

.method private clearAllChildren(Landroid/view/ViewGroup;)V
    .registers 3

    const/4 p0, 0x0

    .line 488
    :goto_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge p0, v0, :cond_13

    .line 489
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_13
    return-void
.end method

.method private clearViews()V
    .registers 3

    .line 478
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mButtonDispatchers:Landroid/util/SparseArray;

    if-eqz v0, :cond_1b

    const/4 v0, 0x0

    .line 479
    :goto_5
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mButtonDispatchers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1b

    .line 480
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mButtonDispatchers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->clear()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 483
    :cond_1b
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mHorizontal:Landroid/widget/FrameLayout;

    sget v1, Lcom/android/systemui/R$id;->nav_buttons:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->clearAllChildren(Landroid/view/ViewGroup;)V

    .line 484
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mVertical:Landroid/widget/FrameLayout;

    sget v1, Lcom/android/systemui/R$id;->nav_buttons:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->clearAllChildren(Landroid/view/ViewGroup;)V

    return-void
.end method

.method private static convertDpToPx(Landroid/content/Context;F)F
    .registers 2

    .line 494
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, p0

    return p1
.end method

.method private createView(Ljava/lang/String;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;
    .registers 7

    .line 379
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->extractButton(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "left"

    .line 380
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v0, "menu_ime"

    const-string/jumbo v1, "space"

    if-eqz p1, :cond_16

    .line 381
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->extractButton(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_22

    :cond_16
    const-string p1, "right"

    .line 382
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_22

    .line 383
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->extractButton(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_22
    :goto_22
    const-string p1, "home"

    .line 385
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v2, 0x0

    if-eqz p1, :cond_33

    .line 386
    sget p0, Lcom/android/systemui/R$layout;->home:I

    invoke-virtual {p3, p0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    goto/16 :goto_111

    :cond_33
    const-string p1, "back"

    .line 387
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_43

    .line 388
    sget p0, Lcom/android/systemui/R$layout;->back:I

    invoke-virtual {p3, p0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    goto/16 :goto_111

    :cond_43
    const-string p1, "recent"

    .line 389
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_53

    .line 390
    sget p0, Lcom/android/systemui/R$layout;->recent_apps:I

    invoke-virtual {p3, p0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    goto/16 :goto_111

    .line 391
    :cond_53
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_61

    .line 392
    sget p0, Lcom/android/systemui/R$layout;->menu_ime:I

    invoke-virtual {p3, p0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    goto/16 :goto_111

    .line 393
    :cond_61
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6f

    .line 394
    sget p0, Lcom/android/systemui/R$layout;->nav_key_space:I

    invoke-virtual {p3, p0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    goto/16 :goto_111

    :cond_6f
    const-string p1, "clipboard"

    .line 395
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7f

    .line 396
    sget p0, Lcom/android/systemui/R$layout;->clipboard:I

    invoke-virtual {p3, p0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    goto/16 :goto_111

    :cond_7f
    const-string p1, "contextual"

    .line 397
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8f

    .line 398
    sget p0, Lcom/android/systemui/R$layout;->contextual:I

    invoke-virtual {p3, p0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    goto/16 :goto_111

    :cond_8f
    const-string p1, "home_handle"

    .line 399
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9f

    .line 400
    sget p0, Lcom/android/systemui/R$layout;->home_handle:I

    invoke-virtual {p3, p0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    goto/16 :goto_111

    :cond_9f
    const-string p1, "ime_switcher"

    .line 401
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_ae

    .line 402
    sget p0, Lcom/android/systemui/R$layout;->ime_switcher:I

    invoke-virtual {p3, p0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    goto :goto_111

    :cond_ae
    const-string p1, "key"

    .line 403
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_101

    .line 404
    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->extractImage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 405
    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->extractKeycode(Ljava/lang/String;)I

    move-result p0

    .line 406
    sget v0, Lcom/android/systemui/R$layout;->custom_key:I

    invoke-virtual {p3, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 407
    move-object p3, p2

    check-cast p3, Lcom/android/systemui/statusbar/policy/KeyButtonView;

    invoke-virtual {p3, p0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setCode(I)V

    if-eqz p1, :cond_ff

    const-string p0, ":"

    .line 409
    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_dc

    .line 410
    invoke-static {p1}, Landroid/graphics/drawable/Icon;->createWithContentUri(Ljava/lang/String;)Landroid/graphics/drawable/Icon;

    move-result-object p0

    invoke-virtual {p3, p0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->loadAsync(Landroid/graphics/drawable/Icon;)V

    goto :goto_ff

    :cond_dc
    const-string p0, "/"

    .line 411
    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_ff

    const/16 p0, 0x2f

    .line 412
    invoke-virtual {p1, p0}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    .line 413
    invoke-virtual {p1, v2, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 p0, p0, 0x1

    .line 414
    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .line 415
    invoke-static {v0, p0}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object p0

    invoke-virtual {p3, p0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->loadAsync(Landroid/graphics/drawable/Icon;)V

    :cond_ff
    :goto_ff
    move-object p0, p2

    goto :goto_111

    :cond_101
    const-string p1, "mback"

    .line 421
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_110

    .line 422
    sget p0, Lcom/android/systemui/R$layout;->mback:I

    invoke-virtual {p3, p0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    goto :goto_111

    :cond_110
    const/4 p0, 0x0

    :goto_111
    return-object p0
.end method

.method public static extractButton(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string v0, "["

    .line 455
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    return-object p0

    :cond_9
    const/4 v1, 0x0

    .line 458
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static extractImage(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string v0, ":"

    .line 429
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    const/4 p0, 0x0

    return-object p0

    .line 432
    :cond_a
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const-string v1, ")"

    .line 433
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static extractKeycode(Ljava/lang/String;)I
    .registers 4

    const-string v0, "("

    .line 438
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_a

    return v2

    .line 441
    :cond_a
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/2addr v0, v2

    const-string v1, ":"

    .line 442
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 443
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static extractSize(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string v0, "["

    .line 447
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    const/4 p0, 0x0

    return-object p0

    .line 450
    :cond_a
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const-string v1, "]"

    .line 451
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private inflateButtons([Ljava/lang/String;Landroid/view/ViewGroup;ZZ)V
    .registers 7

    const/4 v0, 0x0

    .line 289
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_c

    .line 290
    aget-object v1, p1, v0

    invoke-virtual {p0, v1, p2, p3, p4}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->inflateButton(Ljava/lang/String;Landroid/view/ViewGroup;ZZ)Landroid/view/View;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_c
    return-void
.end method

.method private inflateChildren()V
    .registers 4

    .line 129
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 130
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/android/systemui/R$layout;->navigation_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mHorizontal:Landroid/widget/FrameLayout;

    .line 132
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mHorizontal:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 133
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/android/systemui/R$layout;->navigation_layout_vertical:I

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mVertical:Landroid/widget/FrameLayout;

    .line 135
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mVertical:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 136
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->updateAlternativeOrder()V

    return-void
.end method

.method private initiallyFill(Lcom/android/systemui/statusbar/phone/ButtonDispatcher;)V
    .registers 4

    .line 227
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mHorizontal:Landroid/widget/FrameLayout;

    sget v1, Lcom/android/systemui/R$id;->ends_group:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->addAll(Lcom/android/systemui/statusbar/phone/ButtonDispatcher;Landroid/view/ViewGroup;)V

    .line 228
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mHorizontal:Landroid/widget/FrameLayout;

    sget v1, Lcom/android/systemui/R$id;->center_group:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->addAll(Lcom/android/systemui/statusbar/phone/ButtonDispatcher;Landroid/view/ViewGroup;)V

    .line 229
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mVertical:Landroid/widget/FrameLayout;

    sget v1, Lcom/android/systemui/R$id;->ends_group:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->addAll(Lcom/android/systemui/statusbar/phone/ButtonDispatcher;Landroid/view/ViewGroup;)V

    .line 230
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mVertical:Landroid/widget/FrameLayout;

    sget v1, Lcom/android/systemui/R$id;->center_group:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->addAll(Lcom/android/systemui/statusbar/phone/ButtonDispatcher;Landroid/view/ViewGroup;)V

    return-void
.end method

.method private updateAlternativeOrder()V
    .registers 3

    .line 214
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mHorizontal:Landroid/widget/FrameLayout;

    sget v1, Lcom/android/systemui/R$id;->ends_group:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->updateAlternativeOrder(Landroid/view/View;)V

    .line 215
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mHorizontal:Landroid/widget/FrameLayout;

    sget v1, Lcom/android/systemui/R$id;->center_group:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->updateAlternativeOrder(Landroid/view/View;)V

    .line 216
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mVertical:Landroid/widget/FrameLayout;

    sget v1, Lcom/android/systemui/R$id;->ends_group:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->updateAlternativeOrder(Landroid/view/View;)V

    .line 217
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mVertical:Landroid/widget/FrameLayout;

    sget v1, Lcom/android/systemui/R$id;->center_group:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->updateAlternativeOrder(Landroid/view/View;)V

    return-void
.end method

.method private updateAlternativeOrder(Landroid/view/View;)V
    .registers 3

    .line 221
    instance-of v0, p1, Lcom/android/systemui/statusbar/phone/ReverseLinearLayout;

    if-eqz v0, :cond_b

    .line 222
    check-cast p1, Lcom/android/systemui/statusbar/phone/ReverseLinearLayout;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mAlternativeOrder:Z

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/phone/ReverseLinearLayout;->setAlternativeOrder(Z)V

    :cond_b
    return-void
.end method


# virtual methods
.method createInflaters()V
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 113
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 114
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    .line 115
    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    const/4 v1, 0x2

    .line 116
    iput v1, v0, Landroid/content/res/Configuration;->orientation:I

    .line 117
    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mLandscapeInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method protected getDefaultLayout()Ljava/lang/String;
    .registers 2

    .line 140
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mNavBarMode:I

    invoke-static {v0}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 141
    sget v0, Lcom/android/systemui/R$string;->config_navBarLayoutHandle:I

    goto :goto_1f

    .line 142
    :cond_b
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-virtual {v0}, Lcom/android/systemui/recents/OverviewProxyService;->shouldShowSwipeUpUI()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 145
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->IS_IN_CTS_STATE:Z

    if-eqz v0, :cond_1a

    sget v0, Lcom/android/systemui/R$string;->config_navBarLayoutQuickstep:I

    goto :goto_1f

    :cond_1a
    sget v0, Lcom/android/systemui/R$string;->config_navBarLayoutMBack:I

    goto :goto_1f

    .line 147
    :cond_1d
    sget v0, Lcom/android/systemui/R$string;->config_navBarLayout:I

    .line 148
    :goto_1f
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected inflateButton(Ljava/lang/String;Landroid/view/ViewGroup;ZZ)Landroid/view/View;
    .registers 6

    if-eqz p3, :cond_5

    .line 305
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mLandscapeInflater:Landroid/view/LayoutInflater;

    goto :goto_7

    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 306
    :goto_7
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->createView(Ljava/lang/String;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_f

    const/4 p0, 0x0

    return-object p0

    .line 309
    :cond_f
    invoke-direct {p0, v0, p1, p3, p4}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->applySize(Landroid/view/View;Ljava/lang/String;ZZ)Landroid/view/View;

    move-result-object p1

    .line 310
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 311
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->addToDispatchers(Landroid/view/View;)V

    if-eqz p3, :cond_1e

    .line 312
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mLastLandscape:Landroid/view/View;

    goto :goto_20

    :cond_1e
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mLastPortrait:Landroid/view/View;

    .line 314
    :goto_20
    instance-of p4, p1, Lcom/android/systemui/statusbar/phone/ReverseLinearLayout$ReverseRelativeLayout;

    if-eqz p4, :cond_2d

    .line 315
    move-object p4, p1

    check-cast p4, Lcom/android/systemui/statusbar/phone/ReverseLinearLayout$ReverseRelativeLayout;

    const/4 v0, 0x0

    invoke-virtual {p4, v0}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p4

    goto :goto_2e

    :cond_2d
    move-object p4, p1

    :goto_2e
    if-eqz p2, :cond_37

    .line 318
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p2

    invoke-virtual {p4, p2}, Landroid/view/View;->setAccessibilityTraversalAfter(I)V

    :cond_37
    if-eqz p3, :cond_3c

    .line 321
    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mLastLandscape:Landroid/view/View;

    goto :goto_3e

    .line 323
    :cond_3c
    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mLastPortrait:Landroid/view/View;

    :goto_3e
    return-object p1
.end method

.method protected inflateLayout(Ljava/lang/String;)V
    .registers 8

    .line 248
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mCurrentLayout:Ljava/lang/String;

    if-nez p1, :cond_8

    .line 250
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->getDefaultLayout()Ljava/lang/String;

    move-result-object p1

    :cond_8
    const-string v0, ";"

    const/4 v1, 0x3

    .line 252
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p1

    .line 253
    array-length v2, p1

    if-eq v2, v1, :cond_21

    const-string p1, "NavBarInflater"

    const-string v2, "Invalid layout."

    .line 254
    invoke-static {p1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->getDefaultLayout()Ljava/lang/String;

    move-result-object p1

    .line 256
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p1

    :cond_21
    const/4 v0, 0x0

    .line 258
    aget-object v1, p1, v0

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    .line 259
    aget-object v4, p1, v3

    invoke-virtual {v4, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    .line 260
    aget-object p1, p1, v5

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 262
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mHorizontal:Landroid/widget/FrameLayout;

    sget v5, Lcom/android/systemui/R$id;->ends_group:I

    invoke-virtual {v2, v5}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-direct {p0, v1, v2, v0, v3}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->inflateButtons([Ljava/lang/String;Landroid/view/ViewGroup;ZZ)V

    .line 264
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mVertical:Landroid/widget/FrameLayout;

    sget v5, Lcom/android/systemui/R$id;->ends_group:I

    invoke-virtual {v2, v5}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-direct {p0, v1, v2, v3, v3}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->inflateButtons([Ljava/lang/String;Landroid/view/ViewGroup;ZZ)V

    .line 267
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mHorizontal:Landroid/widget/FrameLayout;

    sget v2, Lcom/android/systemui/R$id;->center_group:I

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-direct {p0, v4, v1, v0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->inflateButtons([Ljava/lang/String;Landroid/view/ViewGroup;ZZ)V

    .line 269
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mVertical:Landroid/widget/FrameLayout;

    sget v2, Lcom/android/systemui/R$id;->center_group:I

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-direct {p0, v4, v1, v3, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->inflateButtons([Ljava/lang/String;Landroid/view/ViewGroup;ZZ)V

    .line 272
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mHorizontal:Landroid/widget/FrameLayout;

    sget v2, Lcom/android/systemui/R$id;->ends_group:I

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->addGravitySpacer(Landroid/widget/LinearLayout;)V

    .line 273
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mVertical:Landroid/widget/FrameLayout;

    sget v2, Lcom/android/systemui/R$id;->ends_group:I

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->addGravitySpacer(Landroid/widget/LinearLayout;)V

    .line 275
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mHorizontal:Landroid/widget/FrameLayout;

    sget v2, Lcom/android/systemui/R$id;->ends_group:I

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-direct {p0, p1, v1, v0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->inflateButtons([Ljava/lang/String;Landroid/view/ViewGroup;ZZ)V

    .line 277
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mVertical:Landroid/widget/FrameLayout;

    sget v2, Lcom/android/systemui/R$id;->ends_group:I

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-direct {p0, p1, v1, v3, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->inflateButtons([Ljava/lang/String;Landroid/view/ViewGroup;ZZ)V

    .line 280
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->updateButtonDispatchersCurrentView()V

    return-void
.end method

.method public isInMBackButtonArea(Landroid/view/MotionEvent;Z)Z
    .registers 8

    .line 500
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mNavBarMode:I

    invoke-static {v0}, Lcom/flyme/systemui/statusbar/utils/MBackUtils;->isMBackMode(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    :cond_a
    const/4 v0, 0x2

    new-array v0, v0, [I

    if-nez p2, :cond_18

    .line 506
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mHorizontal:Landroid/widget/FrameLayout;

    sget p2, Lcom/android/systemui/R$id;->center_group:I

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    goto :goto_20

    .line 508
    :cond_18
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mVertical:Landroid/widget/FrameLayout;

    sget p2, Lcom/android/systemui/R$id;->center_group:I

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    :goto_20
    if-nez p0, :cond_23

    return v1

    .line 513
    :cond_23
    sget p2, Lcom/android/systemui/R$id;->mback:I

    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-nez p0, :cond_2c

    return v1

    .line 517
    :cond_2c
    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 518
    aget p2, v0, v1

    const/4 v2, 0x1

    .line 519
    aget v0, v0, v2

    .line 520
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    int-to-float v4, p2

    cmpg-float v3, v3, v4

    if-ltz v3, :cond_63

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr p2, v4

    int-to-float p2, p2

    cmpl-float p2, v3, p2

    if-gtz p2, :cond_63

    .line 521
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    int-to-float v3, v0

    cmpg-float p2, p2, v3

    if-ltz p2, :cond_63

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    add-int/2addr v0, p0

    int-to-float p0, v0

    cmpl-float p0, p1, p0

    if-gtz p0, :cond_63

    move v1, v2

    :cond_63
    return v1
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .line 159
    const-class v0, Lcom/android/systemui/statusbar/phone/NavigationModeController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/NavigationModeController;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/NavigationModeController;->removeListener(Lcom/android/systemui/statusbar/phone/NavigationModeController$ModeChangedListener;)V

    .line 160
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    return-void
.end method

.method protected onFinishInflate()V
    .registers 2

    .line 122
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 123
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->inflateChildren()V

    .line 124
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->clearViews()V

    .line 125
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->getDefaultLayout()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->inflateLayout(Ljava/lang/String;)V

    return-void
.end method

.method public onLikelyDefaultLayoutChange()V
    .registers 3

    .line 173
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mUsingCustomLayout:Z

    if-eqz v0, :cond_5

    return-void

    .line 176
    :cond_5
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->getDefaultLayout()Ljava/lang/String;

    move-result-object v0

    .line 177
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mCurrentLayout:Ljava/lang/String;

    invoke-static {v1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 178
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->clearViews()V

    .line 179
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->inflateLayout(Ljava/lang/String;)V

    :cond_17
    return-void
.end method

.method public onNavigationModeChanged(I)V
    .registers 2

    .line 153
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mNavBarMode:I

    .line 154
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->onLikelyDefaultLayoutChange()V

    return-void
.end method

.method setAlternativeOrder(Z)V
    .registers 3

    .line 207
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mAlternativeOrder:Z

    if-eq p1, v0, :cond_9

    .line 208
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mAlternativeOrder:Z

    .line 209
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->updateAlternativeOrder()V

    :cond_9
    return-void
.end method

.method public setButtonDispatchers(Landroid/util/SparseArray;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/android/systemui/statusbar/phone/ButtonDispatcher;",
            ">;)V"
        }
    .end annotation

    .line 184
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mButtonDispatchers:Landroid/util/SparseArray;

    const/4 v0, 0x0

    .line 185
    :goto_3
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_15

    .line 186
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->initiallyFill(Lcom/android/systemui/statusbar/phone/ButtonDispatcher;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_15
    return-void
.end method

.method setVertical(Z)V
    .registers 3

    .line 201
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mIsVertical:Z

    if-eq p1, v0, :cond_6

    .line 202
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mIsVertical:Z

    :cond_6
    return-void
.end method

.method updateButtonDispatchersCurrentView()V
    .registers 4

    .line 191
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mButtonDispatchers:Landroid/util/SparseArray;

    if-eqz v0, :cond_24

    .line 192
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mIsVertical:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mVertical:Landroid/widget/FrameLayout;

    goto :goto_d

    :cond_b
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mHorizontal:Landroid/widget/FrameLayout;

    :goto_d
    const/4 v1, 0x0

    .line 193
    :goto_e
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mButtonDispatchers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_24

    .line 194
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mButtonDispatchers:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    .line 195
    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setCurrentView(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_24
    return-void
.end method
