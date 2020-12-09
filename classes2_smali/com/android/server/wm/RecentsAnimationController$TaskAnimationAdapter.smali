.class Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;
.super Ljava/lang/Object;
.source "RecentsAnimationController.java"

# interfaces
.implements Lcom/android/server/wm/AnimationAdapter;


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/RecentsAnimationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TaskAnimationAdapter"
.end annotation


# instance fields
.field private final mBounds:Landroid/graphics/Rect;

.field private mCapturedFinishCallback:Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

.field private mCapturedLeash:Landroid/view/SurfaceControl;

.field private final mIsRecentTaskInvisible:Z

.field private final mPosition:Landroid/graphics/Point;

.field private mTarget:Landroid/view/RemoteAnimationTarget;

.field private final mTask:Lcom/android/server/wm/Task;

.field final synthetic this$0:Lcom/android/server/wm/RecentsAnimationController;


# direct methods
.method constructor <init>(Lcom/android/server/wm/RecentsAnimationController;Lcom/android/server/wm/Task;Z)V
    .registers 4

    .line 769
    iput-object p1, p0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 766
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mPosition:Landroid/graphics/Point;

    .line 767
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mBounds:Landroid/graphics/Rect;

    .line 770
    iput-object p2, p0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mTask:Lcom/android/server/wm/Task;

    .line 771
    iput-boolean p3, p0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mIsRecentTaskInvisible:Z

    .line 772
    iget-object p1, p0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object p1

    .line 773
    iget-object p2, p0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mPosition:Landroid/graphics/Point;

    invoke-virtual {p1, p2}, Lcom/android/server/wm/WindowContainer;->getRelativeDisplayedPosition(Landroid/graphics/Point;)V

    .line 774
    iget-object p2, p0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getDisplayedBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 775
    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;)Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;
    .registers 1

    .line 759
    iget-object p0, p0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mCapturedFinishCallback:Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;)Lcom/android/server/wm/Task;
    .registers 1

    .line 759
    iget-object p0, p0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mTask:Lcom/android/server/wm/Task;

    return-object p0
.end method


# virtual methods
.method createRemoteAnimationApp()Landroid/view/RemoteAnimationTarget;
    .registers 19

    .line 778
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getTopVisibleAppToken()Lcom/android/server/wm/AppWindowToken;

    move-result-object v1

    .line 779
    const/4 v2, 0x0

    if-eqz v1, :cond_10

    .line 780
    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v3

    goto :goto_11

    .line 781
    :cond_10
    move-object v3, v2

    .line 782
    :goto_11
    if-nez v3, :cond_14

    .line 783
    return-object v2

    .line 785
    :cond_14
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    .line 786
    invoke-virtual {v3, v10}, Lcom/android/server/wm/WindowState;->getContentInsets(Landroid/graphics/Rect;)V

    .line 787
    iget-object v2, v3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowToken;->getLetterboxInsets()Landroid/graphics/Rect;

    move-result-object v2

    invoke-static {v10, v2}, Lcom/android/server/wm/utils/InsetUtils;->addInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 788
    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->getActivityType()I

    move-result v2

    iget-object v4, v0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-static {v4}, Lcom/android/server/wm/RecentsAnimationController;->access$800(Lcom/android/server/wm/RecentsAnimationController;)I

    move-result v4

    const/4 v5, 0x1

    if-ne v2, v4, :cond_35

    .line 789
    const/4 v2, 0x0

    move v6, v2

    goto :goto_36

    .line 790
    :cond_35
    move v6, v5

    .line 791
    :goto_36
    new-instance v2, Landroid/view/RemoteAnimationTarget;

    iget-object v4, v0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mTask:Lcom/android/server/wm/Task;

    iget v7, v4, Lcom/android/server/wm/Task;->mTaskId:I

    iget-object v8, v0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mCapturedLeash:Landroid/view/SurfaceControl;

    .line 792
    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->fillsParent()Z

    move-result v1

    xor-int/2addr v1, v5

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v9, v3, Lcom/android/server/wm/WindowStateAnimator;->mLastClipRect:Landroid/graphics/Rect;

    iget-object v3, v0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mTask:Lcom/android/server/wm/Task;

    .line 793
    invoke-virtual {v3}, Lcom/android/server/wm/Task;->getPrefixOrderIndex()I

    move-result v11

    iget-object v12, v0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mPosition:Landroid/graphics/Point;

    iget-object v13, v0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mBounds:Landroid/graphics/Rect;

    iget-object v3, v0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mTask:Lcom/android/server/wm/Task;

    .line 794
    invoke-virtual {v3}, Lcom/android/server/wm/Task;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v14

    iget-boolean v15, v0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mIsRecentTaskInvisible:Z

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v4, v2

    move v5, v7

    move-object v7, v8

    move v8, v1

    invoke-direct/range {v4 .. v17}, Landroid/view/RemoteAnimationTarget;-><init>(IILandroid/view/SurfaceControl;ZLandroid/graphics/Rect;Landroid/graphics/Rect;ILandroid/graphics/Point;Landroid/graphics/Rect;Landroid/app/WindowConfiguration;ZLandroid/view/SurfaceControl;Landroid/graphics/Rect;)V

    iput-object v2, v0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mTarget:Landroid/view/RemoteAnimationTarget;

    .line 795
    iget-object v0, v0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mTarget:Landroid/view/RemoteAnimationTarget;

    return-object v0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 5

    .line 838
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "task="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 839
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mTarget:Landroid/view/RemoteAnimationTarget;

    if-eqz v0, :cond_3c

    .line 840
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Target:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 841
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mTarget:Landroid/view/RemoteAnimationTarget;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "  "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/view/RemoteAnimationTarget;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_44

    .line 843
    :cond_3c
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "Target: null"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 845
    :goto_44
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mIsRecentTaskInvisible="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mIsRecentTaskInvisible:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 846
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mPosition="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mPosition:Landroid/graphics/Point;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 847
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mBounds="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 848
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mIsRecentTaskInvisible:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 849
    return-void
.end method

.method public getBackgroundColor()I
    .registers 2

    .line 805
    const/4 v0, 0x0

    return v0
.end method

.method public getDurationHint()J
    .registers 3

    .line 828
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getShowWallpaper()Z
    .registers 2

    .line 800
    const/4 v0, 0x0

    return v0
.end method

.method public getStatusBarTransitionsStartTime()J
    .registers 3

    .line 833
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public onAnimationCancelled(Landroid/view/SurfaceControl;)V
    .registers 4

    .line 823
    iget-object p1, p0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    const/4 v0, 0x2

    const-string v1, "taskAnimationAdapterCanceled"

    invoke-virtual {p1, v0, v1}, Lcom/android/server/wm/RecentsAnimationController;->cancelAnimation(ILjava/lang/String;)V

    .line 824
    return-void
.end method

.method public startAnimation(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;)V
    .registers 6

    .line 812
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getPrefixOrderIndex()I

    move-result v0

    invoke-virtual {p2, p1, v0}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 813
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mPosition:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mPosition:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    invoke-virtual {p2, p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 814
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-static {v0}, Lcom/android/server/wm/RecentsAnimationController;->access$1200(Lcom/android/server/wm/RecentsAnimationController;)Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 815
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-static {v0}, Lcom/android/server/wm/RecentsAnimationController;->access$1200(Lcom/android/server/wm/RecentsAnimationController;)Landroid/graphics/Rect;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 816
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-static {v0}, Lcom/android/server/wm/RecentsAnimationController;->access$1200(Lcom/android/server/wm/RecentsAnimationController;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    .line 817
    iput-object p1, p0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mCapturedLeash:Landroid/view/SurfaceControl;

    .line 818
    iput-object p3, p0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mCapturedFinishCallback:Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    .line 819
    return-void
.end method

.method public writeToProto(Landroid/util/proto/ProtoOutputStream;)V
    .registers 7

    .line 853
    const-wide v0, 0x10b00000002L

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 854
    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mTarget:Landroid/view/RemoteAnimationTarget;

    if-eqz v2, :cond_15

    .line 855
    const-wide v3, 0x10b00000001L

    invoke-virtual {v2, p1, v3, v4}, Landroid/view/RemoteAnimationTarget;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 857
    :cond_15
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 858
    return-void
.end method
