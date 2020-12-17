.class Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;
.super Ljava/lang/Object;
.source "RemoteAnimationController.java"

# interfaces
.implements Lcom/android/server/wm/AnimationAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/RemoteAnimationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RemoteAnimationAdapterWrapper"
.end annotation


# instance fields
.field private mCapturedFinishCallback:Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

.field mCapturedLeash:Landroid/view/SurfaceControl;

.field private final mPosition:Landroid/graphics/Point;

.field private final mRecord:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;

.field private final mStackBounds:Landroid/graphics/Rect;

.field final synthetic this$0:Lcom/android/server/wm/RemoteAnimationController;


# direct methods
.method constructor <init>(Lcom/android/server/wm/RemoteAnimationController;Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;Landroid/graphics/Point;Landroid/graphics/Rect;)V
    .registers 7
    .param p2, "record"  # Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;
    .param p3, "position"  # Landroid/graphics/Point;
    .param p4, "stackBounds"  # Landroid/graphics/Rect;

    .line 384
    iput-object p1, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->this$0:Lcom/android/server/wm/RemoteAnimationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 380
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->mPosition:Landroid/graphics/Point;

    .line 381
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->mStackBounds:Landroid/graphics/Rect;

    .line 385
    iput-object p2, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->mRecord:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;

    .line 386
    iget-object p1, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->mPosition:Landroid/graphics/Point;

    iget v0, p3, Landroid/graphics/Point;->x:I

    iget v1, p3, Landroid/graphics/Point;->y:I

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Point;->set(II)V

    .line 387
    iget-object p1, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->mStackBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, p4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 388
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;)Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    .line 376
    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->mCapturedFinishCallback:Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;)Landroid/graphics/Point;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    .line 376
    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->mPosition:Landroid/graphics/Point;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;)Landroid/graphics/Rect;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    .line 376
    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->mStackBounds:Landroid/graphics/Rect;

    return-object v0
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 6
    .param p1, "pw"  # Ljava/io/PrintWriter;
    .param p2, "prefix"  # Ljava/lang/String;

    .line 446
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "token="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->mRecord:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;

    iget-object v0, v0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mAppWindowToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 447
    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->mRecord:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;

    iget-object v0, v0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mTarget:Landroid/view/RemoteAnimationTarget;

    if-eqz v0, :cond_36

    .line 448
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Target:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 449
    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->mRecord:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;

    iget-object v0, v0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mTarget:Landroid/view/RemoteAnimationTarget;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/view/RemoteAnimationTarget;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_3e

    .line 451
    :cond_36
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Target: null"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 453
    :goto_3e
    return-void
.end method

.method public getBackgroundColor()I
    .registers 2

    .line 397
    const/4 v0, 0x0

    return v0
.end method

.method public getDurationHint()J
    .registers 3

    .line 435
    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->this$0:Lcom/android/server/wm/RemoteAnimationController;

    invoke-static {v0}, Lcom/android/server/wm/RemoteAnimationController;->access$400(Lcom/android/server/wm/RemoteAnimationController;)Landroid/view/RemoteAnimationAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/RemoteAnimationAdapter;->getDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getShowWallpaper()Z
    .registers 2

    .line 392
    const/4 v0, 0x0

    return v0
.end method

.method public getStatusBarTransitionsStartTime()J
    .registers 5

    .line 440
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->this$0:Lcom/android/server/wm/RemoteAnimationController;

    .line 441
    invoke-static {v2}, Lcom/android/server/wm/RemoteAnimationController;->access$400(Lcom/android/server/wm/RemoteAnimationController;)Landroid/view/RemoteAnimationAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/RemoteAnimationAdapter;->getStatusBarTransitionDelay()J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 440
    return-wide v0
.end method

.method public onAnimationCancelled(Landroid/view/SurfaceControl;)V
    .registers 4
    .param p1, "animationLeash"  # Landroid/view/SurfaceControl;

    .line 417
    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->mRecord:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;

    iget-object v0, v0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    const/4 v1, 0x0

    if-ne v0, p0, :cond_c

    .line 418
    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->mRecord:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;

    iput-object v1, v0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    goto :goto_10

    .line 420
    :cond_c
    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->mRecord:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;

    iput-object v1, v0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mThumbnailAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    .line 422
    :goto_10
    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->mRecord:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;

    iget-object v0, v0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    if-nez v0, :cond_27

    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->mRecord:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;

    iget-object v0, v0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mThumbnailAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    if-nez v0, :cond_27

    .line 423
    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->this$0:Lcom/android/server/wm/RemoteAnimationController;

    invoke-static {v0}, Lcom/android/server/wm/RemoteAnimationController;->access$700(Lcom/android/server/wm/RemoteAnimationController;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->mRecord:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 425
    :cond_27
    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->this$0:Lcom/android/server/wm/RemoteAnimationController;

    invoke-static {v0}, Lcom/android/server/wm/RemoteAnimationController;->access$700(Lcom/android/server/wm/RemoteAnimationController;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_52

    .line 426
    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->this$0:Lcom/android/server/wm/RemoteAnimationController;

    invoke-static {v0}, Lcom/android/server/wm/RemoteAnimationController;->access$900(Lcom/android/server/wm/RemoteAnimationController;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->this$0:Lcom/android/server/wm/RemoteAnimationController;

    invoke-static {v1}, Lcom/android/server/wm/RemoteAnimationController;->access$800(Lcom/android/server/wm/RemoteAnimationController;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 427
    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->this$0:Lcom/android/server/wm/RemoteAnimationController;

    invoke-static {v0}, Lcom/android/server/wm/RemoteAnimationController;->access$1000(Lcom/android/server/wm/RemoteAnimationController;)V

    .line 428
    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->this$0:Lcom/android/server/wm/RemoteAnimationController;

    invoke-static {v0}, Lcom/android/server/wm/RemoteAnimationController;->access$1100(Lcom/android/server/wm/RemoteAnimationController;)V

    .line 429
    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->this$0:Lcom/android/server/wm/RemoteAnimationController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/wm/RemoteAnimationController;->access$1200(Lcom/android/server/wm/RemoteAnimationController;Z)V

    .line 431
    :cond_52
    return-void
.end method

.method public startAnimation(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;)V
    .registers 6
    .param p1, "animationLeash"  # Landroid/view/SurfaceControl;
    .param p2, "t"  # Landroid/view/SurfaceControl$Transaction;
    .param p3, "finishCallback"  # Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    .line 403
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_REMOTE_ANIMATIONS:Z

    if-eqz v0, :cond_d

    invoke-static {}, Lcom/android/server/wm/RemoteAnimationController;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "startAnimation"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    :cond_d
    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->mRecord:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;

    iget-object v0, v0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mAppWindowToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->getPrefixOrderIndex()I

    move-result v0

    invoke-virtual {p2, p1, v0}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 407
    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->mPosition:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->mPosition:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    invoke-virtual {p2, p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 408
    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->this$0:Lcom/android/server/wm/RemoteAnimationController;

    invoke-static {v0}, Lcom/android/server/wm/RemoteAnimationController;->access$300(Lcom/android/server/wm/RemoteAnimationController;)Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->mStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 409
    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->this$0:Lcom/android/server/wm/RemoteAnimationController;

    invoke-static {v0}, Lcom/android/server/wm/RemoteAnimationController;->access$300(Lcom/android/server/wm/RemoteAnimationController;)Landroid/graphics/Rect;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 410
    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->this$0:Lcom/android/server/wm/RemoteAnimationController;

    invoke-static {v0}, Lcom/android/server/wm/RemoteAnimationController;->access$300(Lcom/android/server/wm/RemoteAnimationController;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    .line 411
    iput-object p1, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->mCapturedLeash:Landroid/view/SurfaceControl;

    .line 412
    iput-object p3, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->mCapturedFinishCallback:Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    .line 413
    return-void
.end method

.method public writeToProto(Landroid/util/proto/ProtoOutputStream;)V
    .registers 7
    .param p1, "proto"  # Landroid/util/proto/ProtoOutputStream;

    .line 457
    const-wide v0, 0x10b00000002L

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 458
    .local v0, "token":J
    iget-object v2, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->mRecord:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;

    iget-object v2, v2, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mTarget:Landroid/view/RemoteAnimationTarget;

    if-eqz v2, :cond_1b

    .line 459
    iget-object v2, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->mRecord:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;

    iget-object v2, v2, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mTarget:Landroid/view/RemoteAnimationTarget;

    const-wide v3, 0x10b00000001L

    invoke-virtual {v2, p1, v3, v4}, Landroid/view/RemoteAnimationTarget;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 461
    :cond_1b
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 462
    return-void
.end method
