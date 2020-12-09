.class public abstract Lcom/android/server/wm/ConfigurationContainer;
.super Ljava/lang/Object;
.source "ConfigurationContainer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Lcom/android/server/wm/ConfigurationContainer;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final BOUNDS_CHANGE_NONE:I = 0x0

.field static final BOUNDS_CHANGE_POSITION:I = 0x1

.field static final BOUNDS_CHANGE_SIZE:I = 0x2


# instance fields
.field private mChangeListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/ConfigurationContainerListener;",
            ">;"
        }
    .end annotation
.end field

.field private mFullConfiguration:Landroid/content/res/Configuration;

.field private mHasOverrideConfiguration:Z

.field private mLastOverrideConfigurationChanges:I

.field private mMergedOverrideConfiguration:Landroid/content/res/Configuration;

.field private mRequestedOverrideConfiguration:Landroid/content/res/Configuration;

.field private mResolvedOverrideConfiguration:Landroid/content/res/Configuration;

.field private mReturnBounds:Landroid/graphics/Rect;

.field private final mTmpConfig:Landroid/content/res/Configuration;

.field private final mTmpRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mReturnBounds:Landroid/graphics/Rect;

    .line 63
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mRequestedOverrideConfiguration:Landroid/content/res/Configuration;

    .line 69
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mResolvedOverrideConfiguration:Landroid/content/res/Configuration;

    .line 78
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mFullConfiguration:Landroid/content/res/Configuration;

    .line 88
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mMergedOverrideConfiguration:Landroid/content/res/Configuration;

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mChangeListeners:Ljava/util/ArrayList;

    .line 93
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mTmpConfig:Landroid/content/res/Configuration;

    .line 96
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mTmpRect:Landroid/graphics/Rect;

    return-void
.end method

.method public static equivalentBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .registers 3

    .line 238
    if-eq p0, p1, :cond_1f

    if-eqz p0, :cond_12

    .line 239
    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    invoke-virtual {p0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    if-eqz p1, :cond_1f

    :cond_12
    if-eqz p1, :cond_1d

    .line 240
    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1d

    if-nez p0, :cond_1d

    goto :goto_1f

    :cond_1d
    const/4 p0, 0x0

    goto :goto_20

    :cond_1f
    :goto_1f
    const/4 p0, 0x1

    .line 238
    :goto_20
    return p0
.end method


# virtual methods
.method containsListener(Lcom/android/server/wm/ConfigurationContainerListener;)Z
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 542
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method diffRequestedOverrideBounds(Landroid/graphics/Rect;)I
    .registers 6

    .line 322
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ConfigurationContainer;->equivalentRequestedOverrideBounds(Landroid/graphics/Rect;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 323
    return v1

    .line 326
    :cond_8
    nop

    .line 328
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 330
    if-eqz p1, :cond_1b

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->left:I

    if-ne v2, v3, :cond_1b

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    if-eq v2, v3, :cond_1c

    .line 332
    :cond_1b
    const/4 v1, 0x1

    .line 335
    :cond_1c
    if-eqz p1, :cond_32

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-ne v2, v3, :cond_32

    .line 336
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    if-eq v0, p1, :cond_34

    .line 337
    :cond_32
    or-int/lit8 v1, v1, 0x2

    .line 340
    :cond_34
    return v1
.end method

.method public dumpChildrenNames(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 8

    .line 594
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 595
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 596
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getActivityType()I

    move-result v2

    invoke-static {v2}, Landroid/app/WindowConfiguration;->activityTypeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 597
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v2

    invoke-static {v2}, Landroid/app/WindowConfiguration;->windowingModeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " override-mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 598
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideWindowingMode()I

    move-result v2

    invoke-static {v2}, Landroid/app/WindowConfiguration;->windowingModeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 595
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 599
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_5a
    if-ltz v1, :cond_80

    .line 600
    invoke-virtual {p0, v1}, Lcom/android/server/wm/ConfigurationContainer;->getChildAt(I)Lcom/android/server/wm/ConfigurationContainer;

    move-result-object v2

    .line 601
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 602
    invoke-virtual {v2, p1, v0}, Lcom/android/server/wm/ConfigurationContainer;->dumpChildrenNames(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 599
    add-int/lit8 v1, v1, -0x1

    goto :goto_5a

    .line 604
    :cond_80
    return-void
.end method

.method public equivalentRequestedOverrideBounds(Landroid/graphics/Rect;)Z
    .registers 3

    .line 231
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/server/wm/ConfigurationContainer;->equivalentBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result p1

    return p1
.end method

.method public getActivityType()I
    .registers 2

    .line 441
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mFullConfiguration:Landroid/content/res/Configuration;

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getActivityType()I

    move-result v0

    return v0
.end method

.method public getBounds()Landroid/graphics/Rect;
    .registers 3

    .line 249
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mReturnBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 250
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mReturnBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getBounds(Landroid/graphics/Rect;)V
    .registers 3

    .line 254
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 255
    return-void
.end method

.method protected abstract getChildAt(I)Lcom/android/server/wm/ConfigurationContainer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation
.end method

.method protected abstract getChildCount()I
.end method

.method public getConfiguration()Landroid/content/res/Configuration;
    .registers 2

    .line 111
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mFullConfiguration:Landroid/content/res/Configuration;

    return-object v0
.end method

.method getLastOverrideConfigurationChanges()I
    .registers 2

    .line 116
    iget v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mLastOverrideConfigurationChanges:I

    return v0
.end method

.method public getMergedOverrideConfiguration()Landroid/content/res/Configuration;
    .registers 2

    .line 188
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mMergedOverrideConfiguration:Landroid/content/res/Configuration;

    return-object v0
.end method

.method getName()Ljava/lang/String;
    .registers 2

    .line 607
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getParent()Lcom/android/server/wm/ConfigurationContainer;
.end method

.method public getPosition(Landroid/graphics/Point;)V
    .registers 4

    .line 261
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 262
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Point;->set(II)V

    .line 263
    return-void
.end method

.method public getRequestedOverrideBounds()Landroid/graphics/Rect;
    .registers 3

    .line 271
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mReturnBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 273
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mReturnBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getRequestedOverrideBounds(Landroid/graphics/Rect;)V
    .registers 3

    .line 289
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 290
    return-void
.end method

.method public getRequestedOverrideConfiguration()Landroid/content/res/Configuration;
    .registers 2

    .line 160
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mRequestedOverrideConfiguration:Landroid/content/res/Configuration;

    return-object v0
.end method

.method public getRequestedOverrideWindowingMode()I
    .registers 2

    .line 358
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mRequestedOverrideConfiguration:Landroid/content/res/Configuration;

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    return v0
.end method

.method getResolvedOverrideConfiguration()Landroid/content/res/Configuration;
    .registers 2

    .line 165
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mResolvedOverrideConfiguration:Landroid/content/res/Configuration;

    return-object v0
.end method

.method public getWindowConfiguration()Landroid/app/WindowConfiguration;
    .registers 2

    .line 348
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mFullConfiguration:Landroid/content/res/Configuration;

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    return-object v0
.end method

.method public getWindowingMode()I
    .registers 2

    .line 353
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mFullConfiguration:Landroid/content/res/Configuration;

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    return v0
.end method

.method public hasCompatibleActivityType(Lcom/android/server/wm/ConfigurationContainer;)Z
    .registers 6

    .line 481
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getActivityType()I

    move-result v0

    .line 482
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getActivityType()I

    move-result p1

    .line 484
    const/4 v1, 0x1

    if-ne v0, p1, :cond_c

    .line 485
    return v1

    .line 487
    :cond_c
    const/4 v2, 0x4

    const/4 v3, 0x0

    if-ne v0, v2, :cond_11

    .line 489
    return v3

    .line 492
    :cond_11
    if-eqz v0, :cond_17

    if-nez p1, :cond_16

    goto :goto_17

    :cond_16
    move v1, v3

    :cond_17
    :goto_17
    return v1
.end method

.method public hasOverrideBounds()Z
    .registers 2

    .line 281
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method hasOverrideConfiguration()Z
    .registers 2

    .line 344
    iget-boolean v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mHasOverrideConfiguration:Z

    return v0
.end method

.method public inFreeformWindowingMode()Z
    .registers 3

    .line 435
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mFullConfiguration:Landroid/content/res/Configuration;

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method public inMultiWindowMode()Z
    .registers 3

    .line 392
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mFullConfiguration:Landroid/content/res/Configuration;

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 393
    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    .line 394
    const/4 v1, 0x1

    if-eq v0, v1, :cond_e

    if-eqz v0, :cond_e

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    return v1
.end method

.method public inPinnedWindowingMode()Z
    .registers 3

    .line 431
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mFullConfiguration:Landroid/content/res/Configuration;

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method public inSplitScreenPrimaryWindowingMode()Z
    .registers 3

    .line 416
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mFullConfiguration:Landroid/content/res/Configuration;

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method public inSplitScreenSecondaryWindowingMode()Z
    .registers 3

    .line 409
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mFullConfiguration:Landroid/content/res/Configuration;

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 410
    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    .line 412
    const/4 v1, 0x4

    if-ne v0, v1, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method public inSplitScreenWindowingMode()Z
    .registers 3

    .line 400
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mFullConfiguration:Landroid/content/res/Configuration;

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 401
    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    .line 403
    const/4 v1, 0x3

    if-eq v0, v1, :cond_11

    const/4 v1, 0x4

    if-ne v0, v1, :cond_f

    goto :goto_11

    :cond_f
    const/4 v0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v0, 0x1

    :goto_12
    return v0
.end method

.method public isActivityTypeAssistant()Z
    .registers 3

    .line 468
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getActivityType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public isActivityTypeHome()Z
    .registers 3

    .line 460
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getActivityType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public isActivityTypeRecents()Z
    .registers 3

    .line 464
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getActivityType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public isActivityTypeStandard()Z
    .registers 3

    .line 472
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getActivityType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    return v1
.end method

.method public isActivityTypeStandardOrUndefined()Z
    .registers 3

    .line 476
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getActivityType()I

    move-result v0

    .line 477
    const/4 v1, 0x1

    if-eq v0, v1, :cond_b

    if-nez v0, :cond_a

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :cond_b
    :goto_b
    return v1
.end method

.method public isAlwaysOnTop()Z
    .registers 2

    .line 611
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mFullConfiguration:Landroid/content/res/Configuration;

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->isAlwaysOnTop()Z

    move-result v0

    return v0
.end method

.method public isCompatible(II)Z
    .registers 7

    .line 509
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getActivityType()I

    move-result v0

    .line 510
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v1

    .line 511
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, p2, :cond_e

    move v0, v3

    goto :goto_f

    :cond_e
    move v0, v2

    .line 512
    :goto_f
    if-ne v1, p1, :cond_12

    move v2, v3

    .line 514
    :cond_12
    if-eqz v0, :cond_17

    if-eqz v2, :cond_17

    .line 515
    return v3

    .line 518
    :cond_17
    if-eqz p2, :cond_1b

    if-ne p2, v3, :cond_21

    .line 519
    :cond_1b
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeStandardOrUndefined()Z

    move-result p1

    if-nez p1, :cond_22

    .line 521
    :cond_21
    return v0

    .line 525
    :cond_22
    return v2
.end method

.method public matchParentBounds()Z
    .registers 2

    .line 220
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4

    .line 124
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mTmpConfig:Landroid/content/res/Configuration;

    iget-object v1, p0, Lcom/android/server/wm/ConfigurationContainer;->mResolvedOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 125
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ConfigurationContainer;->resolveOverrideConfiguration(Landroid/content/res/Configuration;)V

    .line 126
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mFullConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 127
    iget-object p1, p0, Lcom/android/server/wm/ConfigurationContainer;->mFullConfiguration:Landroid/content/res/Configuration;

    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mResolvedOverrideConfiguration:Landroid/content/res/Configuration;

    .line 128
    invoke-virtual {p1, v0}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    move-result p1

    iput p1, p0, Lcom/android/server/wm/ConfigurationContainer;->mLastOverrideConfigurationChanges:I

    .line 129
    iget-object p1, p0, Lcom/android/server/wm/ConfigurationContainer;->mTmpConfig:Landroid/content/res/Configuration;

    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mResolvedOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p1, v0}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result p1

    if-nez p1, :cond_40

    .line 130
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->onMergedOverrideConfigurationChanged()V

    .line 137
    iget-object p1, p0, Lcom/android/server/wm/ConfigurationContainer;->mChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_2e
    if-ltz p1, :cond_40

    .line 138
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ConfigurationContainerListener;

    iget-object v1, p0, Lcom/android/server/wm/ConfigurationContainer;->mResolvedOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-interface {v0, v1}, Lcom/android/server/wm/ConfigurationContainerListener;->onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 137
    add-int/lit8 p1, p1, -0x1

    goto :goto_2e

    .line 142
    :cond_40
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getChildCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_46
    if-ltz p1, :cond_54

    .line 143
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ConfigurationContainer;->getChildAt(I)Lcom/android/server/wm/ConfigurationContainer;

    move-result-object v0

    .line 144
    iget-object v1, p0, Lcom/android/server/wm/ConfigurationContainer;->mFullConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ConfigurationContainer;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 142
    add-int/lit8 p1, p1, -0x1

    goto :goto_46

    .line 146
    :cond_54
    return-void
.end method

.method onMergedOverrideConfigurationChanged()V
    .registers 3

    .line 198
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getParent()Lcom/android/server/wm/ConfigurationContainer;

    move-result-object v0

    .line 199
    if-eqz v0, :cond_17

    .line 200
    iget-object v1, p0, Lcom/android/server/wm/ConfigurationContainer;->mMergedOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getMergedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 201
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mMergedOverrideConfiguration:Landroid/content/res/Configuration;

    iget-object v1, p0, Lcom/android/server/wm/ConfigurationContainer;->mResolvedOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    goto :goto_1e

    .line 203
    :cond_17
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mMergedOverrideConfiguration:Landroid/content/res/Configuration;

    iget-object v1, p0, Lcom/android/server/wm/ConfigurationContainer;->mResolvedOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 205
    :goto_1e
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_24
    if-ltz v0, :cond_30

    .line 206
    invoke-virtual {p0, v0}, Lcom/android/server/wm/ConfigurationContainer;->getChildAt(I)Lcom/android/server/wm/ConfigurationContainer;

    move-result-object v1

    .line 207
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->onMergedOverrideConfigurationChanged()V

    .line 205
    add-int/lit8 v0, v0, -0x1

    goto :goto_24

    .line 209
    :cond_30
    return-void
.end method

.method onParentChanged()V
    .registers 2

    .line 549
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getParent()Lcom/android/server/wm/ConfigurationContainer;

    move-result-object v0

    .line 552
    if-eqz v0, :cond_e

    .line 554
    iget-object v0, v0, Lcom/android/server/wm/ConfigurationContainer;->mFullConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ConfigurationContainer;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 556
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->onMergedOverrideConfigurationChanged()V

    .line 558
    :cond_e
    return-void
.end method

.method public onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    .line 176
    sget-object v0, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mHasOverrideConfiguration:Z

    .line 177
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mRequestedOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 179
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getParent()Lcom/android/server/wm/ConfigurationContainer;

    move-result-object p1

    .line 180
    if-eqz p1, :cond_1a

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    goto :goto_1c

    :cond_1a
    sget-object p1, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    :goto_1c
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ConfigurationContainer;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 181
    return-void
.end method

.method public registerConfigurationChangeListener(Lcom/android/server/wm/ConfigurationContainerListener;)V
    .registers 3

    .line 529
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 530
    return-void

    .line 532
    :cond_9
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 533
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mResolvedOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-interface {p1, v0}, Lcom/android/server/wm/ConfigurationContainerListener;->onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 534
    return-void
.end method

.method resolveOverrideConfiguration(Landroid/content/res/Configuration;)V
    .registers 3

    .line 155
    iget-object p1, p0, Lcom/android/server/wm/ConfigurationContainer;->mResolvedOverrideConfiguration:Landroid/content/res/Configuration;

    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mRequestedOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p1, v0}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 156
    return-void
.end method

.method public setActivityType(I)V
    .registers 5

    .line 446
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getActivityType()I

    move-result v0

    .line 447
    if-ne v0, p1, :cond_7

    .line 448
    return-void

    .line 450
    :cond_7
    if-nez v0, :cond_1f

    .line 454
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mTmpConfig:Landroid/content/res/Configuration;

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 455
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mTmpConfig:Landroid/content/res/Configuration;

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0, p1}, Landroid/app/WindowConfiguration;->setActivityType(I)V

    .line 456
    iget-object p1, p0, Lcom/android/server/wm/ConfigurationContainer;->mTmpConfig:Landroid/content/res/Configuration;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ConfigurationContainer;->onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 457
    return-void

    .line 451
    :cond_1f
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t change activity type once set: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " activityType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 452
    invoke-static {p1}, Landroid/app/WindowConfiguration;->activityTypeToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAlwaysOnTop(Z)V
    .registers 4

    .line 375
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mTmpConfig:Landroid/content/res/Configuration;

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 376
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mTmpConfig:Landroid/content/res/Configuration;

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0, p1}, Landroid/app/WindowConfiguration;->setAlwaysOnTop(Z)V

    .line 377
    iget-object p1, p0, Lcom/android/server/wm/ConfigurationContainer;->mTmpConfig:Landroid/content/res/Configuration;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ConfigurationContainer;->onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 378
    return-void
.end method

.method public setBounds(IIII)I
    .registers 6

    .line 317
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 318
    iget-object p1, p0, Lcom/android/server/wm/ConfigurationContainer;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ConfigurationContainer;->setBounds(Landroid/graphics/Rect;)I

    move-result p1

    return p1
.end method

.method public setBounds(Landroid/graphics/Rect;)I
    .registers 5

    .line 302
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ConfigurationContainer;->diffRequestedOverrideBounds(Landroid/graphics/Rect;)I

    move-result v0

    .line 304
    if-nez v0, :cond_7

    .line 305
    return v0

    .line 309
    :cond_7
    iget-object v1, p0, Lcom/android/server/wm/ConfigurationContainer;->mTmpConfig:Landroid/content/res/Configuration;

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 310
    iget-object v1, p0, Lcom/android/server/wm/ConfigurationContainer;->mTmpConfig:Landroid/content/res/Configuration;

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1, p1}, Landroid/app/WindowConfiguration;->setBounds(Landroid/graphics/Rect;)V

    .line 311
    iget-object p1, p0, Lcom/android/server/wm/ConfigurationContainer;->mTmpConfig:Landroid/content/res/Configuration;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ConfigurationContainer;->onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 313
    return v0
.end method

.method setDisplayWindowingMode(I)V
    .registers 4

    .line 382
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mTmpConfig:Landroid/content/res/Configuration;

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 383
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mTmpConfig:Landroid/content/res/Configuration;

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0, p1}, Landroid/app/WindowConfiguration;->setDisplayWindowingMode(I)V

    .line 384
    iget-object p1, p0, Lcom/android/server/wm/ConfigurationContainer;->mTmpConfig:Landroid/content/res/Configuration;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ConfigurationContainer;->onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 385
    return-void
.end method

.method public setWindowingMode(I)V
    .registers 4

    .line 363
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mTmpConfig:Landroid/content/res/Configuration;

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 364
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mTmpConfig:Landroid/content/res/Configuration;

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0, p1}, Landroid/app/WindowConfiguration;->setWindowingMode(I)V

    .line 365
    iget-object p1, p0, Lcom/android/server/wm/ConfigurationContainer;->mTmpConfig:Landroid/content/res/Configuration;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ConfigurationContainer;->onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 366
    return-void
.end method

.method public supportsSplitScreenWindowingMode()Z
    .registers 2

    .line 427
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mFullConfiguration:Landroid/content/res/Configuration;

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->supportSplitScreenWindowingMode()Z

    move-result v0

    return v0
.end method

.method public unregisterConfigurationChangeListener(Lcom/android/server/wm/ConfigurationContainerListener;)V
    .registers 3

    .line 537
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 538
    return-void
.end method

.method protected writeToProto(Landroid/util/proto/ProtoOutputStream;JI)V
    .registers 10

    .line 574
    if-eqz p4, :cond_7

    iget-boolean v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mHasOverrideConfiguration:Z

    if-nez v0, :cond_7

    .line 575
    return-void

    .line 578
    :cond_7
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 579
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mRequestedOverrideConfiguration:Landroid/content/res/Configuration;

    const-wide v1, 0x10b00000001L

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-ne p4, v3, :cond_18

    const/4 v3, 0x1

    goto :goto_19

    :cond_18
    move v3, v4

    :goto_19
    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/content/res/Configuration;->writeToProto(Landroid/util/proto/ProtoOutputStream;JZ)V

    .line 581
    if-nez p4, :cond_32

    .line 582
    iget-object p4, p0, Lcom/android/server/wm/ConfigurationContainer;->mFullConfiguration:Landroid/content/res/Configuration;

    const-wide v0, 0x10b00000002L

    invoke-virtual {p4, p1, v0, v1, v4}, Landroid/content/res/Configuration;->writeToProto(Landroid/util/proto/ProtoOutputStream;JZ)V

    .line 583
    iget-object p4, p0, Lcom/android/server/wm/ConfigurationContainer;->mMergedOverrideConfiguration:Landroid/content/res/Configuration;

    const-wide v0, 0x10b00000003L

    invoke-virtual {p4, p1, v0, v1, v4}, Landroid/content/res/Configuration;->writeToProto(Landroid/util/proto/ProtoOutputStream;JZ)V

    .line 586
    :cond_32
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 587
    return-void
.end method
