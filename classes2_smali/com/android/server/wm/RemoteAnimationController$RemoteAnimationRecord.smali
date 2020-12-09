.class public Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;
.super Ljava/lang/Object;
.source "RemoteAnimationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/RemoteAnimationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RemoteAnimationRecord"
.end annotation


# instance fields
.field mAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

.field final mAppWindowToken:Lcom/android/server/wm/AppWindowToken;

.field final mStartBounds:Landroid/graphics/Rect;

.field mTarget:Landroid/view/RemoteAnimationTarget;

.field mThumbnailAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

.field final synthetic this$0:Lcom/android/server/wm/RemoteAnimationController;


# direct methods
.method constructor <init>(Lcom/android/server/wm/RemoteAnimationController;Lcom/android/server/wm/AppWindowToken;Landroid/graphics/Point;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 7

    .line 324
    iput-object p1, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->this$0:Lcom/android/server/wm/RemoteAnimationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 318
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mThumbnailAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    .line 325
    iput-object p2, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mAppWindowToken:Lcom/android/server/wm/AppWindowToken;

    .line 326
    new-instance p2, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    invoke-direct {p2, p1, p0, p3, p4}, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;-><init>(Lcom/android/server/wm/RemoteAnimationController;Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;Landroid/graphics/Point;Landroid/graphics/Rect;)V

    iput-object p2, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    .line 327
    if-eqz p5, :cond_44

    .line 328
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2, p5}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object p2, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mStartBounds:Landroid/graphics/Rect;

    .line 329
    invoke-static {p1}, Lcom/android/server/wm/RemoteAnimationController;->access$200(Lcom/android/server/wm/RemoteAnimationController;)Landroid/graphics/Rect;

    move-result-object p2

    invoke-virtual {p2, p5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 330
    invoke-static {p1}, Lcom/android/server/wm/RemoteAnimationController;->access$200(Lcom/android/server/wm/RemoteAnimationController;)Landroid/graphics/Rect;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p2, p3, p3}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 331
    invoke-static {p1}, Lcom/android/server/wm/RemoteAnimationController;->access$300(Lcom/android/server/wm/RemoteAnimationController;)Landroid/view/RemoteAnimationAdapter;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/RemoteAnimationAdapter;->getChangeNeedsSnapshot()Z

    move-result p2

    if-eqz p2, :cond_46

    .line 332
    new-instance p2, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    new-instance p4, Landroid/graphics/Point;

    invoke-direct {p4, p3, p3}, Landroid/graphics/Point;-><init>(II)V

    .line 333
    invoke-static {p1}, Lcom/android/server/wm/RemoteAnimationController;->access$200(Lcom/android/server/wm/RemoteAnimationController;)Landroid/graphics/Rect;

    move-result-object p3

    invoke-direct {p2, p1, p0, p4, p3}, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;-><init>(Lcom/android/server/wm/RemoteAnimationController;Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;Landroid/graphics/Point;Landroid/graphics/Rect;)V

    iput-object p2, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mThumbnailAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    goto :goto_46

    .line 336
    :cond_44
    iput-object v0, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mStartBounds:Landroid/graphics/Rect;

    .line 338
    :cond_46
    :goto_46
    return-void
.end method

.method private getMode()I
    .registers 4

    .line 362
    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mAppWindowToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 363
    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    iget-object v2, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mAppWindowToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 364
    const/4 v0, 0x0

    return v0

    .line 365
    :cond_12
    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mChangingApps:Landroid/util/ArraySet;

    iget-object v1, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mAppWindowToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 366
    const/4 v0, 0x2

    return v0

    .line 368
    :cond_1e
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method createRemoteAnimationTarget()Landroid/view/RemoteAnimationTarget;
    .registers 20

    .line 341
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mAppWindowToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    .line 342
    iget-object v2, v0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mAppWindowToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v2

    .line 343
    const/4 v3, 0x0

    if-eqz v1, :cond_7a

    if-eqz v2, :cond_7a

    iget-object v4, v0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    if-eqz v4, :cond_7a

    .line 344
    invoke-static {v4}, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->access$000(Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;)Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    move-result-object v4

    if-eqz v4, :cond_7a

    iget-object v4, v0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    iget-object v4, v4, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->mCapturedLeash:Landroid/view/SurfaceControl;

    if-nez v4, :cond_24

    goto :goto_7a

    .line 348
    :cond_24
    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    .line 349
    invoke-virtual {v2, v11}, Lcom/android/server/wm/WindowState;->getContentInsets(Landroid/graphics/Rect;)V

    .line 350
    iget-object v4, v0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mAppWindowToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v4}, Lcom/android/server/wm/AppWindowToken;->getLetterboxInsets()Landroid/graphics/Rect;

    move-result-object v4

    invoke-static {v11, v4}, Lcom/android/server/wm/utils/InsetUtils;->addInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 351
    new-instance v4, Landroid/view/RemoteAnimationTarget;

    iget v6, v1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->getMode()I

    move-result v7

    iget-object v5, v0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    iget-object v8, v5, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->mCapturedLeash:Landroid/view/SurfaceControl;

    iget-object v5, v0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mAppWindowToken:Lcom/android/server/wm/AppWindowToken;

    .line 352
    invoke-virtual {v5}, Lcom/android/server/wm/AppWindowToken;->fillsParent()Z

    move-result v5

    xor-int/lit8 v9, v5, 0x1

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v10, v2, Lcom/android/server/wm/WindowStateAnimator;->mLastClipRect:Landroid/graphics/Rect;

    iget-object v2, v0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mAppWindowToken:Lcom/android/server/wm/AppWindowToken;

    .line 354
    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowToken;->getPrefixOrderIndex()I

    move-result v12

    iget-object v2, v0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    invoke-static {v2}, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->access$400(Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;)Landroid/graphics/Point;

    move-result-object v13

    iget-object v2, v0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    .line 355
    invoke-static {v2}, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->access$500(Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;)Landroid/graphics/Rect;

    move-result-object v14

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v15

    const/16 v16, 0x0

    .line 356
    iget-object v1, v0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mThumbnailAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    if-eqz v1, :cond_6b

    iget-object v3, v1, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->mCapturedLeash:Landroid/view/SurfaceControl;

    :cond_6b
    move-object/from16 v17, v3

    iget-object v1, v0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mStartBounds:Landroid/graphics/Rect;

    move-object v5, v4

    move-object/from16 v18, v1

    invoke-direct/range {v5 .. v18}, Landroid/view/RemoteAnimationTarget;-><init>(IILandroid/view/SurfaceControl;ZLandroid/graphics/Rect;Landroid/graphics/Rect;ILandroid/graphics/Point;Landroid/graphics/Rect;Landroid/app/WindowConfiguration;ZLandroid/view/SurfaceControl;Landroid/graphics/Rect;)V

    iput-object v4, v0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mTarget:Landroid/view/RemoteAnimationTarget;

    .line 358
    iget-object v0, v0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mTarget:Landroid/view/RemoteAnimationTarget;

    return-object v0

    .line 346
    :cond_7a
    :goto_7a
    return-object v3
.end method
