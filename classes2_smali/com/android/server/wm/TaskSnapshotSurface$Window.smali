.class Lcom/android/server/wm/TaskSnapshotSurface$Window;
.super Lcom/android/internal/view/BaseIWindow;
.source "TaskSnapshotSurface.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/TaskSnapshotSurface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Window"
.end annotation


# instance fields
.field private mOuter:Lcom/android/server/wm/TaskSnapshotSurface;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 460
    invoke-direct {p0}, Lcom/android/internal/view/BaseIWindow;-><init>()V

    return-void
.end method


# virtual methods
.method public resized(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZLandroid/util/MergedConfiguration;Landroid/graphics/Rect;ZZILandroid/view/DisplayCutout$ParcelableWrapper;)V
    .registers 14

    .line 474
    if-eqz p8, :cond_23

    iget-object p1, p0, Lcom/android/server/wm/TaskSnapshotSurface$Window;->mOuter:Lcom/android/server/wm/TaskSnapshotSurface;

    if-eqz p1, :cond_23

    .line 475
    invoke-static {p1}, Lcom/android/server/wm/TaskSnapshotSurface;->access$300(Lcom/android/server/wm/TaskSnapshotSurface;)I

    move-result p1

    .line 476
    invoke-virtual {p8}, Landroid/util/MergedConfiguration;->getMergedConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    iget p2, p2, Landroid/content/res/Configuration;->orientation:I

    if-eq p1, p2, :cond_23

    .line 481
    invoke-static {}, Lcom/android/server/wm/TaskSnapshotSurface;->access$400()Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/wm/TaskSnapshotSurface$Window;->mOuter:Lcom/android/server/wm/TaskSnapshotSurface;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p3, Lcom/android/server/wm/-$$Lambda$-OevXHSXgaSE351ZqRnMoA024MM;

    invoke-direct {p3, p2}, Lcom/android/server/wm/-$$Lambda$-OevXHSXgaSE351ZqRnMoA024MM;-><init>(Lcom/android/server/wm/TaskSnapshotSurface;)V

    invoke-virtual {p1, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 483
    :cond_23
    if-eqz p7, :cond_33

    .line 484
    invoke-static {}, Lcom/android/server/wm/TaskSnapshotSurface;->access$400()Landroid/os/Handler;

    move-result-object p1

    const/4 p2, 0x0

    iget-object p3, p0, Lcom/android/server/wm/TaskSnapshotSurface$Window;->mOuter:Lcom/android/server/wm/TaskSnapshotSurface;

    invoke-virtual {p1, p2, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 486
    :cond_33
    return-void
.end method

.method public setOuter(Lcom/android/server/wm/TaskSnapshotSurface;)V
    .registers 2

    .line 465
    iput-object p1, p0, Lcom/android/server/wm/TaskSnapshotSurface$Window;->mOuter:Lcom/android/server/wm/TaskSnapshotSurface;

    .line 466
    return-void
.end method
