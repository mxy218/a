.class interface abstract Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;
.super Ljava/lang/Object;
.source "LocalAnimationAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/LocalAnimationAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "AnimationSpec"
.end annotation


# virtual methods
.method public abstract apply(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;J)V
.end method

.method public calculateStatusBarTransitionStartTime()J
    .registers 3

    .line 113
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public canSkipFirstFrame()Z
    .registers 2

    .line 134
    const/4 v0, 0x0

    return v0
.end method

.method public abstract dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
.end method

.method public getBackgroundColor()I
    .registers 2

    .line 106
    const/4 v0, 0x0

    return v0
.end method

.method public abstract getDuration()J
.end method

.method public getShowWallpaper()Z
    .registers 2

    .line 99
    const/4 v0, 0x0

    return v0
.end method

.method public needsEarlyWakeup()Z
    .registers 2

    .line 142
    const/4 v0, 0x0

    return v0
.end method

.method public writeToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 4

    .line 147
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 148
    invoke-interface {p0, p1}, Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;->writeToProtoInner(Landroid/util/proto/ProtoOutputStream;)V

    .line 149
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 150
    return-void
.end method

.method public abstract writeToProtoInner(Landroid/util/proto/ProtoOutputStream;)V
.end method
