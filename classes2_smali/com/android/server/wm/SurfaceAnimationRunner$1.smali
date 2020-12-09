.class Lcom/android/server/wm/SurfaceAnimationRunner$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SurfaceAnimationRunner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/SurfaceAnimationRunner;->startAnimationLocked(Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/SurfaceAnimationRunner;

.field final synthetic val$a:Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;


# direct methods
.method constructor <init>(Lcom/android/server/wm/SurfaceAnimationRunner;Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;)V
    .registers 3

    .line 191
    iput-object p1, p0, Lcom/android/server/wm/SurfaceAnimationRunner$1;->this$0:Lcom/android/server/wm/SurfaceAnimationRunner;

    iput-object p2, p0, Lcom/android/server/wm/SurfaceAnimationRunner$1;->val$a:Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 5

    .line 205
    iget-object p1, p0, Lcom/android/server/wm/SurfaceAnimationRunner$1;->this$0:Lcom/android/server/wm/SurfaceAnimationRunner;

    invoke-static {p1}, Lcom/android/server/wm/SurfaceAnimationRunner;->access$300(Lcom/android/server/wm/SurfaceAnimationRunner;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 206
    :try_start_7
    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimationRunner$1;->this$0:Lcom/android/server/wm/SurfaceAnimationRunner;

    iget-object v0, v0, Lcom/android/server/wm/SurfaceAnimationRunner;->mRunningAnimations:Landroid/util/ArrayMap;

    iget-object v1, p0, Lcom/android/server/wm/SurfaceAnimationRunner$1;->val$a:Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;

    iget-object v1, v1, Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;->mLeash:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimationRunner$1;->this$0:Lcom/android/server/wm/SurfaceAnimationRunner;

    invoke-static {v0}, Lcom/android/server/wm/SurfaceAnimationRunner;->access$100(Lcom/android/server/wm/SurfaceAnimationRunner;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_19
    .catchall {:try_start_7 .. :try_end_19} :catchall_32

    .line 208
    :try_start_19
    iget-object v1, p0, Lcom/android/server/wm/SurfaceAnimationRunner$1;->val$a:Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;

    invoke-static {v1}, Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;->access$000(Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;)Z

    move-result v1

    if-nez v1, :cond_2c

    .line 211
    invoke-static {}, Lcom/android/server/AnimationThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/SurfaceAnimationRunner$1;->val$a:Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;

    iget-object v2, v2, Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;->mFinishCallback:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 213
    :cond_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_19 .. :try_end_2d} :catchall_2f

    .line 214
    :try_start_2d
    monitor-exit p1
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_32

    .line 215
    return-void

    .line 213
    :catchall_2f
    move-exception v1

    :try_start_30
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    :try_start_31
    throw v1

    .line 214
    :catchall_32
    move-exception v0

    monitor-exit p1
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_32

    throw v0
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 5

    .line 194
    iget-object p1, p0, Lcom/android/server/wm/SurfaceAnimationRunner$1;->this$0:Lcom/android/server/wm/SurfaceAnimationRunner;

    invoke-static {p1}, Lcom/android/server/wm/SurfaceAnimationRunner;->access$100(Lcom/android/server/wm/SurfaceAnimationRunner;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 195
    :try_start_7
    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimationRunner$1;->val$a:Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;

    invoke-static {v0}, Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;->access$000(Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 198
    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimationRunner$1;->this$0:Lcom/android/server/wm/SurfaceAnimationRunner;

    invoke-static {v0}, Lcom/android/server/wm/SurfaceAnimationRunner;->access$200(Lcom/android/server/wm/SurfaceAnimationRunner;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/SurfaceAnimationRunner$1;->val$a:Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;

    iget-object v1, v1, Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;->mLeash:Landroid/view/SurfaceControl;

    const/high16 v2, 0x3f800000  # 1.0f

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 200
    :cond_1e
    monitor-exit p1

    .line 201
    return-void

    .line 200
    :catchall_20
    move-exception v0

    monitor-exit p1
    :try_end_22
    .catchall {:try_start_7 .. :try_end_22} :catchall_20

    throw v0
.end method
