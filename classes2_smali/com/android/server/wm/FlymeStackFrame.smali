.class public Lcom/android/server/wm/FlymeStackFrame;
.super Ljava/lang/Object;
.source "FlymeStackFrame.java"

# interfaces
.implements Lcom/android/server/wm/FlymeDisplayInfo;


# instance fields
.field private mCornerRadius:F

.field private mDisplayBound:Landroid/graphics/Rect;

.field private mDisplayFrame:Landroid/graphics/Rect;

.field private mScale:F

.field private mVisibleBound:Landroid/graphics/Rect;

.field private mVisibleFrame:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "rect"  # Landroid/graphics/Rect;

    .line 15
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/FlymeStackFrame;-><init>(Landroid/graphics/Rect;F)V

    .line 16
    return-void
.end method

.method constructor <init>(Landroid/graphics/Rect;F)V
    .registers 10
    .param p1, "rect"  # Landroid/graphics/Rect;
    .param p2, "radius"  # F

    .line 19
    const/high16 v6, 0x3f800000  # 1.0f

    move-object v0, p0

    move-object v1, p1

    move-object v2, p1

    move-object v3, p1

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/FlymeStackFrame;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;FF)V

    .line 20
    return-void
.end method

.method constructor <init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;FF)V
    .registers 8
    .param p1, "displayFrame"  # Landroid/graphics/Rect;
    .param p2, "visibleFrame"  # Landroid/graphics/Rect;
    .param p3, "displayBound"  # Landroid/graphics/Rect;
    .param p4, "visibleBound"  # Landroid/graphics/Rect;
    .param p5, "radius"  # F
    .param p6, "scale"  # F

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/android/server/wm/FlymeStackFrame;->mDisplayFrame:Landroid/graphics/Rect;

    .line 24
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/android/server/wm/FlymeStackFrame;->mVisibleFrame:Landroid/graphics/Rect;

    .line 25
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/android/server/wm/FlymeStackFrame;->mDisplayBound:Landroid/graphics/Rect;

    .line 26
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/android/server/wm/FlymeStackFrame;->mVisibleBound:Landroid/graphics/Rect;

    .line 27
    iput p5, p0, Lcom/android/server/wm/FlymeStackFrame;->mCornerRadius:F

    .line 28
    iput p6, p0, Lcom/android/server/wm/FlymeStackFrame;->mScale:F

    .line 29
    return-void
.end method


# virtual methods
.method public getCornerRadius()F
    .registers 2

    .line 58
    iget v0, p0, Lcom/android/server/wm/FlymeStackFrame;->mCornerRadius:F

    return v0
.end method

.method public getDisplayBound()Landroid/graphics/Rect;
    .registers 2

    .line 43
    iget-object v0, p0, Lcom/android/server/wm/FlymeStackFrame;->mDisplayBound:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getDisplayFrame()Landroid/graphics/Rect;
    .registers 2

    .line 33
    iget-object v0, p0, Lcom/android/server/wm/FlymeStackFrame;->mDisplayFrame:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getScale()F
    .registers 2

    .line 53
    iget v0, p0, Lcom/android/server/wm/FlymeStackFrame;->mScale:F

    return v0
.end method

.method public getVisibleBound()Landroid/graphics/Rect;
    .registers 2

    .line 48
    iget-object v0, p0, Lcom/android/server/wm/FlymeStackFrame;->mVisibleBound:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getVisibleFrame()Landroid/graphics/Rect;
    .registers 2

    .line 38
    iget-object v0, p0, Lcom/android/server/wm/FlymeStackFrame;->mVisibleFrame:Landroid/graphics/Rect;

    return-object v0
.end method
