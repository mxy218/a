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
    .registers 9
    .param p1, "this$0"  # Lcom/android/server/wm/RemoteAnimationController;
    .param p2, "appWindowToken"  # Lcom/android/server/wm/AppWindowToken;
    .param p3, "endPos"  # Landroid/graphics/Point;
    .param p4, "endBounds"  # Landroid/graphics/Rect;
    .param p5, "startBounds"  # Landroid/graphics/Rect;

    .line 324
    iput-object p1, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->this$0:Lcom/android/server/wm/RemoteAnimationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 318
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mThumbnailAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    .line 325
    iput-object p2, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mAppWindowToken:Lcom/android/server/wm/AppWindowToken;

    .line 326
    new-instance v1, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    invoke-direct {v1, p1, p0, p3, p4}, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;-><init>(Lcom/android/server/wm/RemoteAnimationController;Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;Landroid/graphics/Point;Landroid/graphics/Rect;)V

    iput-object v1, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    .line 327
    if-eqz p5, :cond_44

    .line 328
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p5}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mStartBounds:Landroid/graphics/Rect;

    .line 329
    invoke-static {p1}, Lcom/android/server/wm/RemoteAnimationController;->access$300(Lcom/android/server/wm/RemoteAnimationController;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0, p5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 330
    invoke-static {p1}, Lcom/android/server/wm/RemoteAnimationController;->access$300(Lcom/android/server/wm/RemoteAnimationController;)Landroid/graphics/Rect;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 331
    invoke-static {p1}, Lcom/android/server/wm/RemoteAnimationController;->access$400(Lcom/android/server/wm/RemoteAnimationController;)Landroid/view/RemoteAnimationAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/RemoteAnimationAdapter;->getChangeNeedsSnapshot()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 332
    new-instance v0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 333
    invoke-static {p1}, Lcom/android/server/wm/RemoteAnimationController;->access$300(Lcom/android/server/wm/RemoteAnimationController;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {v0, p1, p0, v2, v1}, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;-><init>(Lcom/android/server/wm/RemoteAnimationController;Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;Landroid/graphics/Point;Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mThumbnailAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

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

    .line 365
    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mAppWindowToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 366
    .local v0, "dc":Lcom/android/server/wm/DisplayContent;
    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    iget-object v2, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mAppWindowToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 367
    const/4 v1, 0x0

    return v1

    .line 368
    :cond_12
    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mChangingApps:Landroid/util/ArraySet;

    iget-object v2, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mAppWindowToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 369
    const/4 v1, 0x2

    return v1

    .line 371
    :cond_1e
    const/4 v1, 0x1

    return v1
.end method


# virtual methods
.method createRemoteAnimationTarget()Landroid/view/RemoteAnimationTarget;
    .registers 21

    .line 341
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mAppWindowToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    .line 342
    .local v1, "task":Lcom/android/server/wm/Task;
    iget-object v2, v0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mAppWindowToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v2

    .line 343
    .local v2, "mainWindow":Lcom/android/server/wm/WindowState;
    const/4 v3, 0x0

    if-eqz v1, :cond_7f

    if-eqz v2, :cond_7f

    iget-object v4, v0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    if-eqz v4, :cond_7f

    .line 344
    invoke-static {v4}, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->access$000(Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;)Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    move-result-object v4

    if-eqz v4, :cond_7f

    iget-object v4, v0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    iget-object v4, v4, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->mCapturedLeash:Landroid/view/SurfaceControl;

    if-nez v4, :cond_24

    goto :goto_7f

    .line 351
    :cond_24
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getContentInsets()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getStableInsets()Landroid/graphics/Rect;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/wm/utils/InsetUtils;->minInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v4

    .line 353
    .local v4, "insets":Landroid/graphics/Rect;
    iget-object v5, v0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mAppWindowToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v5}, Lcom/android/server/wm/AppWindowToken;->getLetterboxInsets()Landroid/graphics/Rect;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/wm/utils/InsetUtils;->addInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 354
    new-instance v5, Landroid/view/RemoteAnimationTarget;

    iget v7, v1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->getMode()I

    move-result v8

    iget-object v6, v0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    iget-object v9, v6, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->mCapturedLeash:Landroid/view/SurfaceControl;

    iget-object v6, v0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mAppWindowToken:Lcom/android/server/wm/AppWindowToken;

    .line 355
    invoke-virtual {v6}, Lcom/android/server/wm/AppWindowToken;->fillsParent()Z

    move-result v6

    xor-int/lit8 v10, v6, 0x1

    iget-object v6, v2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v11, v6, Lcom/android/server/wm/WindowStateAnimator;->mLastClipRect:Landroid/graphics/Rect;

    iget-object v6, v0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mAppWindowToken:Lcom/android/server/wm/AppWindowToken;

    .line 357
    invoke-virtual {v6}, Lcom/android/server/wm/AppWindowToken;->getPrefixOrderIndex()I

    move-result v13

    iget-object v6, v0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    invoke-static {v6}, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->access$500(Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;)Landroid/graphics/Point;

    move-result-object v14

    iget-object v6, v0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    .line 358
    invoke-static {v6}, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->access$600(Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;)Landroid/graphics/Rect;

    move-result-object v15

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v16

    const/16 v17, 0x0

    .line 359
    iget-object v6, v0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mThumbnailAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    if-eqz v6, :cond_6f

    iget-object v3, v6, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->mCapturedLeash:Landroid/view/SurfaceControl;

    :cond_6f
    move-object/from16 v18, v3

    iget-object v3, v0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mStartBounds:Landroid/graphics/Rect;

    move-object v6, v5

    move-object v12, v4

    move-object/from16 v19, v3

    invoke-direct/range {v6 .. v19}, Landroid/view/RemoteAnimationTarget;-><init>(IILandroid/view/SurfaceControl;ZLandroid/graphics/Rect;Landroid/graphics/Rect;ILandroid/graphics/Point;Landroid/graphics/Rect;Landroid/app/WindowConfiguration;ZLandroid/view/SurfaceControl;Landroid/graphics/Rect;)V

    iput-object v5, v0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mTarget:Landroid/view/RemoteAnimationTarget;

    .line 361
    iget-object v3, v0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mTarget:Landroid/view/RemoteAnimationTarget;

    return-object v3

    .line 346
    .end local v4  # "insets":Landroid/graphics/Rect;
    :cond_7f
    :goto_7f
    return-object v3
.end method
