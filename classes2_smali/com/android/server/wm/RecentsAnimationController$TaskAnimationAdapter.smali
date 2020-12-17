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
    .registers 7
    .param p1, "this$0"  # Lcom/android/server/wm/RecentsAnimationController;
    .param p2, "task"  # Lcom/android/server/wm/Task;
    .param p3, "isRecentTaskInvisible"  # Z

    .line 769
    iput-object p1, p0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 766
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mPosition:Landroid/graphics/Point;

    .line 767
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mBounds:Landroid/graphics/Rect;

    .line 770
    iput-object p2, p0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mTask:Lcom/android/server/wm/Task;

    .line 771
    iput-boolean p3, p0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mIsRecentTaskInvisible:Z

    .line 772
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    .line 773
    .local v0, "container":Lcom/android/server/wm/WindowContainer;
    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mPosition:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowContainer;->getRelativeDisplayedPosition(Landroid/graphics/Point;)V

    .line 774
    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getDisplayedBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 775
    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;)Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;

    .line 759
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mCapturedFinishCallback:Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;)Lcom/android/server/wm/Task;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;

    .line 759
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mTask:Lcom/android/server/wm/Task;

    return-object v0
.end method


# virtual methods
.method createRemoteAnimationApp()Landroid/view/RemoteAnimationTarget;
    .registers 20

    .line 778
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getTopVisibleAppToken()Lcom/android/server/wm/AppWindowToken;

    move-result-object v1

    .line 779
    .local v1, "topApp":Lcom/android/server/wm/AppWindowToken;
    const/4 v2, 0x0

    if-eqz v1, :cond_10

    .line 780
    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v3

    goto :goto_11

    .line 781
    :cond_10
    move-object v3, v2

    :goto_11
    nop

    .line 782
    .local v3, "mainWindow":Lcom/android/server/wm/WindowState;
    if-nez v3, :cond_15

    .line 783
    return-object v2

    .line 790
    :cond_15
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getContentInsets()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getStableInsets()Landroid/graphics/Rect;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/server/wm/utils/InsetUtils;->minInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v2

    .line 792
    .local v2, "insets":Landroid/graphics/Rect;
    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v4}, Lcom/android/server/wm/AppWindowToken;->getLetterboxInsets()Landroid/graphics/Rect;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/server/wm/utils/InsetUtils;->addInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 793
    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->getActivityType()I

    move-result v4

    iget-object v5, v0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-static {v5}, Lcom/android/server/wm/RecentsAnimationController;->access$900(Lcom/android/server/wm/RecentsAnimationController;)I

    move-result v5

    const/4 v6, 0x1

    if-ne v4, v5, :cond_3a

    .line 794
    const/4 v4, 0x0

    move v7, v4

    goto :goto_3b

    .line 795
    :cond_3a
    move v7, v6

    :goto_3b
    nop

    .line 796
    .local v7, "mode":I
    new-instance v4, Landroid/view/RemoteAnimationTarget;

    iget-object v5, v0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mTask:Lcom/android/server/wm/Task;

    iget v8, v5, Lcom/android/server/wm/Task;->mTaskId:I

    iget-object v9, v0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mCapturedLeash:Landroid/view/SurfaceControl;

    .line 797
    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->fillsParent()Z

    move-result v5

    xor-int/lit8 v10, v5, 0x1

    iget-object v5, v3, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v11, v5, Lcom/android/server/wm/WindowStateAnimator;->mLastClipRect:Landroid/graphics/Rect;

    iget-object v5, v0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mTask:Lcom/android/server/wm/Task;

    .line 798
    invoke-virtual {v5}, Lcom/android/server/wm/Task;->getPrefixOrderIndex()I

    move-result v12

    iget-object v13, v0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mPosition:Landroid/graphics/Point;

    iget-object v14, v0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mBounds:Landroid/graphics/Rect;

    iget-object v5, v0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mTask:Lcom/android/server/wm/Task;

    .line 799
    invoke-virtual {v5}, Lcom/android/server/wm/Task;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v15

    iget-boolean v6, v0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mIsRecentTaskInvisible:Z

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v5, v4

    move/from16 v16, v6

    move v6, v8

    move-object v8, v9

    move v9, v10

    move-object v10, v11

    move-object v11, v2

    invoke-direct/range {v5 .. v18}, Landroid/view/RemoteAnimationTarget;-><init>(IILandroid/view/SurfaceControl;ZLandroid/graphics/Rect;Landroid/graphics/Rect;ILandroid/graphics/Point;Landroid/graphics/Rect;Landroid/app/WindowConfiguration;ZLandroid/view/SurfaceControl;Landroid/graphics/Rect;)V

    iput-object v4, v0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mTarget:Landroid/view/RemoteAnimationTarget;

    .line 800
    iget-object v4, v0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mTarget:Landroid/view/RemoteAnimationTarget;

    return-object v4
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 6
    .param p1, "pw"  # Ljava/io/PrintWriter;
    .param p2, "prefix"  # Ljava/lang/String;

    .line 843
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

    .line 844
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mTarget:Landroid/view/RemoteAnimationTarget;

    if-eqz v0, :cond_3c

    .line 845
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Target:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 846
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mTarget:Landroid/view/RemoteAnimationTarget;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/view/RemoteAnimationTarget;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_44

    .line 848
    :cond_3c
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Target: null"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 850
    :goto_44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIsRecentTaskInvisible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mIsRecentTaskInvisible:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 851
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPosition="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mPosition:Landroid/graphics/Point;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 852
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mBounds="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 853
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mIsRecentTaskInvisible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 854
    return-void
.end method

.method public getBackgroundColor()I
    .registers 2

    .line 810
    const/4 v0, 0x0

    return v0
.end method

.method public getDurationHint()J
    .registers 3

    .line 833
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getShowWallpaper()Z
    .registers 2

    .line 805
    const/4 v0, 0x0

    return v0
.end method

.method public getStatusBarTransitionsStartTime()J
    .registers 3

    .line 838
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public onAnimationCancelled(Landroid/view/SurfaceControl;)V
    .registers 5
    .param p1, "animationLeash"  # Landroid/view/SurfaceControl;

    .line 828
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    const/4 v1, 0x2

    const-string v2, "taskAnimationAdapterCanceled"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/RecentsAnimationController;->cancelAnimation(ILjava/lang/String;)V

    .line 829
    return-void
.end method

.method public startAnimation(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;)V
    .registers 6
    .param p1, "animationLeash"  # Landroid/view/SurfaceControl;
    .param p2, "t"  # Landroid/view/SurfaceControl$Transaction;
    .param p3, "finishCallback"  # Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    .line 817
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getPrefixOrderIndex()I

    move-result v0

    invoke-virtual {p2, p1, v0}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 818
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mPosition:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mPosition:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    invoke-virtual {p2, p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 819
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-static {v0}, Lcom/android/server/wm/RecentsAnimationController;->access$1300(Lcom/android/server/wm/RecentsAnimationController;)Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 820
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-static {v0}, Lcom/android/server/wm/RecentsAnimationController;->access$1300(Lcom/android/server/wm/RecentsAnimationController;)Landroid/graphics/Rect;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 821
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-static {v0}, Lcom/android/server/wm/RecentsAnimationController;->access$1300(Lcom/android/server/wm/RecentsAnimationController;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    .line 822
    iput-object p1, p0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mCapturedLeash:Landroid/view/SurfaceControl;

    .line 823
    iput-object p3, p0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mCapturedFinishCallback:Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    .line 824
    return-void
.end method

.method public writeToProto(Landroid/util/proto/ProtoOutputStream;)V
    .registers 7
    .param p1, "proto"  # Landroid/util/proto/ProtoOutputStream;

    .line 858
    const-wide v0, 0x10b00000002L

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 859
    .local v0, "token":J
    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mTarget:Landroid/view/RemoteAnimationTarget;

    if-eqz v2, :cond_15

    .line 860
    const-wide v3, 0x10b00000001L

    invoke-virtual {v2, p1, v3, v4}, Landroid/view/RemoteAnimationTarget;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 862
    :cond_15
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 863
    return-void
.end method
