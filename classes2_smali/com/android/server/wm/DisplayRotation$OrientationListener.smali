.class Lcom/android/server/wm/DisplayRotation$OrientationListener;
.super Lcom/android/server/policy/WindowOrientationListener;
.source "DisplayRotation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/DisplayRotation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OrientationListener"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/DisplayRotation$OrientationListener$UpdateRunnable;
    }
.end annotation


# instance fields
.field mEnabled:Z

.field final mRunnableCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/wm/DisplayRotation;


# direct methods
.method constructor <init>(Lcom/android/server/wm/DisplayRotation;Landroid/content/Context;Landroid/os/Handler;)V
    .registers 5
    .param p2, "context"  # Landroid/content/Context;
    .param p3, "handler"  # Landroid/os/Handler;

    .line 978
    iput-object p1, p0, Lcom/android/server/wm/DisplayRotation$OrientationListener;->this$0:Lcom/android/server/wm/DisplayRotation;

    .line 979
    invoke-direct {p0, p2, p3}, Lcom/android/server/policy/WindowOrientationListener;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 975
    new-instance p1, Landroid/util/SparseArray;

    const/4 v0, 0x5

    invoke-direct {p1, v0}, Landroid/util/SparseArray;-><init>(I)V

    iput-object p1, p0, Lcom/android/server/wm/DisplayRotation$OrientationListener;->mRunnableCache:Landroid/util/SparseArray;

    .line 980
    return-void
.end method


# virtual methods
.method public disable()V
    .registers 3

    .line 1023
    invoke-super {p0}, Lcom/android/server/policy/WindowOrientationListener;->disable()V

    .line 1024
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayRotation$OrientationListener;->mEnabled:Z

    .line 1025
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    if-eqz v0, :cond_11

    const-string v0, "WindowManager"

    const-string v1, "Disabling listeners"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1026
    :cond_11
    return-void
.end method

.method public enable(Z)V
    .registers 4
    .param p1, "clearCurrentRotation"  # Z

    .line 1016
    invoke-super {p0, p1}, Lcom/android/server/policy/WindowOrientationListener;->enable(Z)V

    .line 1017
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayRotation$OrientationListener;->mEnabled:Z

    .line 1018
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    if-eqz v0, :cond_11

    const-string v0, "WindowManager"

    const-string v1, "Enabling listeners"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1019
    :cond_11
    return-void
.end method

.method public onProposedRotationChanged(I)V
    .registers 4
    .param p1, "rotation"  # I

    .line 1005
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    if-eqz v0, :cond_1a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onProposedRotationChanged, rotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1006
    :cond_1a
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation$OrientationListener;->mRunnableCache:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 1007
    .local v0, "r":Ljava/lang/Runnable;
    if-nez v0, :cond_30

    .line 1008
    new-instance v1, Lcom/android/server/wm/DisplayRotation$OrientationListener$UpdateRunnable;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wm/DisplayRotation$OrientationListener$UpdateRunnable;-><init>(Lcom/android/server/wm/DisplayRotation$OrientationListener;I)V

    move-object v0, v1

    .line 1009
    iget-object v1, p0, Lcom/android/server/wm/DisplayRotation$OrientationListener;->mRunnableCache:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1011
    :cond_30
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayRotation$OrientationListener;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1012
    return-void
.end method
