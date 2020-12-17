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
    .param p1, "service"  # Lcom/android/server/wm/WindowManagerService;
    .param p2, "displayContent"  # Lcom/android/server/wm/DisplayContent;

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/AppTransitionController;->mRemoteAnimationDefinition:Landroid/view/RemoteAnimationDefinition;

    .line 82
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AppTransitionController;->mTempTransitionReasons:Landroid/util/SparseIntArray;

    .line 85
    iput-object p1, p0, Lcom/android/server/wm/AppTransitionController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 86
    iput-object p2, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 87
    iget-object v0, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    iput-object v0, p0, Lcom/android/server/wm/AppTransitionController;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    .line 88
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

    .line 676
    .local p1, "apps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/AppWindowToken;>;"
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_6
    if-ltz v0, :cond_18

    .line 677
    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowToken;->windowsCanBeWallpaperTarget()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 678
    return v1

    .line 676
    :cond_15
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 681
    .end local v0  # "i":I
    :cond_18
    const/4 v0, 0x0

    return v0
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

    .line 293
    .local p0, "array1":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/AppWindowToken;>;"
    .local p1, "array2":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/AppWindowToken;>;"
    .local p2, "array3":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/AppWindowToken;>;"
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 294
    .local v0, "result":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_b
    if-ltz v1, :cond_21

    .line 295
    invoke-virtual {p0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowToken;->getActivityType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 294
    add-int/lit8 v1, v1, -0x1

    goto :goto_b

    .line 297
    .end local v1  # "i":I
    :cond_21
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .restart local v1  # "i":I
    :goto_27
    if-ltz v1, :cond_3d

    .line 298
    invoke-virtual {p1, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowToken;->getActivityType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 297
    add-int/lit8 v1, v1, -0x1

    goto :goto_27

    .line 300
    .end local v1  # "i":I
    :cond_3d
    invoke-virtual {p2}, Landroid/util/ArraySet;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .restart local v1  # "i":I
    :goto_43
    if-ltz v1, :cond_59

    .line 301
    invoke-virtual {p2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowToken;->getActivityType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 300
    add-int/lit8 v1, v1, -0x1

    goto :goto_43

    .line 303
    .end local v1  # "i":I
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

    .line 330
    .local p1, "apps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/AppWindowToken;>;"
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_6
    if-ltz v0, :cond_16

    .line 331
    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/AppWindowToken;

    iget-boolean v2, v2, Lcom/android/server/wm/AppWindowToken;->mVoiceInteraction:Z

    if-eqz v2, :cond_13

    .line 332
    return v1

    .line 330
    :cond_13
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 335
    .end local v0  # "i":I
    :cond_16
    const/4 v0, 0x0

    return v0
.end method

.method private findAnimLayoutParamsToken(ILandroid/util/ArraySet;)Lcom/android/server/wm/AppWindowToken;
    .registers 8
    .param p1, "transit"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/android/server/wm/AppWindowToken;"
        }
    .end annotation

    .line 267
    .local p2, "activityTypes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    .line 268
    .local v0, "closingApps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/AppWindowToken;>;"
    iget-object v1, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    .line 269
    .local v1, "openingApps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/AppWindowToken;>;"
    iget-object v2, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mChangingApps:Landroid/util/ArraySet;

    .line 272
    .local v2, "changingApps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/AppWindowToken;>;"
    new-instance v3, Lcom/android/server/wm/-$$Lambda$AppTransitionController$YfQg1m68hbvcHoXbvzomyslzuaU;

    invoke-direct {v3, p1, p2}, Lcom/android/server/wm/-$$Lambda$AppTransitionController$YfQg1m68hbvcHoXbvzomyslzuaU;-><init>(ILandroid/util/ArraySet;)V

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wm/AppTransitionController;->lookForHighestTokenWithFilter(Landroid/util/ArraySet;Landroid/util/ArraySet;Landroid/util/ArraySet;Ljava/util/function/Predicate;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v3

    .line 275
    .local v3, "result":Lcom/android/server/wm/AppWindowToken;
    if-eqz v3, :cond_18

    .line 276
    return-object v3

    .line 278
    :cond_18
    sget-object v4, Lcom/android/server/wm/-$$Lambda$AppTransitionController$ESsBJ2royCDDfelW3z7cgYH5q2I;->INSTANCE:Lcom/android/server/wm/-$$Lambda$AppTransitionController$ESsBJ2royCDDfelW3z7cgYH5q2I;

    invoke-static {v0, v1, v2, v4}, Lcom/android/server/wm/AppTransitionController;->lookForHighestTokenWithFilter(Landroid/util/ArraySet;Landroid/util/ArraySet;Landroid/util/ArraySet;Ljava/util/function/Predicate;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v3

    .line 280
    if-eqz v3, :cond_21

    .line 281
    return-object v3

    .line 283
    :cond_21
    sget-object v4, Lcom/android/server/wm/-$$Lambda$AppTransitionController$j4jrKo6PKtYRjRfPVQMMiQB02jg;->INSTANCE:Lcom/android/server/wm/-$$Lambda$AppTransitionController$j4jrKo6PKtYRjRfPVQMMiQB02jg;

    invoke-static {v0, v1, v2, v4}, Lcom/android/server/wm/AppTransitionController;->lookForHighestTokenWithFilter(Landroid/util/ArraySet;Landroid/util/ArraySet;Landroid/util/ArraySet;Ljava/util/function/Predicate;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v4

    return-object v4
.end method

.method private static getAnimLp(Lcom/android/server/wm/AppWindowToken;)Landroid/view/WindowManager$LayoutParams;
    .registers 3
    .param p0, "wtoken"  # Lcom/android/server/wm/AppWindowToken;

    .line 221
    const/4 v0, 0x0

    if-eqz p0, :cond_8

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v1

    goto :goto_9

    :cond_8
    move-object v1, v0

    .line 222
    .local v1, "mainWindow":Lcom/android/server/wm/WindowState;
    :goto_9
    if-eqz v1, :cond_d

    iget-object v0, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    :cond_d
    return-object v0
.end method

.method private getTopApp(Landroid/util/ArraySet;Z)Lcom/android/server/wm/AppWindowToken;
    .registers 8
    .param p2, "ignoreHidden"  # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;Z)",
            "Lcom/android/server/wm/AppWindowToken;"
        }
    .end annotation

    .line 693
    .local p1, "apps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/AppWindowToken;>;"
    const/high16 v0, -0x80000000

    .line 694
    .local v0, "topPrefixOrderIndex":I
    const/4 v1, 0x0

    .line 695
    .local v1, "topApp":Lcom/android/server/wm/AppWindowToken;
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_9
    if-ltz v2, :cond_25

    .line 696
    invoke-virtual {p1, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/AppWindowToken;

    .line 697
    .local v3, "app":Lcom/android/server/wm/AppWindowToken;
    if-eqz p2, :cond_1a

    invoke-virtual {v3}, Lcom/android/server/wm/AppWindowToken;->isHidden()Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 698
    goto :goto_22

    .line 700
    :cond_1a
    invoke-virtual {v3}, Lcom/android/server/wm/AppWindowToken;->getPrefixOrderIndex()I

    move-result v4

    .line 701
    .local v4, "prefixOrderIndex":I
    if-le v4, v0, :cond_22

    .line 702
    move v0, v4

    .line 703
    move-object v1, v3

    .line 695
    .end local v3  # "app":Lcom/android/server/wm/AppWindowToken;
    .end local v4  # "prefixOrderIndex":I
    :cond_22
    :goto_22
    add-int/lit8 v2, v2, -0x1

    goto :goto_9

    .line 706
    .end local v2  # "i":I
    :cond_25
    return-object v1
.end method

.method private handleChangingApps(ILandroid/view/WindowManager$LayoutParams;Z)V
    .registers 12
    .param p1, "transit"  # I
    .param p2, "animLp"  # Landroid/view/WindowManager$LayoutParams;
    .param p3, "voiceInteraction"  # Z

    .line 401
    const-string v0, "handleChangingApps"

    iget-object v1, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mChangingApps:Landroid/util/ArraySet;

    .line 402
    .local v1, "apps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/AppWindowToken;>;"
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v2

    .line 403
    .local v2, "appsCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_b
    if-ge v3, v2, :cond_51

    .line 404
    invoke-virtual {v1, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/AppWindowToken;

    .line 405
    .local v4, "wtoken":Lcom/android/server/wm/AppWindowToken;
    sget-boolean v5, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    if-eqz v5, :cond_2d

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Now changing app"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "WindowManager"

    invoke-static {v6, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    :cond_2d
    invoke-virtual {v4}, Lcom/android/server/wm/AppWindowToken;->cancelAnimationOnly()V

    .line 407
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {v4, v5, p1, v7, v6}, Lcom/android/server/wm/AppWindowToken;->applyAnimationLocked(Landroid/view/WindowManager$LayoutParams;IZZ)Z

    .line 408
    invoke-virtual {v4}, Lcom/android/server/wm/AppWindowToken;->updateReportedVisibilityLocked()V

    .line 409
    iget-object v5, p0, Lcom/android/server/wm/AppTransitionController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->openSurfaceTransaction()V

    .line 411
    :try_start_3e
    invoke-virtual {v4}, Lcom/android/server/wm/AppWindowToken;->showAllWindowsLocked()V
    :try_end_41
    .catchall {:try_start_3e .. :try_end_41} :catchall_4a

    .line 413
    iget-object v5, p0, Lcom/android/server/wm/AppTransitionController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5, v0}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    .line 414
    nop

    .line 403
    .end local v4  # "wtoken":Lcom/android/server/wm/AppWindowToken;
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 413
    .restart local v4  # "wtoken":Lcom/android/server/wm/AppWindowToken;
    :catchall_4a
    move-exception v5

    iget-object v6, p0, Lcom/android/server/wm/AppTransitionController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v6, v0}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    throw v5

    .line 416
    .end local v3  # "i":I
    .end local v4  # "wtoken":Lcom/android/server/wm/AppWindowToken;
    :cond_51
    return-void
.end method

.method private handleClosingApps(ILandroid/view/WindowManager$LayoutParams;Z)V
    .registers 14
    .param p1, "transit"  # I
    .param p2, "animLp"  # Landroid/view/WindowManager$LayoutParams;
    .param p3, "voiceInteraction"  # Z

    .line 373
    iget-object v0, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    .line 374
    .local v0, "closingApps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/AppWindowToken;>;"
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v1

    .line 375
    .local v1, "appsCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    if-ge v2, v1, :cond_5a

    .line 376
    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/AppWindowToken;

    .line 378
    .local v3, "wtoken":Lcom/android/server/wm/AppWindowToken;
    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    if-eqz v4, :cond_2b

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Now closing app "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "WindowManager"

    invoke-static {v5, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    :cond_2b
    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v4, v3

    move-object v5, p2

    move v7, p1

    move v9, p3

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/wm/AppWindowToken;->commitVisibility(Landroid/view/WindowManager$LayoutParams;ZIZZ)Z

    .line 382
    invoke-virtual {v3}, Lcom/android/server/wm/AppWindowToken;->updateReportedVisibilityLocked()V

    .line 386
    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    .line 387
    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/android/server/wm/AppWindowToken;->deferClearAllDrawn:Z

    .line 390
    iget-object v4, v3, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    if-eqz v4, :cond_4a

    iget-object v4, v3, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    iget-boolean v4, v4, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    if-nez v4, :cond_4a

    .line 391
    invoke-virtual {v3}, Lcom/android/server/wm/AppWindowToken;->removeStartingWindow()V

    .line 394
    :cond_4a
    iget-object v4, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v4, v4, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v4}, Lcom/android/server/wm/AppTransition;->isNextAppTransitionThumbnailDown()Z

    move-result v4

    if-eqz v4, :cond_57

    .line 395
    invoke-virtual {v3}, Lcom/android/server/wm/AppWindowToken;->attachThumbnailAnimation()V

    .line 375
    .end local v3  # "wtoken":Lcom/android/server/wm/AppWindowToken;
    :cond_57
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 398
    .end local v2  # "i":I
    :cond_5a
    return-void
.end method

.method private handleNonAppWindowsInTransition(II)V
    .registers 8
    .param p1, "transit"  # I
    .param p2, "flags"  # I

    .line 419
    const/16 v0, 0x14

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_26

    .line 420
    and-int/lit8 v3, p2, 0x4

    if-eqz v3, :cond_26

    and-int/lit8 v3, p2, 0x2

    if-nez v3, :cond_26

    .line 422
    iget-object v3, p0, Lcom/android/server/wm/AppTransitionController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    and-int/lit8 v4, p2, 0x1

    if-eqz v4, :cond_18

    move v4, v2

    goto :goto_19

    :cond_18
    move v4, v1

    :goto_19
    invoke-interface {v3, v4}, Lcom/android/server/policy/WindowManagerPolicy;->createKeyguardWallpaperExit(Z)Landroid/view/animation/Animation;

    move-result-object v3

    .line 424
    .local v3, "anim":Landroid/view/animation/Animation;
    if-eqz v3, :cond_26

    .line 425
    iget-object v4, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v4, v4, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v4, v3}, Lcom/android/server/wm/WallpaperController;->startWallpaperAnimation(Landroid/view/animation/Animation;)V

    .line 429
    .end local v3  # "anim":Landroid/view/animation/Animation;
    :cond_26
    const/16 v3, 0x15

    if-eq p1, v0, :cond_2c

    if-ne p1, v3, :cond_3b

    .line 431
    :cond_2c
    iget-object v0, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-ne p1, v3, :cond_32

    move v3, v2

    goto :goto_33

    :cond_32
    move v3, v1

    :goto_33
    and-int/lit8 v4, p2, 0x1

    if-eqz v4, :cond_38

    move v1, v2

    :cond_38
    invoke-virtual {v0, v3, v1}, Lcom/android/server/wm/DisplayContent;->startKeyguardExitOnNonAppWindows(ZZ)V

    .line 435
    :cond_3b
    return-void
.end method

.method private handleOpeningApps(ILandroid/view/WindowManager$LayoutParams;Z)V
    .registers 19
    .param p1, "transit"  # I
    .param p2, "animLp"  # Landroid/view/WindowManager$LayoutParams;
    .param p3, "voiceInteraction"  # Z

    .line 339
    move-object v1, p0

    const-string v2, "<<< CLOSE TRANSACTION handleAppTransitionReady()"

    const-string v3, "handleAppTransitionReady"

    iget-object v0, v1, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v4, v0, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    .line 340
    .local v4, "openingApps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/AppWindowToken;>;"
    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v5

    .line 341
    .local v5, "appsCount":I
    const/4 v0, 0x0

    move v6, v0

    .local v6, "i":I
    :goto_f
    if-ge v6, v5, :cond_9a

    .line 342
    invoke-virtual {v4, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lcom/android/server/wm/AppWindowToken;

    .line 343
    .local v13, "wtoken":Lcom/android/server/wm/AppWindowToken;
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    const-string v14, "WindowManager"

    if-eqz v0, :cond_32

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Now opening app"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    :cond_32
    const/4 v9, 0x1

    const/4 v11, 0x0

    move-object v7, v13

    move-object/from16 v8, p2

    move/from16 v10, p1

    move/from16 v12, p3

    invoke-virtual/range {v7 .. v12}, Lcom/android/server/wm/AppWindowToken;->commitVisibility(Landroid/view/WindowManager$LayoutParams;ZIZZ)Z

    move-result v0

    if-nez v0, :cond_4a

    .line 349
    iget-object v0, v1, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mNoAnimationNotifyOnTransitionFinished:Ljava/util/List;

    iget-object v7, v13, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 351
    :cond_4a
    invoke-virtual {v13}, Lcom/android/server/wm/AppWindowToken;->updateReportedVisibilityLocked()V

    .line 352
    const/4 v0, 0x0

    iput-boolean v0, v13, Lcom/android/server/wm/AppWindowToken;->waitingToShow:Z

    .line 353
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v0, :cond_59

    const-string v0, ">>> OPEN TRANSACTION handleAppTransitionReady()"

    invoke-static {v14, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    :cond_59
    iget-object v0, v1, Lcom/android/server/wm/AppTransitionController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->openSurfaceTransaction()V

    .line 357
    :try_start_5e
    invoke-virtual {v13}, Lcom/android/server/wm/AppWindowToken;->showAllWindowsLocked()V
    :try_end_61
    .catchall {:try_start_5e .. :try_end_61} :catchall_8b

    .line 359
    iget-object v0, v1, Lcom/android/server/wm/AppTransitionController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, v3}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    .line 360
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v0, :cond_6d

    invoke-static {v14, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    :cond_6d
    iget-object v0, v1, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v0}, Lcom/android/server/wm/AppTransition;->isNextAppTransitionThumbnailUp()Z

    move-result v0

    if-eqz v0, :cond_7b

    .line 365
    invoke-virtual {v13}, Lcom/android/server/wm/AppWindowToken;->attachThumbnailAnimation()V

    goto :goto_88

    .line 366
    :cond_7b
    iget-object v0, v1, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v0}, Lcom/android/server/wm/AppTransition;->isNextAppTransitionOpenCrossProfileApps()Z

    move-result v0

    if-eqz v0, :cond_88

    .line 367
    invoke-virtual {v13}, Lcom/android/server/wm/AppWindowToken;->attachCrossProfileAppsThumbnailAnimation()V

    .line 341
    .end local v13  # "wtoken":Lcom/android/server/wm/AppWindowToken;
    :cond_88
    :goto_88
    add-int/lit8 v6, v6, 0x1

    goto :goto_f

    .line 359
    .restart local v13  # "wtoken":Lcom/android/server/wm/AppWindowToken;
    :catchall_8b
    move-exception v0

    move-object v7, v0

    iget-object v0, v1, Lcom/android/server/wm/AppTransitionController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, v3}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    .line 360
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v0, :cond_99

    invoke-static {v14, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_99
    throw v7

    .line 370
    .end local v6  # "i":I
    .end local v13  # "wtoken":Lcom/android/server/wm/AppWindowToken;
    :cond_9a
    return-void
.end method

.method static synthetic lambda$findAnimLayoutParamsToken$0(ILandroid/util/ArraySet;Lcom/android/server/wm/AppWindowToken;)Z
    .registers 4
    .param p0, "transit"  # I
    .param p1, "activityTypes"  # Landroid/util/ArraySet;
    .param p2, "w"  # Lcom/android/server/wm/AppWindowToken;

    .line 273
    invoke-virtual {p2}, Lcom/android/server/wm/AppWindowToken;->getRemoteAnimationDefinition()Landroid/view/RemoteAnimationDefinition;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 274
    invoke-virtual {p2}, Lcom/android/server/wm/AppWindowToken;->getRemoteAnimationDefinition()Landroid/view/RemoteAnimationDefinition;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/view/RemoteAnimationDefinition;->hasTransition(ILandroid/util/ArraySet;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    .line 273
    :goto_13
    return v0
.end method

.method static synthetic lambda$findAnimLayoutParamsToken$1(Lcom/android/server/wm/AppWindowToken;)Z
    .registers 2
    .param p0, "w"  # Lcom/android/server/wm/AppWindowToken;

    .line 279
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->fillsParent()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method static synthetic lambda$findAnimLayoutParamsToken$2(Lcom/android/server/wm/AppWindowToken;)Z
    .registers 2
    .param p0, "w"  # Lcom/android/server/wm/AppWindowToken;

    .line 284
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
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

    .line 309
    .local p0, "array1":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/AppWindowToken;>;"
    .local p1, "array2":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/AppWindowToken;>;"
    .local p2, "array3":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/AppWindowToken;>;"
    .local p3, "filter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/wm/AppWindowToken;>;"
    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result v0

    .line 310
    .local v0, "array2base":I
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v1

    add-int/2addr v1, v0

    .line 311
    .local v1, "array3base":I
    invoke-virtual {p2}, Landroid/util/ArraySet;->size()I

    move-result v2

    add-int/2addr v2, v1

    .line 312
    .local v2, "count":I
    const/high16 v3, -0x80000000

    .line 313
    .local v3, "bestPrefixOrderIndex":I
    const/4 v4, 0x0

    .line 314
    .local v4, "bestToken":Lcom/android/server/wm/AppWindowToken;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_12
    if-ge v5, v2, :cond_42

    .line 315
    if-ge v5, v0, :cond_1d

    .line 316
    invoke-virtual {p0, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/AppWindowToken;

    goto :goto_30

    .line 317
    :cond_1d
    if-ge v5, v1, :cond_28

    .line 318
    sub-int v6, v5, v0

    invoke-virtual {p1, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/AppWindowToken;

    goto :goto_30

    .line 319
    :cond_28
    sub-int v6, v5, v1

    invoke-virtual {p2, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/AppWindowToken;

    :goto_30
    nop

    .line 320
    .local v6, "wtoken":Lcom/android/server/wm/AppWindowToken;
    invoke-virtual {v6}, Lcom/android/server/wm/AppWindowToken;->getPrefixOrderIndex()I

    move-result v7

    .line 321
    .local v7, "prefixOrderIndex":I
    invoke-interface {p3, v6}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3f

    if-le v7, v3, :cond_3f

    .line 322
    move v3, v7

    .line 323
    move-object v4, v6

    .line 314
    .end local v6  # "wtoken":Lcom/android/server/wm/AppWindowToken;
    .end local v7  # "prefixOrderIndex":I
    :cond_3f
    add-int/lit8 v5, v5, 0x1

    goto :goto_12

    .line 326
    .end local v5  # "i":I
    :cond_42
    return-object v4
.end method

.method private maybeUpdateTransitToWallpaper(IZZ)I
    .registers 15
    .param p1, "transit"  # I
    .param p2, "openingAppHasWallpaper"  # Z
    .param p3, "closingAppHasWallpaper"  # Z

    .line 519
    if-eqz p1, :cond_15a

    const/16 v0, 0x1a

    if-eq p1, v0, :cond_15a

    const/16 v0, 0x13

    if-eq p1, v0, :cond_15a

    .line 521
    invoke-static {p1}, Lcom/android/server/wm/AppTransition;->isChangeTransit(I)Z

    move-result v0

    if-eqz v0, :cond_12

    goto/16 :goto_15a

    .line 525
    :cond_12
    iget-object v0, p0, Lcom/android/server/wm/AppTransitionController;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v0}, Lcom/android/server/wm/WallpaperController;->getWallpaperTarget()Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 526
    .local v0, "wallpaperTarget":Lcom/android/server/wm/WindowState;
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

    .line 531
    .local v3, "showWallpaper":Z
    :goto_28
    iget-object v4, p0, Lcom/android/server/wm/AppTransitionController;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v4}, Lcom/android/server/wm/WallpaperController;->isWallpaperTargetAnimating()Z

    move-result v4

    if-nez v4, :cond_35

    if-nez v3, :cond_33

    goto :goto_35

    .line 533
    :cond_33
    move-object v4, v0

    goto :goto_36

    .line 532
    :cond_35
    :goto_35
    const/4 v4, 0x0

    .line 533
    :goto_36
    nop

    .line 534
    .local v4, "oldWallpaper":Lcom/android/server/wm/WindowState;
    iget-object v5, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v5, v5, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    .line 535
    .local v5, "openingApps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/AppWindowToken;>;"
    iget-object v6, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v6, v6, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    .line 536
    .local v6, "closingApps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/AppWindowToken;>;"
    iget-object v7, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v7, v7, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-direct {p0, v7, v2}, Lcom/android/server/wm/AppTransitionController;->getTopApp(Landroid/util/ArraySet;Z)Lcom/android/server/wm/AppWindowToken;

    move-result-object v2

    .line 538
    .local v2, "topOpeningApp":Lcom/android/server/wm/AppWindowToken;
    iget-object v7, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v7, v7, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    invoke-direct {p0, v7, v1}, Lcom/android/server/wm/AppTransitionController;->getTopApp(Landroid/util/ArraySet;Z)Lcom/android/server/wm/AppWindowToken;

    move-result-object v1

    .line 541
    .local v1, "topClosingApp":Lcom/android/server/wm/AppWindowToken;
    invoke-direct {p0, v5}, Lcom/android/server/wm/AppTransitionController;->canBeWallpaperTarget(Landroid/util/ArraySet;)Z

    move-result v7

    .line 542
    .local v7, "openingCanBeWallpaperTarget":Z
    sget-boolean v8, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    const-string v9, "WindowManager"

    if-eqz v8, :cond_85

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "New wallpaper target="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, ", oldWallpaper="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, ", openingApps="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, ", closingApps="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    :cond_85
    const-string v8, "New transit: "

    if-eqz v7, :cond_ab

    const/16 v10, 0x14

    if-ne p1, v10, :cond_ab

    .line 549
    const/16 p1, 0x15

    .line 550
    sget-boolean v10, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    if-eqz v10, :cond_159

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 551
    invoke-static {p1}, Lcom/android/server/wm/AppTransition;->appTransitionToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 550
    invoke-static {v9, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_159

    .line 555
    :cond_ab
    invoke-static {p1}, Lcom/android/server/wm/AppTransition;->isKeyguardGoingAwayTransit(I)Z

    move-result v10

    if-nez v10, :cond_159

    .line 556
    if-eqz p3, :cond_e4

    if-eqz p2, :cond_e4

    .line 557
    sget-boolean v10, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    if-eqz v10, :cond_be

    const-string v10, "Wallpaper animation!"

    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    :cond_be
    packed-switch p1, :pswitch_data_15c

    goto :goto_c8

    .line 567
    :pswitch_c2  #0x7, 0x9, 0xb
    const/16 p1, 0xf

    goto :goto_c8

    .line 562
    :pswitch_c5  #0x6, 0x8, 0xa
    const/16 p1, 0xe

    .line 563
    nop

    .line 570
    :goto_c8
    sget-boolean v10, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    if-eqz v10, :cond_159

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 571
    invoke-static {p1}, Lcom/android/server/wm/AppTransition;->appTransitionToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 570
    invoke-static {v9, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_159

    .line 572
    :cond_e4
    if-eqz v4, :cond_123

    iget-object v8, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v8, v8, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v8}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_123

    iget-object v8, v4, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 573
    invoke-virtual {v5, v8}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_123

    iget-object v8, v4, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 574
    invoke-virtual {v6, v8}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_123

    iget-object v8, v4, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-ne v1, v8, :cond_123

    .line 577
    const/16 p1, 0xc

    .line 578
    sget-boolean v8, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    if-eqz v8, :cond_159

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "New transit away from wallpaper: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 579
    invoke-static {p1}, Lcom/android/server/wm/AppTransition;->appTransitionToString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 578
    invoke-static {v9, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_159

    .line 580
    :cond_123
    if-eqz v0, :cond_159

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v8

    if-eqz v8, :cond_159

    iget-object v8, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 581
    invoke-virtual {v5, v8}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_159

    iget-object v8, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-ne v2, v8, :cond_159

    const/16 v8, 0x19

    if-eq p1, v8, :cond_159

    .line 586
    const/16 p1, 0xd

    .line 587
    sget-boolean v8, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    if-eqz v8, :cond_159

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "New transit into wallpaper: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 588
    invoke-static {p1}, Lcom/android/server/wm/AppTransition;->appTransitionToString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 587
    invoke-static {v9, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    :cond_159
    :goto_159
    return p1

    .line 522
    .end local v0  # "wallpaperTarget":Lcom/android/server/wm/WindowState;
    .end local v1  # "topClosingApp":Lcom/android/server/wm/AppWindowToken;
    .end local v2  # "topOpeningApp":Lcom/android/server/wm/AppWindowToken;
    .end local v3  # "showWallpaper":Z
    .end local v4  # "oldWallpaper":Lcom/android/server/wm/WindowState;
    .end local v5  # "openingApps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/AppWindowToken;>;"
    .end local v6  # "closingApps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/AppWindowToken;>;"
    .end local v7  # "openingCanBeWallpaperTarget":Z
    :cond_15a
    :goto_15a
    return p1

    nop

    :pswitch_data_15c
    .packed-switch 0x6
        :pswitch_c5  #00000006
        :pswitch_c2  #00000007
        :pswitch_c5  #00000008
        :pswitch_c2  #00000009
        :pswitch_c5  #0000000a
        :pswitch_c2  #0000000b
    .end packed-switch
.end method

.method private overrideWithRemoteAnimationIfSet(Lcom/android/server/wm/AppWindowToken;ILandroid/util/ArraySet;)V
    .registers 6
    .param p1, "animLpToken"  # Lcom/android/server/wm/AppWindowToken;
    .param p2, "transit"  # I
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

    .line 246
    .local p3, "activityTypes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    const/16 v0, 0x1a

    if-ne p2, v0, :cond_5

    .line 248
    return-void

    .line 250
    :cond_5
    if-nez p1, :cond_8

    .line 251
    return-void

    .line 253
    :cond_8
    nop

    .line 254
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/AppTransitionController;->getRemoteAnimationOverride(Lcom/android/server/wm/AppWindowToken;ILandroid/util/ArraySet;)Landroid/view/RemoteAnimationAdapter;

    move-result-object v0

    .line 255
    .local v0, "adapter":Landroid/view/RemoteAnimationAdapter;
    if-eqz v0, :cond_18

    .line 256
    invoke-virtual {p1}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/AppTransition;->overridePendingAppTransitionRemote(Landroid/view/RemoteAnimationAdapter;)V

    .line 259
    :cond_18
    return-void
.end method

.method private processApplicationsAnimatingInPlace(I)V
    .registers 6
    .param p1, "transit"  # I

    .line 710
    const/16 v0, 0x11

    if-ne p1, v0, :cond_36

    .line 712
    iget-object v0, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->findFocusedWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 713
    .local v0, "win":Lcom/android/server/wm/WindowState;
    if-eqz v0, :cond_36

    .line 714
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 715
    .local v1, "wtoken":Lcom/android/server/wm/AppWindowToken;
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    if-eqz v2, :cond_28

    .line 716
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Now animating app in place "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "WindowManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    :cond_28
    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->cancelAnimation()V

    .line 718
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3, v3}, Lcom/android/server/wm/AppWindowToken;->applyAnimationLocked(Landroid/view/WindowManager$LayoutParams;IZZ)Z

    .line 719
    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->updateReportedVisibilityLocked()V

    .line 720
    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->showAllWindowsLocked()V

    .line 723
    .end local v0  # "win":Lcom/android/server/wm/WindowState;
    .end local v1  # "wtoken":Lcom/android/server/wm/AppWindowToken;
    :cond_36
    return-void
.end method

.method private transitionGoodToGo(Landroid/util/ArraySet;Landroid/util/SparseIntArray;)Z
    .registers 12
    .param p2, "outReasons"  # Landroid/util/SparseIntArray;
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

    .line 438
    .local p1, "apps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/AppWindowToken;>;"
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    const-string v1, "WindowManager"

    if-eqz v0, :cond_3f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Checking "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 439
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " opening apps (frozen="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/AppTransitionController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " timeout="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    .line 441
    invoke-virtual {v2}, Lcom/android/server/wm/AppTransition;->isTimeout()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")..."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 438
    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    :cond_3f
    iget-object v0, p0, Lcom/android/server/wm/AppTransitionController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    .line 443
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/server/wm/WindowAnimator;->getScreenRotationAnimationLocked(I)Lcom/android/server/wm/ScreenRotationAnimation;

    move-result-object v0

    .line 446
    .local v0, "screenRotationAnimation":Lcom/android/server/wm/ScreenRotationAnimation;
    iget-object v3, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v3, v3, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v3}, Lcom/android/server/wm/AppTransition;->isTimeout()Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_155

    .line 454
    if-eqz v0, :cond_71

    invoke-virtual {v0}, Lcom/android/server/wm/ScreenRotationAnimation;->isAnimating()Z

    move-result v3

    if-eqz v3, :cond_71

    iget-object v3, p0, Lcom/android/server/wm/AppTransitionController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 455
    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->rotationNeedsUpdate()Z

    move-result v3

    if-eqz v3, :cond_71

    .line 456
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    if-eqz v3, :cond_70

    .line 457
    const-string v3, "Delaying app transition for screen rotation animation to finish"

    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    :cond_70
    return v2

    .line 461
    :cond_71
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_72
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v5

    if-ge v3, v5, :cond_fe

    .line 462
    invoke-virtual {p1, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/AppWindowToken;

    .line 463
    .local v5, "wtoken":Lcom/android/server/wm/AppWindowToken;
    sget-boolean v6, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    if-eqz v6, :cond_ca

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Check opening app="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ": allDrawn="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, v5, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " startingDisplayed="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, v5, Lcom/android/server/wm/AppWindowToken;->startingDisplayed:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " startingMoved="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, v5, Lcom/android/server/wm/AppWindowToken;->startingMoved:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " isRelaunching()="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 468
    invoke-virtual {v5}, Lcom/android/server/wm/AppWindowToken;->isRelaunching()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " startingWindow="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v5, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 463
    invoke-static {v1, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    :cond_ca
    iget-boolean v6, v5, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    if-eqz v6, :cond_d6

    invoke-virtual {v5}, Lcom/android/server/wm/AppWindowToken;->isRelaunching()Z

    move-result v6

    if-nez v6, :cond_d6

    move v6, v4

    goto :goto_d7

    :cond_d6
    move v6, v2

    .line 473
    .local v6, "allDrawn":Z
    :goto_d7
    if-nez v6, :cond_e2

    iget-boolean v7, v5, Lcom/android/server/wm/AppWindowToken;->startingDisplayed:Z

    if-nez v7, :cond_e2

    iget-boolean v7, v5, Lcom/android/server/wm/AppWindowToken;->startingMoved:Z

    if-nez v7, :cond_e2

    .line 474
    return v2

    .line 476
    :cond_e2
    invoke-virtual {v5}, Lcom/android/server/wm/AppWindowToken;->getWindowingMode()I

    move-result v7

    .line 477
    .local v7, "windowingMode":I
    if-eqz v6, :cond_ed

    .line 478
    const/4 v8, 0x2

    invoke-virtual {p2, v7, v8}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_fa

    .line 480
    :cond_ed
    nop

    .line 481
    iget-object v8, v5, Lcom/android/server/wm/AppWindowToken;->mStartingData:Lcom/android/server/wm/StartingData;

    instance-of v8, v8, Lcom/android/server/wm/SplashScreenStartingData;

    if-eqz v8, :cond_f6

    .line 482
    move v8, v4

    goto :goto_f7

    .line 483
    :cond_f6
    const/4 v8, 0x4

    .line 480
    :goto_f7
    invoke-virtual {p2, v7, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 461
    .end local v5  # "wtoken":Lcom/android/server/wm/AppWindowToken;
    .end local v6  # "allDrawn":Z
    .end local v7  # "windowingMode":I
    :goto_fa
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_72

    .line 488
    .end local v3  # "i":I
    :cond_fe
    iget-object v3, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v3, v3, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v3}, Lcom/android/server/wm/AppTransition;->isFetchingAppTransitionsSpecs()Z

    move-result v3

    if-eqz v3, :cond_112

    .line 489
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    if-eqz v3, :cond_111

    const-string v3, "isFetchingAppTransitionSpecs=true"

    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    :cond_111
    return v2

    .line 493
    :cond_112
    iget-object v3, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v3, v3, Lcom/android/server/wm/DisplayContent;->mUnknownAppVisibilityController:Lcom/android/server/wm/UnknownAppVisibilityController;

    invoke-virtual {v3}, Lcom/android/server/wm/UnknownAppVisibilityController;->allResolved()Z

    move-result v3

    if-nez v3, :cond_13d

    .line 494
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    if-eqz v3, :cond_13c

    .line 495
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unknownApps is not empty: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v4, v4, Lcom/android/server/wm/DisplayContent;->mUnknownAppVisibilityController:Lcom/android/server/wm/UnknownAppVisibilityController;

    .line 496
    invoke-virtual {v4}, Lcom/android/server/wm/UnknownAppVisibilityController;->getDebugMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 495
    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    :cond_13c
    return v2

    .line 502
    :cond_13d
    iget-object v1, p0, Lcom/android/server/wm/AppTransitionController;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v1}, Lcom/android/server/wm/WallpaperController;->isWallpaperVisible()Z

    move-result v1

    if-eqz v1, :cond_150

    iget-object v1, p0, Lcom/android/server/wm/AppTransitionController;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    .line 503
    invoke-virtual {v1}, Lcom/android/server/wm/WallpaperController;->wallpaperTransitionReady()Z

    move-result v1

    if-eqz v1, :cond_14e

    goto :goto_150

    :cond_14e
    move v1, v2

    goto :goto_151

    :cond_150
    :goto_150
    move v1, v4

    .line 504
    .local v1, "wallpaperReady":Z
    :goto_151
    if-eqz v1, :cond_154

    .line 505
    return v4

    .line 507
    :cond_154
    return v2

    .line 509
    .end local v1  # "wallpaperReady":Z
    :cond_155
    return v4
.end method


# virtual methods
.method getRemoteAnimationOverride(Lcom/android/server/wm/AppWindowToken;ILandroid/util/ArraySet;)Landroid/view/RemoteAnimationAdapter;
    .registers 6
    .param p1, "animLpToken"  # Lcom/android/server/wm/AppWindowToken;
    .param p2, "transit"  # I
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

    .line 227
    .local p3, "activityTypes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    invoke-virtual {p1}, Lcom/android/server/wm/AppWindowToken;->getRemoteAnimationDefinition()Landroid/view/RemoteAnimationDefinition;

    move-result-object v0

    .line 228
    .local v0, "definition":Landroid/view/RemoteAnimationDefinition;
    if-eqz v0, :cond_d

    .line 229
    invoke-virtual {v0, p2, p3}, Landroid/view/RemoteAnimationDefinition;->getAdapter(ILandroid/util/ArraySet;)Landroid/view/RemoteAnimationAdapter;

    move-result-object v1

    .line 230
    .local v1, "adapter":Landroid/view/RemoteAnimationAdapter;
    if-eqz v1, :cond_d

    .line 231
    return-object v1

    .line 234
    .end local v1  # "adapter":Landroid/view/RemoteAnimationAdapter;
    :cond_d
    iget-object v1, p0, Lcom/android/server/wm/AppTransitionController;->mRemoteAnimationDefinition:Landroid/view/RemoteAnimationDefinition;

    if-nez v1, :cond_13

    .line 235
    const/4 v1, 0x0

    return-object v1

    .line 237
    :cond_13
    invoke-virtual {v1, p2, p3}, Landroid/view/RemoteAnimationDefinition;->getAdapter(ILandroid/util/ArraySet;)Landroid/view/RemoteAnimationAdapter;

    move-result-object v1

    return-object v1
.end method

.method handleAppTransitionReady()V
    .registers 21

    .line 98
    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/android/server/wm/AppTransitionController;->mTempTransitionReasons:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 99
    iget-object v0, v1, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    iget-object v2, v1, Lcom/android/server/wm/AppTransitionController;->mTempTransitionReasons:Landroid/util/SparseIntArray;

    invoke-direct {v1, v0, v2}, Lcom/android/server/wm/AppTransitionController;->transitionGoodToGo(Landroid/util/ArraySet;Landroid/util/SparseIntArray;)Z

    move-result v0

    if-eqz v0, :cond_20b

    iget-object v0, v1, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mChangingApps:Landroid/util/ArraySet;

    iget-object v2, v1, Lcom/android/server/wm/AppTransitionController;->mTempTransitionReasons:Landroid/util/SparseIntArray;

    .line 100
    invoke-direct {v1, v0, v2}, Lcom/android/server/wm/AppTransitionController;->transitionGoodToGo(Landroid/util/ArraySet;Landroid/util/SparseIntArray;)Z

    move-result v0

    if-nez v0, :cond_21

    goto/16 :goto_20b

    .line 103
    :cond_21
    const-wide/16 v2, 0x20

    const-string v0, "AppTransitionReady"

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 105
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    if-eqz v0, :cond_33

    const-string v0, "WindowManager"

    const-string v4, "**** GOOD TO GO"

    invoke-static {v0, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :cond_33
    iget-object v0, v1, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v4, v0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    .line 107
    .local v4, "appTransition":Lcom/android/server/wm/AppTransition;
    invoke-virtual {v4}, Lcom/android/server/wm/AppTransition;->getAppTransition()I

    move-result v0

    .line 108
    .local v0, "transit":I
    iget-object v5, v1, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-boolean v5, v5, Lcom/android/server/wm/DisplayContent;->mSkipAppTransitionAnimation:Z

    if-eqz v5, :cond_48

    invoke-static {v0}, Lcom/android/server/wm/AppTransition;->isKeyguardGoingAwayTransit(I)Z

    move-result v5

    if-nez v5, :cond_48

    .line 109
    const/4 v0, -0x1

    .line 111
    :cond_48
    iget-object v5, v1, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/android/server/wm/DisplayContent;->mSkipAppTransitionAnimation:Z

    .line 112
    iget-object v5, v5, Lcom/android/server/wm/DisplayContent;->mNoAnimationNotifyOnTransitionFinished:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 114
    invoke-virtual {v4}, Lcom/android/server/wm/AppTransition;->removeAppTransitionTimeoutCallbacks()V

    .line 116
    iget-object v5, v1, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iput-boolean v6, v5, Lcom/android/server/wm/DisplayContent;->mWallpaperMayChange:Z

    .line 118
    iget-object v5, v5, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v5

    .line 119
    .local v5, "appCount":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_60
    if-ge v7, v5, :cond_72

    .line 124
    iget-object v8, v1, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v8, v8, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v8, v7}, Landroid/util/ArraySet;->valueAtUnchecked(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v8}, Lcom/android/server/wm/AppWindowToken;->clearAnimatingFlags()V

    .line 119
    add-int/lit8 v7, v7, 0x1

    goto :goto_60

    .line 126
    .end local v7  # "i":I
    :cond_72
    iget-object v7, v1, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v7, v7, Lcom/android/server/wm/DisplayContent;->mChangingApps:Landroid/util/ArraySet;

    invoke-virtual {v7}, Landroid/util/ArraySet;->size()I

    move-result v5

    .line 127
    const/4 v7, 0x0

    .restart local v7  # "i":I
    :goto_7b
    if-ge v7, v5, :cond_8d

    .line 129
    iget-object v8, v1, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v8, v8, Lcom/android/server/wm/DisplayContent;->mChangingApps:Landroid/util/ArraySet;

    invoke-virtual {v8, v7}, Landroid/util/ArraySet;->valueAtUnchecked(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v8}, Lcom/android/server/wm/AppWindowToken;->clearAnimatingFlags()V

    .line 127
    add-int/lit8 v7, v7, 0x1

    goto :goto_7b

    .line 135
    .end local v7  # "i":I
    :cond_8d
    iget-object v7, v1, Lcom/android/server/wm/AppTransitionController;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    iget-object v8, v1, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v8, v8, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    iget-object v9, v1, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v9, v9, Lcom/android/server/wm/DisplayContent;->mChangingApps:Landroid/util/ArraySet;

    invoke-virtual {v7, v8, v9}, Lcom/android/server/wm/WallpaperController;->adjustWallpaperWindowsForAppTransitionIfNeeded(Landroid/util/ArraySet;Landroid/util/ArraySet;)V

    .line 140
    iget-object v7, v1, Lcom/android/server/wm/AppTransitionController;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v7}, Lcom/android/server/wm/WallpaperController;->getWallpaperTarget()Lcom/android/server/wm/WindowState;

    move-result-object v7

    if-eqz v7, :cond_a4

    const/4 v7, 0x1

    goto :goto_a5

    :cond_a4
    move v7, v6

    .line 141
    .local v7, "hasWallpaperTarget":Z
    :goto_a5
    iget-object v9, v1, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v9, v9, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-direct {v1, v9}, Lcom/android/server/wm/AppTransitionController;->canBeWallpaperTarget(Landroid/util/ArraySet;)Z

    move-result v9

    if-eqz v9, :cond_b3

    if-eqz v7, :cond_b3

    const/4 v9, 0x1

    goto :goto_b4

    :cond_b3
    move v9, v6

    .line 143
    .local v9, "openingAppHasWallpaper":Z
    :goto_b4
    iget-object v10, v1, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v10, v10, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    invoke-direct {v1, v10}, Lcom/android/server/wm/AppTransitionController;->canBeWallpaperTarget(Landroid/util/ArraySet;)Z

    move-result v10

    if-eqz v10, :cond_c2

    if-eqz v7, :cond_c2

    const/4 v10, 0x1

    goto :goto_c3

    :cond_c2
    move v10, v6

    .line 146
    .local v10, "closingAppHasWallpaper":Z
    :goto_c3
    invoke-virtual {v1, v0}, Lcom/android/server/wm/AppTransitionController;->maybeUpdateTransitToTranslucentAnim(I)I

    move-result v0

    .line 147
    invoke-direct {v1, v0, v9, v10}, Lcom/android/server/wm/AppTransitionController;->maybeUpdateTransitToWallpaper(IZZ)I

    move-result v11

    .line 154
    .end local v0  # "transit":I
    .local v11, "transit":I
    iget-object v0, v1, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    iget-object v12, v1, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v12, v12, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    iget-object v13, v1, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v13, v13, Lcom/android/server/wm/DisplayContent;->mChangingApps:Landroid/util/ArraySet;

    invoke-static {v0, v12, v13}, Lcom/android/server/wm/AppTransitionController;->collectActivityTypes(Landroid/util/ArraySet;Landroid/util/ArraySet;Landroid/util/ArraySet;)Landroid/util/ArraySet;

    move-result-object v12

    .line 156
    .local v12, "activityTypes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    iget-object v0, v1, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->allowAppAnimationsLw()Z

    move-result v13

    .line 157
    .local v13, "allowAnimations":Z
    if-eqz v13, :cond_ec

    .line 158
    invoke-direct {v1, v11, v12}, Lcom/android/server/wm/AppTransitionController;->findAnimLayoutParamsToken(ILandroid/util/ArraySet;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v14

    goto :goto_ed

    .line 159
    :cond_ec
    const/4 v14, 0x0

    :goto_ed
    nop

    .line 160
    .local v14, "animLpToken":Lcom/android/server/wm/AppWindowToken;
    if-eqz v13, :cond_f9

    .line 161
    iget-object v15, v1, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v15, v15, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-direct {v1, v15, v6}, Lcom/android/server/wm/AppTransitionController;->getTopApp(Landroid/util/ArraySet;Z)Lcom/android/server/wm/AppWindowToken;

    move-result-object v15

    goto :goto_fa

    .line 162
    :cond_f9
    const/4 v15, 0x0

    :goto_fa
    nop

    .line 163
    .local v15, "topOpeningApp":Lcom/android/server/wm/AppWindowToken;
    if-eqz v13, :cond_106

    .line 164
    iget-object v0, v1, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    invoke-direct {v1, v0, v6}, Lcom/android/server/wm/AppTransitionController;->getTopApp(Landroid/util/ArraySet;Z)Lcom/android/server/wm/AppWindowToken;

    move-result-object v0

    goto :goto_107

    .line 165
    :cond_106
    const/4 v0, 0x0

    :goto_107
    move-object/from16 v17, v0

    .line 166
    .local v17, "topClosingApp":Lcom/android/server/wm/AppWindowToken;
    if-eqz v13, :cond_116

    .line 167
    iget-object v0, v1, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mChangingApps:Landroid/util/ArraySet;

    invoke-direct {v1, v0, v6}, Lcom/android/server/wm/AppTransitionController;->getTopApp(Landroid/util/ArraySet;Z)Lcom/android/server/wm/AppWindowToken;

    move-result-object v0

    move-object/from16 v16, v0

    goto :goto_118

    .line 168
    :cond_116
    const/16 v16, 0x0

    :goto_118
    move-object/from16 v18, v16

    .line 169
    .local v18, "topChangingApp":Lcom/android/server/wm/AppWindowToken;
    invoke-static {v14}, Lcom/android/server/wm/AppTransitionController;->getAnimLp(Lcom/android/server/wm/AppWindowToken;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    .line 170
    .local v6, "animLp":Landroid/view/WindowManager$LayoutParams;
    invoke-direct {v1, v14, v11, v12}, Lcom/android/server/wm/AppTransitionController;->overrideWithRemoteAnimationIfSet(Lcom/android/server/wm/AppWindowToken;ILandroid/util/ArraySet;)V

    .line 172
    iget-object v0, v1, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-direct {v1, v0}, Lcom/android/server/wm/AppTransitionController;->containsVoiceInteraction(Landroid/util/ArraySet;)Z

    move-result v0

    if-nez v0, :cond_143

    iget-object v0, v1, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    .line 173
    invoke-direct {v1, v0}, Lcom/android/server/wm/AppTransitionController;->containsVoiceInteraction(Landroid/util/ArraySet;)Z

    move-result v0

    if-nez v0, :cond_143

    iget-object v0, v1, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mChangingApps:Landroid/util/ArraySet;

    .line 174
    invoke-direct {v1, v0}, Lcom/android/server/wm/AppTransitionController;->containsVoiceInteraction(Landroid/util/ArraySet;)Z

    move-result v0

    if-eqz v0, :cond_140

    goto :goto_143

    :cond_140
    const/16 v16, 0x0

    goto :goto_145

    :cond_143
    :goto_143
    const/16 v16, 0x1

    :goto_145
    move/from16 v19, v16

    .line 177
    .local v19, "voiceInteraction":Z
    iget-object v0, v1, Lcom/android/server/wm/AppTransitionController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mSurfaceAnimationRunner:Lcom/android/server/wm/SurfaceAnimationRunner;

    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceAnimationRunner;->deferStartingAnimations()V

    .line 179
    :try_start_14e
    invoke-direct {v1, v11}, Lcom/android/server/wm/AppTransitionController;->processApplicationsAnimatingInPlace(I)V
    :try_end_151
    .catchall {:try_start_14e .. :try_end_151} :catchall_1fa

    .line 181
    move/from16 v2, v19

    .end local v19  # "voiceInteraction":Z
    .local v2, "voiceInteraction":Z
    :try_start_153
    invoke-direct {v1, v11, v6, v2}, Lcom/android/server/wm/AppTransitionController;->handleClosingApps(ILandroid/view/WindowManager$LayoutParams;Z)V

    .line 182
    invoke-direct {v1, v11, v6, v2}, Lcom/android/server/wm/AppTransitionController;->handleOpeningApps(ILandroid/view/WindowManager$LayoutParams;Z)V

    .line 183
    invoke-direct {v1, v11, v6, v2}, Lcom/android/server/wm/AppTransitionController;->handleChangingApps(ILandroid/view/WindowManager$LayoutParams;Z)V
    :try_end_15c
    .catchall {:try_start_153 .. :try_end_15c} :catchall_1f0

    .line 185
    move-object/from16 v3, v17

    move-object/from16 v8, v18

    .end local v17  # "topClosingApp":Lcom/android/server/wm/AppWindowToken;
    .end local v18  # "topChangingApp":Lcom/android/server/wm/AppWindowToken;
    .local v3, "topClosingApp":Lcom/android/server/wm/AppWindowToken;
    .local v8, "topChangingApp":Lcom/android/server/wm/AppWindowToken;
    :try_start_160
    invoke-virtual {v4, v11, v15, v3, v8}, Lcom/android/server/wm/AppTransition;->setLastAppTransition(ILcom/android/server/wm/AppWindowToken;Lcom/android/server/wm/AppWindowToken;Lcom/android/server/wm/AppWindowToken;)V

    .line 188
    invoke-virtual {v4}, Lcom/android/server/wm/AppTransition;->getTransitFlags()I

    move-result v16

    move/from16 v17, v16

    .line 189
    .local v17, "flags":I
    iget-object v0, v1, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v4, v11, v15, v0}, Lcom/android/server/wm/AppTransition;->goodToGo(ILcom/android/server/wm/AppWindowToken;Landroid/util/ArraySet;)I

    move-result v0
    :try_end_171
    .catchall {:try_start_160 .. :try_end_171} :catchall_1e6

    .line 191
    .local v0, "layoutRedo":I
    move/from16 v18, v2

    move/from16 v2, v17

    .end local v17  # "flags":I
    .local v2, "flags":I
    .local v18, "voiceInteraction":Z
    :try_start_175
    invoke-direct {v1, v11, v2}, Lcom/android/server/wm/AppTransitionController;->handleNonAppWindowsInTransition(II)V

    .line 192
    invoke-virtual {v4}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    .line 193
    invoke-virtual {v4}, Lcom/android/server/wm/AppTransition;->clear()V
    :try_end_17e
    .catchall {:try_start_175 .. :try_end_17e} :catchall_1de

    .line 195
    .end local v2  # "flags":I
    iget-object v2, v1, Lcom/android/server/wm/AppTransitionController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mSurfaceAnimationRunner:Lcom/android/server/wm/SurfaceAnimationRunner;

    invoke-virtual {v2}, Lcom/android/server/wm/SurfaceAnimationRunner;->continueStartingAnimations()V

    .line 196
    nop

    .line 198
    iget-object v2, v1, Lcom/android/server/wm/AppTransitionController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    move-object/from16 v17, v3

    .end local v3  # "topClosingApp":Lcom/android/server/wm/AppWindowToken;
    .local v17, "topClosingApp":Lcom/android/server/wm/AppWindowToken;
    iget-object v3, v1, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/TaskSnapshotController;->onTransitionStarting(Lcom/android/server/wm/DisplayContent;)V

    .line 200
    iget-object v2, v1, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->clear()V

    .line 201
    iget-object v2, v1, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->clear()V

    .line 202
    iget-object v2, v1, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mChangingApps:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->clear()V

    .line 203
    iget-object v2, v1, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mUnknownAppVisibilityController:Lcom/android/server/wm/UnknownAppVisibilityController;

    invoke-virtual {v2}, Lcom/android/server/wm/UnknownAppVisibilityController;->clear()V

    .line 207
    iget-object v2, v1, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 209
    iget-object v2, v1, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/server/wm/DisplayContent;->computeImeTarget(Z)Lcom/android/server/wm/WindowState;

    .line 211
    iget-object v2, v1, Lcom/android/server/wm/AppTransitionController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    iget-object v3, v1, Lcom/android/server/wm/AppTransitionController;->mTempTransitionReasons:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->clone()Landroid/util/SparseIntArray;

    move-result-object v3

    .line 212
    move-object/from16 v16, v4

    move/from16 v19, v5

    .end local v4  # "appTransition":Lcom/android/server/wm/AppTransition;
    .end local v5  # "appCount":I
    .local v16, "appTransition":Lcom/android/server/wm/AppTransition;
    .local v19, "appCount":I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 211
    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/wm/ActivityTaskManagerInternal;->notifyAppTransitionStarting(Landroid/util/SparseIntArray;J)V

    .line 214
    const-wide/16 v2, 0x20

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 216
    iget-object v2, v1, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v3, v2, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/lit8 v4, v0, 0x1

    or-int/lit8 v4, v4, 0x2

    or-int/2addr v3, v4

    iput v3, v2, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 218
    return-void

    .line 195
    .end local v0  # "layoutRedo":I
    .end local v16  # "appTransition":Lcom/android/server/wm/AppTransition;
    .end local v17  # "topClosingApp":Lcom/android/server/wm/AppWindowToken;
    .end local v19  # "appCount":I
    .restart local v3  # "topClosingApp":Lcom/android/server/wm/AppWindowToken;
    .restart local v4  # "appTransition":Lcom/android/server/wm/AppTransition;
    .restart local v5  # "appCount":I
    :catchall_1de
    move-exception v0

    move-object/from16 v17, v3

    move-object/from16 v16, v4

    move/from16 v19, v5

    .end local v3  # "topClosingApp":Lcom/android/server/wm/AppWindowToken;
    .end local v4  # "appTransition":Lcom/android/server/wm/AppTransition;
    .end local v5  # "appCount":I
    .restart local v16  # "appTransition":Lcom/android/server/wm/AppTransition;
    .restart local v17  # "topClosingApp":Lcom/android/server/wm/AppWindowToken;
    .restart local v19  # "appCount":I
    goto :goto_203

    .end local v16  # "appTransition":Lcom/android/server/wm/AppTransition;
    .end local v17  # "topClosingApp":Lcom/android/server/wm/AppWindowToken;
    .end local v18  # "voiceInteraction":Z
    .end local v19  # "appCount":I
    .local v2, "voiceInteraction":Z
    .restart local v3  # "topClosingApp":Lcom/android/server/wm/AppWindowToken;
    .restart local v4  # "appTransition":Lcom/android/server/wm/AppTransition;
    .restart local v5  # "appCount":I
    :catchall_1e6
    move-exception v0

    move/from16 v18, v2

    move-object/from16 v17, v3

    move-object/from16 v16, v4

    move/from16 v19, v5

    .end local v2  # "voiceInteraction":Z
    .end local v3  # "topClosingApp":Lcom/android/server/wm/AppWindowToken;
    .end local v4  # "appTransition":Lcom/android/server/wm/AppTransition;
    .end local v5  # "appCount":I
    .restart local v16  # "appTransition":Lcom/android/server/wm/AppTransition;
    .restart local v17  # "topClosingApp":Lcom/android/server/wm/AppWindowToken;
    .restart local v18  # "voiceInteraction":Z
    .restart local v19  # "appCount":I
    goto :goto_203

    .end local v8  # "topChangingApp":Lcom/android/server/wm/AppWindowToken;
    .end local v16  # "appTransition":Lcom/android/server/wm/AppTransition;
    .end local v19  # "appCount":I
    .restart local v2  # "voiceInteraction":Z
    .restart local v4  # "appTransition":Lcom/android/server/wm/AppTransition;
    .restart local v5  # "appCount":I
    .local v18, "topChangingApp":Lcom/android/server/wm/AppWindowToken;
    :catchall_1f0
    move-exception v0

    move-object/from16 v16, v4

    move/from16 v19, v5

    move-object/from16 v8, v18

    move/from16 v18, v2

    .end local v2  # "voiceInteraction":Z
    .end local v4  # "appTransition":Lcom/android/server/wm/AppTransition;
    .end local v5  # "appCount":I
    .restart local v8  # "topChangingApp":Lcom/android/server/wm/AppWindowToken;
    .restart local v16  # "appTransition":Lcom/android/server/wm/AppTransition;
    .local v18, "voiceInteraction":Z
    .restart local v19  # "appCount":I
    goto :goto_203

    .end local v8  # "topChangingApp":Lcom/android/server/wm/AppWindowToken;
    .end local v16  # "appTransition":Lcom/android/server/wm/AppTransition;
    .restart local v4  # "appTransition":Lcom/android/server/wm/AppTransition;
    .restart local v5  # "appCount":I
    .local v18, "topChangingApp":Lcom/android/server/wm/AppWindowToken;
    .local v19, "voiceInteraction":Z
    :catchall_1fa
    move-exception v0

    move-object/from16 v16, v4

    move-object/from16 v8, v18

    move/from16 v18, v19

    move/from16 v19, v5

    .end local v4  # "appTransition":Lcom/android/server/wm/AppTransition;
    .end local v5  # "appCount":I
    .restart local v8  # "topChangingApp":Lcom/android/server/wm/AppWindowToken;
    .restart local v16  # "appTransition":Lcom/android/server/wm/AppTransition;
    .local v18, "voiceInteraction":Z
    .local v19, "appCount":I
    :goto_203
    iget-object v2, v1, Lcom/android/server/wm/AppTransitionController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mSurfaceAnimationRunner:Lcom/android/server/wm/SurfaceAnimationRunner;

    invoke-virtual {v2}, Lcom/android/server/wm/SurfaceAnimationRunner;->continueStartingAnimations()V

    throw v0

    .line 101
    .end local v6  # "animLp":Landroid/view/WindowManager$LayoutParams;
    .end local v7  # "hasWallpaperTarget":Z
    .end local v8  # "topChangingApp":Lcom/android/server/wm/AppWindowToken;
    .end local v9  # "openingAppHasWallpaper":Z
    .end local v10  # "closingAppHasWallpaper":Z
    .end local v11  # "transit":I
    .end local v12  # "activityTypes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    .end local v13  # "allowAnimations":Z
    .end local v14  # "animLpToken":Lcom/android/server/wm/AppWindowToken;
    .end local v15  # "topOpeningApp":Lcom/android/server/wm/AppWindowToken;
    .end local v16  # "appTransition":Lcom/android/server/wm/AppTransition;
    .end local v17  # "topClosingApp":Lcom/android/server/wm/AppWindowToken;
    .end local v18  # "voiceInteraction":Z
    .end local v19  # "appCount":I
    :cond_20b
    :goto_20b
    return-void
.end method

.method isTransitWithinTask(ILcom/android/server/wm/Task;)Z
    .registers 7
    .param p1, "transit"  # I
    .param p2, "task"  # Lcom/android/server/wm/Task;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 648
    const/4 v0, 0x0

    if-eqz p2, :cond_53

    iget-object v1, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mChangingApps:Landroid/util/ArraySet;

    .line 649
    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_e

    goto :goto_53

    .line 654
    :cond_e
    const/4 v1, 0x6

    if-eq p1, v1, :cond_19

    const/4 v1, 0x7

    if-eq p1, v1, :cond_19

    const/16 v1, 0x12

    if-eq p1, v1, :cond_19

    .line 658
    return v0

    .line 661
    :cond_19
    iget-object v1, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_21
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/AppWindowToken;

    .line 662
    .local v2, "activity":Lcom/android/server/wm/AppWindowToken;
    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v3

    .line 663
    .local v3, "activityTask":Lcom/android/server/wm/Task;
    if-eq v3, p2, :cond_34

    .line 664
    return v0

    .line 666
    .end local v2  # "activity":Lcom/android/server/wm/AppWindowToken;
    .end local v3  # "activityTask":Lcom/android/server/wm/Task;
    :cond_34
    goto :goto_21

    .line 667
    :cond_35
    iget-object v1, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_51

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/AppWindowToken;

    .line 668
    .restart local v2  # "activity":Lcom/android/server/wm/AppWindowToken;
    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v3

    if-eq v3, p2, :cond_50

    .line 669
    return v0

    .line 671
    .end local v2  # "activity":Lcom/android/server/wm/AppWindowToken;
    :cond_50
    goto :goto_3d

    .line 672
    :cond_51
    const/4 v0, 0x1

    return v0

    .line 652
    :cond_53
    :goto_53
    return v0
.end method

.method maybeUpdateTransitToTranslucentAnim(I)I
    .registers 9
    .param p1, "transit"  # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 608
    invoke-static {p1}, Lcom/android/server/wm/AppTransition;->isChangeTransit(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 610
    return p1

    .line 612
    :cond_7
    invoke-static {p1}, Lcom/android/server/wm/AppTransition;->isTaskTransit(I)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_17

    .line 613
    invoke-static {p1}, Lcom/android/server/wm/AppTransition;->isActivityTransit(I)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_17

    :cond_15
    const/4 v0, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    move v0, v1

    .line 614
    .local v0, "taskOrActivity":Z
    :goto_18
    const/4 v2, 0x1

    .line 615
    .local v2, "allOpeningVisible":Z
    iget-object v3, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v3, v3, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v3

    xor-int/2addr v3, v1

    .line 616
    .local v3, "allTranslucentOpeningApps":Z
    iget-object v4, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v4, v4, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v4

    sub-int/2addr v4, v1

    .local v4, "i":I
    :goto_2b
    if-ltz v4, :cond_48

    .line 617
    iget-object v5, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v5, v5, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v5, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/AppWindowToken;

    .line 618
    .local v5, "token":Lcom/android/server/wm/AppWindowToken;
    invoke-virtual {v5}, Lcom/android/server/wm/AppWindowToken;->isVisible()Z

    move-result v6

    if-nez v6, :cond_45

    .line 619
    const/4 v2, 0x0

    .line 620
    invoke-virtual {v5}, Lcom/android/server/wm/AppWindowToken;->fillsParent()Z

    move-result v6

    if-eqz v6, :cond_45

    .line 621
    const/4 v3, 0x0

    .line 616
    .end local v5  # "token":Lcom/android/server/wm/AppWindowToken;
    :cond_45
    add-int/lit8 v4, v4, -0x1

    goto :goto_2b

    .line 625
    .end local v4  # "i":I
    :cond_48
    iget-object v4, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v4, v4, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v4

    xor-int/2addr v4, v1

    .line 626
    .local v4, "allTranslucentClosingApps":Z
    iget-object v5, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v5, v5, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v5

    sub-int/2addr v5, v1

    .local v5, "i":I
    :goto_5a
    if-ltz v5, :cond_71

    .line 627
    iget-object v1, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v1, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->fillsParent()Z

    move-result v1

    if-eqz v1, :cond_6e

    .line 628
    const/4 v4, 0x0

    .line 629
    goto :goto_71

    .line 626
    :cond_6e
    add-int/lit8 v5, v5, -0x1

    goto :goto_5a

    .line 633
    .end local v5  # "i":I
    :cond_71
    :goto_71
    if-eqz v0, :cond_7a

    if-eqz v4, :cond_7a

    if-eqz v2, :cond_7a

    .line 634
    const/16 v1, 0x19

    return v1

    .line 636
    :cond_7a
    if-eqz v0, :cond_8b

    if-eqz v3, :cond_8b

    iget-object v1, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_8b

    .line 637
    const/16 v1, 0x18

    return v1

    .line 639
    :cond_8b
    return p1
.end method

.method registerRemoteAnimations(Landroid/view/RemoteAnimationDefinition;)V
    .registers 2
    .param p1, "definition"  # Landroid/view/RemoteAnimationDefinition;

    .line 91
    iput-object p1, p0, Lcom/android/server/wm/AppTransitionController;->mRemoteAnimationDefinition:Landroid/view/RemoteAnimationDefinition;

    .line 92
    return-void
.end method
