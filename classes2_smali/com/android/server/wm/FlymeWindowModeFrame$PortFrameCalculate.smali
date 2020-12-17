.class Lcom/android/server/wm/FlymeWindowModeFrame$PortFrameCalculate;
.super Ljava/lang/Object;
.source "FlymeWindowModeFrame.java"

# interfaces
.implements Lcom/android/server/wm/FlymeWindowModeFrame$IFrameCalculate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/FlymeWindowModeFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PortFrameCalculate"
.end annotation


# instance fields
.field private mDisplayBound:Landroid/graphics/Rect;

.field private mTmpBound:Landroid/graphics/Rect;

.field private mVisibleBound:Landroid/graphics/Rect;

.field private mWinScale:F

.field final synthetic this$0:Lcom/android/server/wm/FlymeWindowModeFrame;


# direct methods
.method constructor <init>(Lcom/android/server/wm/FlymeWindowModeFrame;)V
    .registers 3
    .param p1, "this$0"  # Lcom/android/server/wm/FlymeWindowModeFrame;

    .line 43
    iput-object p1, p0, Lcom/android/server/wm/FlymeWindowModeFrame$PortFrameCalculate;->this$0:Lcom/android/server/wm/FlymeWindowModeFrame;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-static {}, Lcom/android/server/wm/FlymeWindowModeFrame;->access$000()F

    move-result v0

    iput v0, p0, Lcom/android/server/wm/FlymeWindowModeFrame$PortFrameCalculate;->mWinScale:F

    .line 45
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/FlymeWindowModeFrame$PortFrameCalculate;->mDisplayBound:Landroid/graphics/Rect;

    .line 46
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/FlymeWindowModeFrame$PortFrameCalculate;->mVisibleBound:Landroid/graphics/Rect;

    .line 47
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/FlymeWindowModeFrame$PortFrameCalculate;->mTmpBound:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public calculate(Lcom/android/server/wm/DisplayFrames;)Z
    .registers 11
    .param p1, "displayFrames"  # Lcom/android/server/wm/DisplayFrames;

    .line 51
    invoke-static {}, Lcom/android/server/wm/FlymeWindowModeFrame;->access$000()F

    move-result v0

    iput v0, p0, Lcom/android/server/wm/FlymeWindowModeFrame$PortFrameCalculate;->mWinScale:F

    .line 52
    iget-object v0, p0, Lcom/android/server/wm/FlymeWindowModeFrame$PortFrameCalculate;->this$0:Lcom/android/server/wm/FlymeWindowModeFrame;

    invoke-static {v0}, Lcom/android/server/wm/FlymeWindowModeFrame;->access$100(Lcom/android/server/wm/FlymeWindowModeFrame;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/server/wm/FlymeWindowModeFrame$PortFrameCalculate;->mWinScale:F

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 53
    .local v0, "realWidth":I
    int-to-float v1, v0

    invoke-static {}, Lcom/android/server/wm/FlymeWindowModeFrame;->access$200()F

    move-result v2

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 54
    .local v1, "realHeight":I
    iget-object v2, p0, Lcom/android/server/wm/FlymeWindowModeFrame$PortFrameCalculate;->this$0:Lcom/android/server/wm/FlymeWindowModeFrame;

    iget-object v2, v2, Lcom/android/server/wm/FlymeWindowModeFrame;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    sub-int/2addr v2, v0

    int-to-float v2, v2

    const/high16 v3, 0x3f000000  # 0.5f

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 55
    .local v2, "left":I
    iget-object v3, p0, Lcom/android/server/wm/FlymeWindowModeFrame$PortFrameCalculate;->this$0:Lcom/android/server/wm/FlymeWindowModeFrame;

    iget-object v3, v3, Lcom/android/server/wm/FlymeWindowModeFrame;->mFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    .line 56
    .local v3, "top":I
    iget-object v4, p0, Lcom/android/server/wm/FlymeWindowModeFrame$PortFrameCalculate;->this$0:Lcom/android/server/wm/FlymeWindowModeFrame;

    iget-object v4, v4, Lcom/android/server/wm/FlymeWindowModeFrame;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-ge v1, v4, :cond_55

    .line 57
    iget-object v4, p0, Lcom/android/server/wm/FlymeWindowModeFrame$PortFrameCalculate;->this$0:Lcom/android/server/wm/FlymeWindowModeFrame;

    iget-object v4, v4, Lcom/android/server/wm/FlymeWindowModeFrame;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    sub-int/2addr v4, v1

    int-to-float v4, v4

    const v5, 0x3ee9fbe7  # 0.457f

    mul-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 59
    :cond_55
    iget-object v4, p0, Lcom/android/server/wm/FlymeWindowModeFrame$PortFrameCalculate;->mTmpBound:Landroid/graphics/Rect;

    add-int v5, v2, v0

    add-int v6, v3, v1

    invoke-virtual {v4, v2, v3, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 60
    iget-object v4, p0, Lcom/android/server/wm/FlymeWindowModeFrame$PortFrameCalculate;->mTmpBound:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/android/server/wm/FlymeWindowModeFrame$PortFrameCalculate;->mVisibleBound:Landroid/graphics/Rect;

    if-eq v4, v5, :cond_66

    const/4 v4, 0x1

    goto :goto_67

    :cond_66
    const/4 v4, 0x0

    .line 61
    .local v4, "change":Z
    :goto_67
    iget-object v5, p0, Lcom/android/server/wm/FlymeWindowModeFrame$PortFrameCalculate;->mVisibleBound:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/android/server/wm/FlymeWindowModeFrame$PortFrameCalculate;->mTmpBound:Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 62
    iget-object v5, p0, Lcom/android/server/wm/FlymeWindowModeFrame$PortFrameCalculate;->mDisplayBound:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/android/server/wm/FlymeWindowModeFrame$PortFrameCalculate;->mTmpBound:Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 63
    iget-object v5, p0, Lcom/android/server/wm/FlymeWindowModeFrame$PortFrameCalculate;->mDisplayBound:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->top:I

    iget-object v7, p0, Lcom/android/server/wm/FlymeWindowModeFrame$PortFrameCalculate;->this$0:Lcom/android/server/wm/FlymeWindowModeFrame;

    invoke-static {v7}, Lcom/android/server/wm/FlymeWindowModeFrame;->access$300(Lcom/android/server/wm/FlymeWindowModeFrame;)Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    iget v8, p0, Lcom/android/server/wm/FlymeWindowModeFrame$PortFrameCalculate;->mWinScale:F

    mul-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    sub-int/2addr v6, v7

    iput v6, v5, Landroid/graphics/Rect;->top:I

    .line 64
    return v4
.end method

.method public getDisplayBound()Landroid/graphics/Rect;
    .registers 2

    .line 74
    iget-object v0, p0, Lcom/android/server/wm/FlymeWindowModeFrame$PortFrameCalculate;->mDisplayBound:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getScale()F
    .registers 2

    .line 69
    iget v0, p0, Lcom/android/server/wm/FlymeWindowModeFrame$PortFrameCalculate;->mWinScale:F

    return v0
.end method

.method public getVisibleBound()Landroid/graphics/Rect;
    .registers 2

    .line 79
    iget-object v0, p0, Lcom/android/server/wm/FlymeWindowModeFrame$PortFrameCalculate;->mVisibleBound:Landroid/graphics/Rect;

    return-object v0
.end method
