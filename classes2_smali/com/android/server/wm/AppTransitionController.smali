.class public Lcom/android/server/wm/AppTransitionController;
.super Ljava/lang/Object;
.source "AppTransitionController.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WindowManager"


# instance fields
.field private final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field private mRemoteAnimationDefinition:Landroid/view/RemoteAnimationDefinition;

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private final mTempTransitionReasons:Landroid/util/SparseIntArray;

.field private final mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V
    .registers 4

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/AppTransitionController;->mRemoteAnimationDefinition:Landroid/view/RemoteAnimationDefinition;

    .line 84
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AppTransitionController;->mTempTransitionReasons:Landroid/util/SparseIntArray;

    .line 87
    iput-object p1, p0, Lcom/android/server/wm/AppTransitionController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 88
    iput-object p2, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 89
    iget-object p1, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object p1, p1, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    iput-object p1, p0, Lcom/android/server/wm/AppTransitionController;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    .line 90
    return-void
.end method

.method private canBeWallpaperTarget(Landroid/util/ArraySet;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;)Z"
        }
    .end annotation

    .line 686
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_6
    if-ltz v0, :cond_18

    .line 687
    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowToken;->windowsCanBeWallpaperTarget()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 688
    return v1

    .line 686
    :cond_15
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 691
    :cond_18
    const/4 p1, 0x0

    return p1
.end method

.method private static collectActivityTypes(Landroid/util/ArraySet;Landroid/util/ArraySet;Landroid/util/ArraySet;)Landroid/util/ArraySet;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;)",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 301
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 302
    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_b
    if-ltz v1, :cond_21

    .line 303
    invoke-virtual {p0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowToken;->getActivityType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 302
    add-int/lit8 v1, v1, -0x1

    goto :goto_b

    .line 305
    :cond_21
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    :goto_27
    if-ltz p0, :cond_3d

    .line 306
    invoke-virtual {p1, p0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->getActivityType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 305
    add-int/lit8 p0, p0, -0x1

    goto :goto_27

    .line 308
    :cond_3d
    invoke-virtual {p2}, Landroid/util/ArraySet;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    :goto_43
    if-ltz p0, :cond_59

    .line 309
    invoke-virtual {p2, p0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {p1}, Lcom/android/server/wm/AppWindowToken;->getActivityType()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 308
    add-int/lit8 p0, p0, -0x1

    goto :goto_43

    .line 311
    :cond_59
    return-object v0
.end method

.method private containsVoiceInteraction(Landroid/util/ArraySet;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;)Z"
        }
    .end annotation

    .line 338
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_6
    if-ltz v0, :cond_16

    .line 339
    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/AppWindowToken;

    iget-boolean v2, v2, Lcom/android/server/wm/AppWindowToken;->mVoiceInteraction:Z

    if-eqz v2, :cond_13

    .line 340
    return v1

    .line 338
    :cond_13
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 343
    :cond_16
    const/4 p1, 0x0

    return p1
.end method

.method private findAnimLayoutParamsToken(ILandroid/util/ArraySet;)Lcom/android/server/wm/AppWindowToken;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/android/server/wm/AppWindowToken;"
        }
    .end annotation

    .line 275
    iget-object v0, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    .line 276
    iget-object v1, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    .line 277
    iget-object v2, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mChangingApps:Landroid/util/ArraySet;

    .line 280
    new-instance v3, Lcom/android/server/wm/-$$Lambda$AppTransitionController$8YGmb6SLwBYKFynbflJxHTb_FOY;

    invoke-direct {v3, p1, p2}, Lcom/android/server/wm/-$$Lambda$AppTransitionController$8YGmb6SLwBYKFynbflJxHTb_FOY;-><init>(ILandroid/util/ArraySet;)V

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wm/AppTransitionController;->lookForHighestTokenWithFilter(Landroid/util/ArraySet;Landroid/util/ArraySet;Landroid/util/ArraySet;Ljava/util/function/Predicate;)Lcom/android/server/wm/AppWindowToken;

    move-result-object p1

    .line 283
    if-eqz p1, :cond_18

    .line 284
    return-object p1

    .line 286
    :cond_18
    sget-object p1, Lcom/android/server/wm/-$$Lambda$AppTransitionController$j4jrKo6PKtYRjRfPVQMMiQB02jg;->INSTANCE:Lcom/android/server/wm/-$$Lambda$AppTransitionController$j4jrKo6PKtYRjRfPVQMMiQB02jg;

    invoke-static {v0, v1, v2, p1}, Lcom/android/server/wm/AppTransitionController;->lookForHighestTokenWithFilter(Landroid/util/ArraySet;Landroid/util/ArraySet;Landroid/util/ArraySet;Ljava/util/function/Predicate;)Lcom/android/server/wm/AppWindowToken;

    move-result-object p1

    .line 288
    if-eqz p1, :cond_21

    .line 289
    return-object p1

    .line 291
    :cond_21
    sget-object p1, Lcom/android/server/wm/-$$Lambda$AppTransitionController$yGwiFQ9RJp9S5iyAFkkAEZEkgXY;->INSTANCE:Lcom/android/server/wm/-$$Lambda$AppTransitionController$yGwiFQ9RJp9S5iyAFkkAEZEkgXY;

    invoke-static {v0, v1, v2, p1}, Lcom/android/server/wm/AppTransitionController;->lookForHighestTokenWithFilter(Landroid/util/ArraySet;Landroid/util/ArraySet;Landroid/util/ArraySet;Ljava/util/function/Predicate;)Lcom/android/server/wm/AppWindowToken;

    move-result-object p1

    return-object p1
.end method

.method private static getAnimLp(Lcom/android/server/wm/AppWindowToken;)Landroid/view/WindowManager$LayoutParams;
    .registers 2

    .line 229
    const/4 v0, 0x0

    if-eqz p0, :cond_8

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object p0

    goto :goto_9

    :cond_8
    move-object p0, v0

    .line 230
    :goto_9
    if-eqz p0, :cond_d

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    :cond_d
    return-object v0
.end method

.method private getTopApp(Landroid/util/ArraySet;Z)Lcom/android/server/wm/AppWindowToken;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;Z)",
            "Lcom/android/server/wm/AppWindowToken;"
        }
    .end annotation

    .line 703
    nop

    .line 704
    nop

    .line 705
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/high16 v1, -0x80000000

    const/4 v2, 0x0

    :goto_b
    if-ltz v0, :cond_28

    .line 706
    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/AppWindowToken;

    .line 707
    if-eqz p2, :cond_1c

    invoke-virtual {v3}, Lcom/android/server/wm/AppWindowToken;->isHidden()Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 708
    goto :goto_25

    .line 710
    :cond_1c
    invoke-virtual {v3}, Lcom/android/server/wm/AppWindowToken;->getPrefixOrderIndex()I

    move-result v4

    .line 711
    if-le v4, v1, :cond_25

    .line 712
    nop

    .line 713
    move-object v2, v3

    move v1, v4

    .line 705
    :cond_25
    :goto_25
    add-int/lit8 v0, v0, -0x1

    goto :goto_b

    .line 716
    :cond_28
    return-object v2
.end method

.method private handleChangingApps(ILandroid/view/WindowManager$LayoutParams;Z)V
    .registers 10

    .line 409
    const-string p2, "handleChangingApps"

    iget-object p3, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object p3, p3, Lcom/android/server/wm/DisplayContent;->mChangingApps:Landroid/util/ArraySet;

    .line 410
    invoke-virtual {p3}, Landroid/util/ArraySet;->size()I

    move-result v0

    .line 411
    const/4 v1, 0x0

    move v2, v1

    :goto_c
    if-ge v2, v0, :cond_37

    .line 412
    invoke-virtual {p3, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/AppWindowToken;

    .line 414
    invoke-virtual {v3}, Lcom/android/server/wm/AppWindowToken;->cancelAnimationOnly()V

    .line 415
    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v3, v4, p1, v5, v1}, Lcom/android/server/wm/AppWindowToken;->applyAnimationLocked(Landroid/view/WindowManager$LayoutParams;IZZ)Z

    .line 416
    invoke-virtual {v3}, Lcom/android/server/wm/AppWindowToken;->updateReportedVisibilityLocked()V

    .line 417
    iget-object v4, p0, Lcom/android/server/wm/AppTransitionController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->openSurfaceTransaction()V

    .line 419
    :try_start_24
    invoke-virtual {v3}, Lcom/android/server/wm/AppWindowToken;->showAllWindowsLocked()V
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_30

    .line 421
    iget-object v3, p0, Lcom/android/server/wm/AppTransitionController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3, p2}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    .line 422
    nop

    .line 411
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 421
    :catchall_30
    move-exception p1

    iget-object p3, p0, Lcom/android/server/wm/AppTransitionController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p3, p2}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    throw p1

    .line 424
    :cond_37
    return-void
.end method

.method private handleClosingApps(ILandroid/view/WindowManager$LayoutParams;Z)V
    .registers 15

    .line 381
    iget-object v0, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    .line 382
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v1

    .line 383
    const/4 v2, 0x0

    move v3, v2

    :goto_a
    if-ge v3, v1, :cond_40

    .line 384
    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/AppWindowToken;

    .line 389
    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v5, v4

    move-object v6, p2

    move v8, p1

    move v10, p3

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/wm/AppWindowToken;->commitVisibility(Landroid/view/WindowManager$LayoutParams;ZIZZ)Z

    .line 390
    invoke-virtual {v4}, Lcom/android/server/wm/AppWindowToken;->updateReportedVisibilityLocked()V

    .line 394
    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    .line 395
    iput-boolean v2, v4, Lcom/android/server/wm/AppWindowToken;->deferClearAllDrawn:Z

    .line 398
    iget-object v5, v4, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    if-eqz v5, :cond_30

    iget-object v5, v4, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    iget-boolean v5, v5, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    if-nez v5, :cond_30

    .line 399
    invoke-virtual {v4}, Lcom/android/server/wm/AppWindowToken;->removeStartingWindow()V

    .line 402
    :cond_30
    iget-object v5, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v5, v5, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v5}, Lcom/android/server/wm/AppTransition;->isNextAppTransitionThumbnailDown()Z

    move-result v5

    if-eqz v5, :cond_3d

    .line 403
    invoke-virtual {v4}, Lcom/android/server/wm/AppWindowToken;->attachThumbnailAnimation()V

    .line 383
    :cond_3d
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 406
    :cond_40
    return-void
.end method

.method private handleNonAppWindowsInTransition(II)V
    .registers 8

    .line 427
    const/16 v0, 0x14

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_2a

    .line 428
    and-int/lit8 v3, p2, 0x4

    if-eqz v3, :cond_2a

    and-int/lit8 v3, p2, 0x2

    if-nez v3, :cond_2a

    and-int/lit8 v3, p2, 0x8

    if-nez v3, :cond_2a

    .line 431
    iget-object v3, p0, Lcom/android/server/wm/AppTransitionController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    and-int/lit8 v4, p2, 0x1

    if-eqz v4, :cond_1c

    move v4, v2

    goto :goto_1d

    :cond_1c
    move v4, v1

    :goto_1d
    invoke-interface {v3, v4}, Lcom/android/server/policy/WindowManagerPolicy;->createKeyguardWallpaperExit(Z)Landroid/view/animation/Animation;

    move-result-object v3

    .line 433
    if-eqz v3, :cond_2a

    .line 434
    iget-object v4, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v4, v4, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v4, v3}, Lcom/android/server/wm/WallpaperController;->startWallpaperAnimation(Landroid/view/animation/Animation;)V

    .line 438
    :cond_2a
    const/16 v3, 0x15

    if-eq p1, v0, :cond_30

    if-ne p1, v3, :cond_46

    .line 440
    :cond_30
    iget-object v0, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-ne p1, v3, :cond_36

    move p1, v2

    goto :goto_37

    :cond_36
    move p1, v1

    :goto_37
    and-int/lit8 v3, p2, 0x1

    if-eqz v3, :cond_3d

    move v3, v2

    goto :goto_3e

    :cond_3d
    move v3, v1

    :goto_3e
    and-int/lit8 p2, p2, 0x8

    if-eqz p2, :cond_43

    move v1, v2

    :cond_43
    invoke-virtual {v0, p1, v3, v1}, Lcom/android/server/wm/DisplayContent;->startKeyguardExitOnNonAppWindows(ZZZ)V

    .line 445
    :cond_46
    return-void
.end method

.method private handleOpeningApps(ILandroid/view/WindowManager$LayoutParams;Z)V
    .registers 16

    .line 347
    const-string v0, "handleAppTransitionReady"

    iget-object v1, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    .line 348
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v2

    .line 349
    const/4 v3, 0x0

    move v4, v3

    :goto_c
    if-ge v4, v2, :cond_61

    .line 350
    invoke-virtual {v1, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/AppWindowToken;

    .line 353
    const/4 v8, 0x1

    const/4 v10, 0x0

    move-object v6, v5

    move-object v7, p2

    move v9, p1

    move v11, p3

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/wm/AppWindowToken;->commitVisibility(Landroid/view/WindowManager$LayoutParams;ZIZZ)Z

    move-result v6

    if-nez v6, :cond_29

    .line 357
    iget-object v6, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v6, v6, Lcom/android/server/wm/DisplayContent;->mNoAnimationNotifyOnTransitionFinished:Ljava/util/List;

    iget-object v7, v5, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 359
    :cond_29
    invoke-virtual {v5}, Lcom/android/server/wm/AppWindowToken;->updateReportedVisibilityLocked()V

    .line 360
    iput-boolean v3, v5, Lcom/android/server/wm/AppWindowToken;->waitingToShow:Z

    .line 363
    iget-object v6, p0, Lcom/android/server/wm/AppTransitionController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowManagerService;->openSurfaceTransaction()V

    .line 365
    :try_start_33
    invoke-virtual {v5}, Lcom/android/server/wm/AppWindowToken;->showAllWindowsLocked()V
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_5a

    .line 367
    iget-object v6, p0, Lcom/android/server/wm/AppTransitionController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v6, v0}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    .line 370
    nop

    .line 372
    iget-object v6, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v6, v6, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v6}, Lcom/android/server/wm/AppTransition;->isNextAppTransitionThumbnailUp()Z

    move-result v6

    if-eqz v6, :cond_4a

    .line 373
    invoke-virtual {v5}, Lcom/android/server/wm/AppWindowToken;->attachThumbnailAnimation()V

    goto :goto_57

    .line 374
    :cond_4a
    iget-object v6, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v6, v6, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v6}, Lcom/android/server/wm/AppTransition;->isNextAppTransitionOpenCrossProfileApps()Z

    move-result v6

    if-eqz v6, :cond_57

    .line 375
    invoke-virtual {v5}, Lcom/android/server/wm/AppWindowToken;->attachCrossProfileAppsThumbnailAnimation()V

    .line 349
    :cond_57
    :goto_57
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    .line 367
    :catchall_5a
    move-exception p1

    iget-object p2, p0, Lcom/android/server/wm/AppTransitionController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p2, v0}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    throw p1

    .line 378
    :cond_61
    return-void
.end method

.method static synthetic lambda$findAnimLayoutParamsToken$1(ILandroid/util/ArraySet;Lcom/android/server/wm/AppWindowToken;)Z
    .registers 4

    .line 281
    invoke-virtual {p2}, Lcom/android/server/wm/AppWindowToken;->getRemoteAnimationDefinition()Landroid/view/RemoteAnimationDefinition;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 282
    invoke-virtual {p2}, Lcom/android/server/wm/AppWindowToken;->getRemoteAnimationDefinition()Landroid/view/RemoteAnimationDefinition;

    move-result-object p2

    invoke-virtual {p2, p0, p1}, Landroid/view/RemoteAnimationDefinition;->hasTransition(ILandroid/util/ArraySet;)Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    .line 281
    :goto_13
    return p0
.end method

.method static synthetic lambda$findAnimLayoutParamsToken$2(Lcom/android/server/wm/AppWindowToken;)Z
    .registers 2

    .line 287
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->fillsParent()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method static synthetic lambda$findAnimLayoutParamsToken$3(Lcom/android/server/wm/AppWindowToken;)Z
    .registers 1

    .line 292
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object p0

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method private static lookForHighestTokenWithFilter(Landroid/util/ArraySet;Landroid/util/ArraySet;Landroid/util/ArraySet;Ljava/util/function/Predicate;)Lcom/android/server/wm/AppWindowToken;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;)",
            "Lcom/android/server/wm/AppWindowToken;"
        }
    .end annotation

    .line 317
    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result v0

    .line 318
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v1

    add-int/2addr v1, v0

    .line 319
    invoke-virtual {p2}, Landroid/util/ArraySet;->size()I

    move-result v2

    add-int/2addr v2, v1

    .line 320
    nop

    .line 321
    nop

    .line 322
    const/high16 v3, -0x80000000

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_14
    if-ge v5, v2, :cond_44

    .line 323
    if-ge v5, v0, :cond_1f

    .line 324
    invoke-virtual {p0, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/AppWindowToken;

    goto :goto_32

    .line 325
    :cond_1f
    if-ge v5, v1, :cond_2a

    .line 326
    sub-int v6, v5, v0

    invoke-virtual {p1, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/AppWindowToken;

    goto :goto_32

    .line 327
    :cond_2a
    sub-int v6, v5, v1

    invoke-virtual {p2, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/AppWindowToken;

    .line 328
    :goto_32
    invoke-virtual {v6}, Lcom/android/server/wm/AppWindowToken;->getPrefixOrderIndex()I

    move-result v7

    .line 329
    invoke-interface {p3, v6}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_41

    if-le v7, v3, :cond_41

    .line 330
    nop

    .line 331
    move-object v4, v6

    move v3, v7

    .line 322
    :cond_41
    add-int/lit8 v5, v5, 0x1

    goto :goto_14

    .line 334
    :cond_44
    return-object v4
.end method

.method private maybeUpdateTransitToWallpaper(IZZ)I
    .registers 11

    .line 529
    if-eqz p1, :cond_ae

    const/16 v0, 0x1a

    if-eq p1, v0, :cond_ae

    const/16 v0, 0x13

    if-eq p1, v0, :cond_ae

    .line 531
    invoke-static {p1}, Lcom/android/server/wm/AppTransition;->isChangeTransit(I)Z

    move-result v0

    if-eqz v0, :cond_12

    goto/16 :goto_ae

    .line 535
    :cond_12
    iget-object v0, p0, Lcom/android/server/wm/AppTransitionController;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v0}, Lcom/android/server/wm/WallpaperController;->getWallpaperTarget()Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 536
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_27

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v4, 0x100000

    and-int/2addr v3, v4

    if-eqz v3, :cond_27

    move v3, v1

    goto :goto_28

    :cond_27
    move v3, v2

    .line 541
    :goto_28
    iget-object v4, p0, Lcom/android/server/wm/AppTransitionController;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v4}, Lcom/android/server/wm/WallpaperController;->isWallpaperTargetAnimating()Z

    move-result v4

    if-nez v4, :cond_35

    if-nez v3, :cond_33

    goto :goto_35

    .line 543
    :cond_33
    move-object v3, v0

    goto :goto_36

    .line 542
    :cond_35
    :goto_35
    const/4 v3, 0x0

    .line 544
    :goto_36
    iget-object v4, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v4, v4, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    .line 545
    iget-object v5, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v5, v5, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    .line 546
    iget-object v6, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v6, v6, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-direct {p0, v6, v2}, Lcom/android/server/wm/AppTransitionController;->getTopApp(Landroid/util/ArraySet;Z)Lcom/android/server/wm/AppWindowToken;

    move-result-object v2

    .line 548
    iget-object v6, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v6, v6, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    invoke-direct {p0, v6, v1}, Lcom/android/server/wm/AppTransitionController;->getTopApp(Landroid/util/ArraySet;Z)Lcom/android/server/wm/AppWindowToken;

    move-result-object v1

    .line 551
    invoke-direct {p0, v4}, Lcom/android/server/wm/AppTransitionController;->canBeWallpaperTarget(Landroid/util/ArraySet;)Z

    move-result v6

    .line 558
    if-eqz v6, :cond_5b

    const/16 v6, 0x14

    if-ne p1, v6, :cond_5b

    .line 559
    const/16 p1, 0x15

    goto :goto_ad

    .line 565
    :cond_5b
    invoke-static {p1}, Lcom/android/server/wm/AppTransition;->isKeyguardGoingAwayTransit(I)Z

    move-result v6

    if-nez v6, :cond_ad

    .line 566
    if-eqz p3, :cond_70

    if-eqz p2, :cond_70

    .line 568
    packed-switch p1, :pswitch_data_b0

    goto :goto_6f

    .line 577
    :pswitch_69  #0x7, 0x9, 0xb
    const/16 p1, 0xf

    goto :goto_6f

    .line 572
    :pswitch_6c  #0x6, 0x8, 0xa
    const/16 p1, 0xe

    .line 573
    nop

    .line 578
    :goto_6f
    goto :goto_ad

    .line 582
    :cond_70
    if-eqz v3, :cond_93

    iget-object p2, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object p2, p2, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {p2}, Landroid/util/ArraySet;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_93

    iget-object p2, v3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 583
    invoke-virtual {v4, p2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_93

    iget-object p2, v3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 584
    invoke-virtual {v5, p2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_93

    iget-object p2, v3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-ne v1, p2, :cond_93

    .line 587
    const/16 p1, 0xc

    goto :goto_ad

    .line 590
    :cond_93
    if-eqz v0, :cond_ad

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result p2

    if-eqz p2, :cond_ad

    iget-object p2, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 591
    invoke-virtual {v4, p2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_ad

    iget-object p2, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-ne v2, p2, :cond_ad

    const/16 p2, 0x19

    if-eq p1, p2, :cond_ad

    .line 596
    const/16 p1, 0xd

    .line 601
    :cond_ad
    :goto_ad
    return p1

    .line 532
    :cond_ae
    :goto_ae
    return p1

    nop

    :pswitch_data_b0
    .packed-switch 0x6
        :pswitch_6c  #00000006
        :pswitch_69  #00000007
        :pswitch_6c  #00000008
        :pswitch_69  #00000009
        :pswitch_6c  #0000000a
        :pswitch_69  #0000000b
    .end packed-switch
.end method

.method private overrideWithRemoteAnimationIfSet(Lcom/android/server/wm/AppWindowToken;ILandroid/util/ArraySet;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/AppWindowToken;",
            "I",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 254
    const/16 v0, 0x1a

    if-ne p2, v0, :cond_5

    .line 256
    return-void

    .line 258
    :cond_5
    if-nez p1, :cond_8

    .line 259
    return-void

    .line 261
    :cond_8
    nop

    .line 262
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/AppTransitionController;->getRemoteAnimationOverride(Lcom/android/server/wm/AppWindowToken;ILandroid/util/ArraySet;)Landroid/view/RemoteAnimationAdapter;

    move-result-object p2

    .line 263
    if-eqz p2, :cond_18

    .line 264
    invoke-virtual {p1}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p1

    iget-object p1, p1, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {p1, p2}, Lcom/android/server/wm/AppTransition;->overridePendingAppTransitionRemote(Landroid/view/RemoteAnimationAdapter;)V

    .line 267
    :cond_18
    return-void
.end method

.method private processApplicationsAnimatingInPlace(I)V
    .registers 5

    .line 720
    const/16 v0, 0x11

    if-ne p1, v0, :cond_1c

    .line 722
    iget-object v0, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->findFocusedWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 723
    if-eqz v0, :cond_1c

    .line 724
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 727
    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->cancelAnimation()V

    .line 728
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, v2}, Lcom/android/server/wm/AppWindowToken;->applyAnimationLocked(Landroid/view/WindowManager$LayoutParams;IZZ)Z

    .line 729
    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->updateReportedVisibilityLocked()V

    .line 730
    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->showAllWindowsLocked()V

    .line 733
    :cond_1c
    return-void
.end method

.method private transitionGoodToGo(Landroid/util/ArraySet;Landroid/util/SparseIntArray;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;",
            "Landroid/util/SparseIntArray;",
            ")Z"
        }
    .end annotation

    .line 452
    iget-object v0, p0, Lcom/android/server/wm/AppTransitionController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    .line 453
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowAnimator;->getScreenRotationAnimationLocked(I)Lcom/android/server/wm/ScreenRotationAnimation;

    move-result-object v0

    .line 456
    iget-object v2, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v2}, Lcom/android/server/wm/AppTransition;->isTimeout()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_97

    .line 464
    if-eqz v0, :cond_29

    invoke-virtual {v0}, Lcom/android/server/wm/ScreenRotationAnimation;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/android/server/wm/AppTransitionController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 465
    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->rotationNeedsUpdate()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 469
    return v1

    .line 471
    :cond_29
    move v0, v1

    :goto_2a
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-ge v0, v2, :cond_69

    .line 472
    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/AppWindowToken;

    .line 482
    iget-boolean v4, v2, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    if-eqz v4, :cond_42

    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowToken;->isRelaunching()Z

    move-result v4

    if-nez v4, :cond_42

    move v4, v3

    goto :goto_43

    :cond_42
    move v4, v1

    .line 483
    :goto_43
    if-nez v4, :cond_4e

    iget-boolean v5, v2, Lcom/android/server/wm/AppWindowToken;->startingDisplayed:Z

    if-nez v5, :cond_4e

    iget-boolean v5, v2, Lcom/android/server/wm/AppWindowToken;->startingMoved:Z

    if-nez v5, :cond_4e

    .line 484
    return v1

    .line 486
    :cond_4e
    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowToken;->getWindowingMode()I

    move-result v5

    .line 487
    if-eqz v4, :cond_59

    .line 488
    const/4 v2, 0x2

    invoke-virtual {p2, v5, v2}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_66

    .line 490
    :cond_59
    nop

    .line 491
    iget-object v2, v2, Lcom/android/server/wm/AppWindowToken;->mStartingData:Lcom/android/server/wm/StartingData;

    instance-of v2, v2, Lcom/android/server/wm/SplashScreenStartingData;

    if-eqz v2, :cond_62

    .line 492
    move v2, v3

    goto :goto_63

    .line 493
    :cond_62
    const/4 v2, 0x4

    .line 490
    :goto_63
    invoke-virtual {p2, v5, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 471
    :goto_66
    add-int/lit8 v0, v0, 0x1

    goto :goto_2a

    .line 498
    :cond_69
    iget-object p1, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object p1, p1, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {p1}, Lcom/android/server/wm/AppTransition;->isFetchingAppTransitionsSpecs()Z

    move-result p1

    if-eqz p1, :cond_74

    .line 500
    return v1

    .line 503
    :cond_74
    iget-object p1, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object p1, p1, Lcom/android/server/wm/DisplayContent;->mUnknownAppVisibilityController:Lcom/android/server/wm/UnknownAppVisibilityController;

    invoke-virtual {p1}, Lcom/android/server/wm/UnknownAppVisibilityController;->allResolved()Z

    move-result p1

    if-nez p1, :cond_7f

    .line 508
    return v1

    .line 512
    :cond_7f
    iget-object p1, p0, Lcom/android/server/wm/AppTransitionController;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {p1}, Lcom/android/server/wm/WallpaperController;->isWallpaperVisible()Z

    move-result p1

    if-eqz p1, :cond_92

    iget-object p1, p0, Lcom/android/server/wm/AppTransitionController;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    .line 513
    invoke-virtual {p1}, Lcom/android/server/wm/WallpaperController;->wallpaperTransitionReady()Z

    move-result p1

    if-eqz p1, :cond_90

    goto :goto_92

    :cond_90
    move p1, v1

    goto :goto_93

    :cond_92
    :goto_92
    move p1, v3

    .line 514
    :goto_93
    if-eqz p1, :cond_96

    .line 515
    return v3

    .line 517
    :cond_96
    return v1

    .line 519
    :cond_97
    return v3
.end method


# virtual methods
.method getRemoteAnimationOverride(Lcom/android/server/wm/AppWindowToken;ILandroid/util/ArraySet;)Landroid/view/RemoteAnimationAdapter;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/AppWindowToken;",
            "I",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/view/RemoteAnimationAdapter;"
        }
    .end annotation

    .line 235
    invoke-virtual {p1}, Lcom/android/server/wm/AppWindowToken;->getRemoteAnimationDefinition()Landroid/view/RemoteAnimationDefinition;

    move-result-object p1

    .line 236
    if-eqz p1, :cond_d

    .line 237
    invoke-virtual {p1, p2, p3}, Landroid/view/RemoteAnimationDefinition;->getAdapter(ILandroid/util/ArraySet;)Landroid/view/RemoteAnimationAdapter;

    move-result-object p1

    .line 238
    if-eqz p1, :cond_d

    .line 239
    return-object p1

    .line 242
    :cond_d
    iget-object p1, p0, Lcom/android/server/wm/AppTransitionController;->mRemoteAnimationDefinition:Landroid/view/RemoteAnimationDefinition;

    if-nez p1, :cond_13

    .line 243
    const/4 p1, 0x0

    return-object p1

    .line 245
    :cond_13
    invoke-virtual {p1, p2, p3}, Landroid/view/RemoteAnimationDefinition;->getAdapter(ILandroid/util/ArraySet;)Landroid/view/RemoteAnimationAdapter;

    move-result-object p1

    return-object p1
.end method

.method handleAppTransitionReady()V
    .registers 13

    .line 100
    iget-object v0, p0, Lcom/android/server/wm/AppTransitionController;->mTempTransitionReasons:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 101
    iget-object v0, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    iget-object v1, p0, Lcom/android/server/wm/AppTransitionController;->mTempTransitionReasons:Landroid/util/SparseIntArray;

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/AppTransitionController;->transitionGoodToGo(Landroid/util/ArraySet;Landroid/util/SparseIntArray;)Z

    move-result v0

    if-eqz v0, :cond_1c7

    iget-object v0, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mChangingApps:Landroid/util/ArraySet;

    iget-object v1, p0, Lcom/android/server/wm/AppTransitionController;->mTempTransitionReasons:Landroid/util/SparseIntArray;

    .line 102
    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/AppTransitionController;->transitionGoodToGo(Landroid/util/ArraySet;Landroid/util/SparseIntArray;)Z

    move-result v0

    if-nez v0, :cond_1f

    goto/16 :goto_1c7

    .line 105
    :cond_1f
    const-wide/16 v0, 0x20

    const-string v2, "AppTransitionReady"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 108
    iget-object v2, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    .line 109
    invoke-virtual {v2}, Lcom/android/server/wm/AppTransition;->getAppTransition()I

    move-result v3

    .line 110
    iget-object v4, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-boolean v4, v4, Lcom/android/server/wm/DisplayContent;->mSkipAppTransitionAnimation:Z

    if-eqz v4, :cond_3b

    invoke-static {v3}, Lcom/android/server/wm/AppTransition;->isKeyguardGoingAwayTransit(I)Z

    move-result v4

    if-nez v4, :cond_3b

    .line 111
    const/4 v3, -0x1

    .line 113
    :cond_3b
    iget-object v4, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/android/server/wm/DisplayContent;->mSkipAppTransitionAnimation:Z

    .line 114
    iget-object v4, v4, Lcom/android/server/wm/DisplayContent;->mNoAnimationNotifyOnTransitionFinished:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 116
    invoke-virtual {v2}, Lcom/android/server/wm/AppTransition;->removeAppTransitionTimeoutCallbacks()V

    .line 118
    iget-object v4, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iput-boolean v5, v4, Lcom/android/server/wm/DisplayContent;->mWallpaperMayChange:Z

    .line 120
    iget-object v4, v4, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v4

    .line 121
    move v6, v5

    :goto_53
    if-ge v6, v4, :cond_65

    .line 126
    iget-object v7, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v7, v7, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v7, v6}, Landroid/util/ArraySet;->valueAtUnchecked(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v7}, Lcom/android/server/wm/AppWindowToken;->clearAnimatingFlags()V

    .line 121
    add-int/lit8 v6, v6, 0x1

    goto :goto_53

    .line 128
    :cond_65
    iget-object v4, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v4, v4, Lcom/android/server/wm/DisplayContent;->mChangingApps:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v4

    .line 129
    move v6, v5

    :goto_6e
    if-ge v6, v4, :cond_80

    .line 131
    iget-object v7, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v7, v7, Lcom/android/server/wm/DisplayContent;->mChangingApps:Landroid/util/ArraySet;

    invoke-virtual {v7, v6}, Landroid/util/ArraySet;->valueAtUnchecked(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v7}, Lcom/android/server/wm/AppWindowToken;->clearAnimatingFlags()V

    .line 129
    add-int/lit8 v6, v6, 0x1

    goto :goto_6e

    .line 137
    :cond_80
    iget-object v4, p0, Lcom/android/server/wm/AppTransitionController;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    iget-object v6, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v6, v6, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    iget-object v7, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v7, v7, Lcom/android/server/wm/DisplayContent;->mChangingApps:Landroid/util/ArraySet;

    invoke-virtual {v4, v6, v7}, Lcom/android/server/wm/WallpaperController;->adjustWallpaperWindowsForAppTransitionIfNeeded(Landroid/util/ArraySet;Landroid/util/ArraySet;)V

    .line 142
    iget-object v4, p0, Lcom/android/server/wm/AppTransitionController;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v4}, Lcom/android/server/wm/WallpaperController;->getWallpaperTarget()Lcom/android/server/wm/WindowState;

    move-result-object v4

    const/4 v6, 0x1

    if-eqz v4, :cond_98

    move v4, v6

    goto :goto_99

    :cond_98
    move v4, v5

    .line 143
    :goto_99
    iget-object v7, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v7, v7, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-direct {p0, v7}, Lcom/android/server/wm/AppTransitionController;->canBeWallpaperTarget(Landroid/util/ArraySet;)Z

    move-result v7

    if-eqz v7, :cond_a7

    if-eqz v4, :cond_a7

    move v7, v6

    goto :goto_a8

    :cond_a7
    move v7, v5

    .line 145
    :goto_a8
    iget-object v8, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v8, v8, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    invoke-direct {p0, v8}, Lcom/android/server/wm/AppTransitionController;->canBeWallpaperTarget(Landroid/util/ArraySet;)Z

    move-result v8

    if-eqz v8, :cond_b6

    if-eqz v4, :cond_b6

    move v4, v6

    goto :goto_b7

    :cond_b6
    move v4, v5

    .line 148
    :goto_b7
    invoke-virtual {p0, v3}, Lcom/android/server/wm/AppTransitionController;->maybeUpdateTransitToTranslucentAnim(I)I

    move-result v3

    .line 149
    invoke-direct {p0, v3, v7, v4}, Lcom/android/server/wm/AppTransitionController;->maybeUpdateTransitToWallpaper(IZZ)I

    move-result v3

    .line 156
    iget-object v4, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v4, v4, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    iget-object v7, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v7, v7, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    iget-object v8, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v8, v8, Lcom/android/server/wm/DisplayContent;->mChangingApps:Landroid/util/ArraySet;

    invoke-static {v4, v7, v8}, Lcom/android/server/wm/AppTransitionController;->collectActivityTypes(Landroid/util/ArraySet;Landroid/util/ArraySet;Landroid/util/ArraySet;)Landroid/util/ArraySet;

    move-result-object v4

    .line 158
    iget-object v7, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v7}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/wm/DisplayPolicy;->allowAppAnimationsLw()Z

    move-result v7

    .line 159
    const/4 v8, 0x0

    if-eqz v7, :cond_e1

    .line 160
    invoke-direct {p0, v3, v4}, Lcom/android/server/wm/AppTransitionController;->findAnimLayoutParamsToken(ILandroid/util/ArraySet;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v9

    goto :goto_e2

    .line 161
    :cond_e1
    move-object v9, v8

    .line 162
    :goto_e2
    if-eqz v7, :cond_ed

    .line 163
    iget-object v10, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v10, v10, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-direct {p0, v10, v5}, Lcom/android/server/wm/AppTransitionController;->getTopApp(Landroid/util/ArraySet;Z)Lcom/android/server/wm/AppWindowToken;

    move-result-object v10

    goto :goto_ee

    .line 164
    :cond_ed
    move-object v10, v8

    .line 165
    :goto_ee
    if-eqz v7, :cond_f9

    .line 166
    iget-object v11, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v11, v11, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    invoke-direct {p0, v11, v5}, Lcom/android/server/wm/AppTransitionController;->getTopApp(Landroid/util/ArraySet;Z)Lcom/android/server/wm/AppWindowToken;

    move-result-object v11

    goto :goto_fa

    .line 167
    :cond_f9
    move-object v11, v8

    .line 168
    :goto_fa
    if-eqz v7, :cond_105

    .line 169
    iget-object v7, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v7, v7, Lcom/android/server/wm/DisplayContent;->mChangingApps:Landroid/util/ArraySet;

    invoke-direct {p0, v7, v5}, Lcom/android/server/wm/AppTransitionController;->getTopApp(Landroid/util/ArraySet;Z)Lcom/android/server/wm/AppWindowToken;

    move-result-object v8

    goto :goto_106

    .line 170
    :cond_105
    nop

    .line 171
    :goto_106
    invoke-static {v9}, Lcom/android/server/wm/AppTransitionController;->getAnimLp(Lcom/android/server/wm/AppWindowToken;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v7

    .line 172
    invoke-direct {p0, v9, v3, v4}, Lcom/android/server/wm/AppTransitionController;->overrideWithRemoteAnimationIfSet(Lcom/android/server/wm/AppWindowToken;ILandroid/util/ArraySet;)V

    .line 174
    iget-object v4, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v4, v4, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-direct {p0, v4}, Lcom/android/server/wm/AppTransitionController;->containsVoiceInteraction(Landroid/util/ArraySet;)Z

    move-result v4

    if-nez v4, :cond_12b

    iget-object v4, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v4, v4, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    .line 175
    invoke-direct {p0, v4}, Lcom/android/server/wm/AppTransitionController;->containsVoiceInteraction(Landroid/util/ArraySet;)Z

    move-result v4

    if-nez v4, :cond_12b

    iget-object v4, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v4, v4, Lcom/android/server/wm/DisplayContent;->mChangingApps:Landroid/util/ArraySet;

    .line 176
    invoke-direct {p0, v4}, Lcom/android/server/wm/AppTransitionController;->containsVoiceInteraction(Landroid/util/ArraySet;)Z

    move-result v4

    if-eqz v4, :cond_12c

    :cond_12b
    move v5, v6

    .line 179
    :cond_12c
    iget-object v4, p0, Lcom/android/server/wm/AppTransitionController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mSurfaceAnimationRunner:Lcom/android/server/wm/SurfaceAnimationRunner;

    invoke-virtual {v4}, Lcom/android/server/wm/SurfaceAnimationRunner;->deferStartingAnimations()V

    .line 181
    :try_start_133
    invoke-direct {p0, v3}, Lcom/android/server/wm/AppTransitionController;->processApplicationsAnimatingInPlace(I)V

    .line 183
    invoke-direct {p0, v3, v7, v5}, Lcom/android/server/wm/AppTransitionController;->handleClosingApps(ILandroid/view/WindowManager$LayoutParams;Z)V

    .line 184
    invoke-direct {p0, v3, v7, v5}, Lcom/android/server/wm/AppTransitionController;->handleOpeningApps(ILandroid/view/WindowManager$LayoutParams;Z)V

    .line 185
    invoke-direct {p0, v3, v7, v5}, Lcom/android/server/wm/AppTransitionController;->handleChangingApps(ILandroid/view/WindowManager$LayoutParams;Z)V

    .line 187
    invoke-virtual {v2, v3, v10, v11, v8}, Lcom/android/server/wm/AppTransition;->setLastAppTransition(ILcom/android/server/wm/AppWindowToken;Lcom/android/server/wm/AppWindowToken;Lcom/android/server/wm/AppWindowToken;)V

    .line 190
    invoke-virtual {v2}, Lcom/android/server/wm/AppTransition;->getTransitFlags()I

    move-result v4

    .line 191
    iget-object v5, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v5, v5, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v2, v3, v10, v5}, Lcom/android/server/wm/AppTransition;->goodToGo(ILcom/android/server/wm/AppWindowToken;Landroid/util/ArraySet;)I

    move-result v5

    .line 193
    invoke-direct {p0, v3, v4}, Lcom/android/server/wm/AppTransitionController;->handleNonAppWindowsInTransition(II)V

    .line 194
    invoke-virtual {v2}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    .line 195
    invoke-virtual {v2}, Lcom/android/server/wm/AppTransition;->clear()V
    :try_end_157
    .catchall {:try_start_133 .. :try_end_157} :catchall_1be

    .line 197
    iget-object v2, p0, Lcom/android/server/wm/AppTransitionController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mSurfaceAnimationRunner:Lcom/android/server/wm/SurfaceAnimationRunner;

    invoke-virtual {v2}, Lcom/android/server/wm/SurfaceAnimationRunner;->continueStartingAnimations()V

    .line 198
    nop

    .line 200
    iget-object v2, p0, Lcom/android/server/wm/AppTransitionController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    iget-object v4, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2, v4}, Lcom/android/server/wm/TaskSnapshotController;->onTransitionStarting(Lcom/android/server/wm/DisplayContent;)V

    .line 202
    iget-object v2, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->clear()V

    .line 203
    iget-object v2, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->clear()V

    .line 204
    iget-object v2, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mChangingApps:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->clear()V

    .line 205
    iget-object v2, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mUnknownAppVisibilityController:Lcom/android/server/wm/UnknownAppVisibilityController;

    invoke-virtual {v2}, Lcom/android/server/wm/UnknownAppVisibilityController;->clear()V

    .line 209
    iget-object v2, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 211
    iget-object v2, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2, v6}, Lcom/android/server/wm/DisplayContent;->computeImeTarget(Z)Lcom/android/server/wm/WindowState;

    .line 213
    iget-object v2, p0, Lcom/android/server/wm/AppTransitionController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    iget-object v4, p0, Lcom/android/server/wm/AppTransitionController;->mTempTransitionReasons:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->clone()Landroid/util/SparseIntArray;

    move-result-object v4

    .line 214
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 213
    invoke-virtual {v2, v4, v7, v8}, Lcom/android/server/wm/ActivityTaskManagerInternal;->notifyAppTransitionStarting(Landroid/util/SparseIntArray;J)V

    .line 216
    const/16 v2, 0x1c

    if-ne v3, v2, :cond_1af

    .line 217
    iget-object v2, p0, Lcom/android/server/wm/AppTransitionController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    new-instance v3, Lcom/android/server/wm/-$$Lambda$AppTransitionController$wKDCdmYJWN9Qk9bjArILV5j7lEY;

    invoke-direct {v3, p0}, Lcom/android/server/wm/-$$Lambda$AppTransitionController$wKDCdmYJWN9Qk9bjArILV5j7lEY;-><init>(Lcom/android/server/wm/AppTransitionController;)V

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowAnimator;->addAfterPrepareSurfacesRunnable(Ljava/lang/Runnable;)V

    .line 222
    :cond_1af
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 224
    iget-object v0, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v1, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/lit8 v2, v5, 0x1

    or-int/lit8 v2, v2, 0x2

    or-int/2addr v1, v2

    iput v1, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 226
    return-void

    .line 197
    :catchall_1be
    move-exception v0

    iget-object v1, p0, Lcom/android/server/wm/AppTransitionController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mSurfaceAnimationRunner:Lcom/android/server/wm/SurfaceAnimationRunner;

    invoke-virtual {v1}, Lcom/android/server/wm/SurfaceAnimationRunner;->continueStartingAnimations()V

    throw v0

    .line 103
    :cond_1c7
    :goto_1c7
    return-void
.end method

.method isTransitWithinTask(ILcom/android/server/wm/Task;)Z
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 658
    const/4 v0, 0x0

    if-eqz p2, :cond_53

    iget-object v1, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mChangingApps:Landroid/util/ArraySet;

    .line 659
    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_e

    goto :goto_53

    .line 664
    :cond_e
    const/4 v1, 0x6

    if-eq p1, v1, :cond_19

    const/4 v1, 0x7

    if-eq p1, v1, :cond_19

    const/16 v1, 0x12

    if-eq p1, v1, :cond_19

    .line 668
    return v0

    .line 671
    :cond_19
    iget-object p1, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object p1, p1, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_21
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_35

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/AppWindowToken;

    .line 672
    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    .line 673
    if-eq v1, p2, :cond_34

    .line 674
    return v0

    .line 676
    :cond_34
    goto :goto_21

    .line 677
    :cond_35
    iget-object p1, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object p1, p1, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_51

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/AppWindowToken;

    .line 678
    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-eq v1, p2, :cond_50

    .line 679
    return v0

    .line 681
    :cond_50
    goto :goto_3d

    .line 682
    :cond_51
    const/4 p1, 0x1

    return p1

    .line 662
    :cond_53
    :goto_53
    return v0
.end method

.method public synthetic lambda$handleAppTransitionReady$0$AppTransitionController()V
    .registers 3

    .line 218
    iget-object v0, p0, Lcom/android/server/wm/AppTransitionController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    iget-object v1, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityTaskManagerInternal;->notifySingleTaskDisplayDrawn(I)V

    .line 219
    return-void
.end method

.method maybeUpdateTransitToTranslucentAnim(I)I
    .registers 10
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 618
    invoke-static {p1}, Lcom/android/server/wm/AppTransition;->isChangeTransit(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 620
    return p1

    .line 622
    :cond_7
    invoke-static {p1}, Lcom/android/server/wm/AppTransition;->isTaskTransit(I)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_18

    .line 623
    invoke-static {p1}, Lcom/android/server/wm/AppTransition;->isActivityTransit(I)Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_18

    :cond_16
    move v0, v1

    goto :goto_19

    :cond_18
    :goto_18
    move v0, v2

    .line 624
    :goto_19
    nop

    .line 625
    iget-object v3, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v3, v3, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v3

    .line 626
    xor-int/2addr v3, v2

    iget-object v4, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v4, v4, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v4

    sub-int/2addr v4, v2

    move v5, v3

    move v3, v2

    :goto_2e
    if-ltz v4, :cond_4e

    .line 627
    iget-object v6, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v6, v6, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v6, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/AppWindowToken;

    .line 628
    invoke-virtual {v6}, Lcom/android/server/wm/AppWindowToken;->isVisible()Z

    move-result v7

    if-nez v7, :cond_4b

    .line 629
    nop

    .line 630
    invoke-virtual {v6}, Lcom/android/server/wm/AppWindowToken;->fillsParent()Z

    move-result v3

    if-eqz v3, :cond_4a

    .line 631
    move v3, v1

    move v5, v3

    goto :goto_4b

    .line 630
    :cond_4a
    move v3, v1

    .line 626
    :cond_4b
    :goto_4b
    add-int/lit8 v4, v4, -0x1

    goto :goto_2e

    .line 635
    :cond_4e
    iget-object v4, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v4, v4, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v4

    .line 636
    xor-int/2addr v4, v2

    iget-object v6, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v6, v6, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    move-result v6

    sub-int/2addr v6, v2

    :goto_60
    if-ltz v6, :cond_77

    .line 637
    iget-object v2, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v2, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowToken;->fillsParent()Z

    move-result v2

    if-eqz v2, :cond_74

    .line 638
    nop

    .line 639
    goto :goto_78

    .line 636
    :cond_74
    add-int/lit8 v6, v6, -0x1

    goto :goto_60

    :cond_77
    move v1, v4

    .line 643
    :goto_78
    if-eqz v0, :cond_81

    if-eqz v1, :cond_81

    if-eqz v3, :cond_81

    .line 644
    const/16 p1, 0x19

    return p1

    .line 646
    :cond_81
    if-eqz v0, :cond_92

    if-eqz v5, :cond_92

    iget-object v0, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_92

    .line 647
    const/16 p1, 0x18

    return p1

    .line 649
    :cond_92
    return p1
.end method

.method registerRemoteAnimations(Landroid/view/RemoteAnimationDefinition;)V
    .registers 2

    .line 93
    iput-object p1, p0, Lcom/android/server/wm/AppTransitionController;->mRemoteAnimationDefinition:Landroid/view/RemoteAnimationDefinition;

    .line 94
    return-void
.end method
