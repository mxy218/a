.class Lcom/android/server/wm/FlymeWindowModeFrame$LandFrameCalculate;
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
    name = "LandFrameCalculate"
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

    .line 83
    iput-object p1, p0, Lcom/android/server/wm/FlymeWindowModeFrame$LandFrameCalculate;->this$0:Lcom/android/server/wm/FlymeWindowModeFrame;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    invoke-static {}, Lcom/android/server/wm/FlymeWindowModeFrame;->access$000()F

    move-result v0

    iput v0, p0, Lcom/android/server/wm/FlymeWindowModeFrame$LandFrameCalculate;->mWinScale:F

    .line 85
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/FlymeWindowModeFrame$LandFrameCalculate;->mDisplayBound:Landroid/graphics/Rect;

    .line 86
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/FlymeWindowModeFrame$LandFrameCalculate;->mVisibleBound:Landroid/graphics/Rect;

    .line 87
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/FlymeWindowModeFrame$LandFrameCalculate;->mTmpBound:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public calculate(Lcom/android/server/wm/DisplayFrames;)Z
    .registers 12
    .param p1, "displayFrames"  # Lcom/android/server/wm/DisplayFrames;

    .line 91
    iget-object v0, p0, Lcom/android/server/wm/FlymeWindowModeFrame$LandFrameCalculate;->this$0:Lcom/android/server/wm/FlymeWindowModeFrame;

    invoke-static {v0}, Lcom/android/server/wm/FlymeWindowModeFrame;->access$400(Lcom/android/server/wm/FlymeWindowModeFrame;)Landroid/util/DisplayMetrics;

    move-result-object v0

    const/16 v1, 0x9

    invoke-static {v1, v0}, Lcom/android/server/wm/WindowManagerService;->dipToPixel(ILandroid/util/DisplayMetrics;)I

    move-result v0

    .line 92
    .local v0, "interval":I
    iget-object v1, p0, Lcom/android/server/wm/FlymeWindowModeFrame$LandFrameCalculate;->this$0:Lcom/android/server/wm/FlymeWindowModeFrame;

    iget-object v1, v1, Lcom/android/server/wm/FlymeWindowModeFrame;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/wm/FlymeWindowModeFrame$LandFrameCalculate;->this$0:Lcom/android/server/wm/FlymeWindowModeFrame;

    iget-object v2, v2, Lcom/android/server/wm/FlymeWindowModeFrame;->mFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    mul-int/lit8 v2, v0, 0x2

    sub-int/2addr v1, v2

    .line 93
    .local v1, "realHeight":I
    int-to-float v2, v1

    invoke-static {}, Lcom/android/server/wm/FlymeWindowModeFrame;->access$200()F

    move-result v3

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 94
    .local v2, "realWidth":I
    int-to-float v3, v2

    const/high16 v4, 0x3f800000  # 1.0f

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/android/server/wm/FlymeWindowModeFrame$LandFrameCalculate;->this$0:Lcom/android/server/wm/FlymeWindowModeFrame;

    invoke-static {v4}, Lcom/android/server/wm/FlymeWindowModeFrame;->access$100(Lcom/android/server/wm/FlymeWindowModeFrame;)Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    iput v3, p0, Lcom/android/server/wm/FlymeWindowModeFrame$LandFrameCalculate;->mWinScale:F

    .line 95
    iget-object v3, p0, Lcom/android/server/wm/FlymeWindowModeFrame$LandFrameCalculate;->this$0:Lcom/android/server/wm/FlymeWindowModeFrame;

    iget-object v3, v3, Lcom/android/server/wm/FlymeWindowModeFrame;->mFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    .line 96
    .local v3, "left":I
    iget-object v4, p0, Lcom/android/server/wm/FlymeWindowModeFrame$LandFrameCalculate;->this$0:Lcom/android/server/wm/FlymeWindowModeFrame;

    invoke-static {v4}, Lcom/android/server/wm/FlymeWindowModeFrame;->access$500(Lcom/android/server/wm/FlymeWindowModeFrame;)Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->left:I

    if-lez v4, :cond_61

    .line 97
    iget-object v4, p0, Lcom/android/server/wm/FlymeWindowModeFrame$LandFrameCalculate;->this$0:Lcom/android/server/wm/FlymeWindowModeFrame;

    invoke-static {v4}, Lcom/android/server/wm/FlymeWindowModeFrame;->access$500(Lcom/android/server/wm/FlymeWindowModeFrame;)Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->left:I

    const/16 v5, 0x38

    iget-object v6, p0, Lcom/android/server/wm/FlymeWindowModeFrame$LandFrameCalculate;->this$0:Lcom/android/server/wm/FlymeWindowModeFrame;

    invoke-static {v6}, Lcom/android/server/wm/FlymeWindowModeFrame;->access$400(Lcom/android/server/wm/FlymeWindowModeFrame;)Landroid/util/DisplayMetrics;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/wm/WindowManagerService;->dipToPixel(ILandroid/util/DisplayMetrics;)I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v3, v4

    goto :goto_6e

    .line 99
    :cond_61
    const/16 v4, 0x40

    iget-object v5, p0, Lcom/android/server/wm/FlymeWindowModeFrame$LandFrameCalculate;->this$0:Lcom/android/server/wm/FlymeWindowModeFrame;

    invoke-static {v5}, Lcom/android/server/wm/FlymeWindowModeFrame;->access$400(Lcom/android/server/wm/FlymeWindowModeFrame;)Landroid/util/DisplayMetrics;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/wm/WindowManagerService;->dipToPixel(ILandroid/util/DisplayMetrics;)I

    move-result v4

    add-int/2addr v3, v4

    .line 101
    :goto_6e
    move v4, v0

    .line 102
    .local v4, "top":I
    iget-object v5, p0, Lcom/android/server/wm/FlymeWindowModeFrame$LandFrameCalculate;->mTmpBound:Landroid/graphics/Rect;

    add-int v6, v3, v2

    add-int v7, v4, v1

    invoke-virtual {v5, v3, v4, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 103
    iget-object v5, p0, Lcom/android/server/wm/FlymeWindowModeFrame$LandFrameCalculate;->mTmpBound:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/android/server/wm/FlymeWindowModeFrame$LandFrameCalculate;->mVisibleBound:Landroid/graphics/Rect;

    if-eq v5, v6, :cond_80

    const/4 v5, 0x1

    goto :goto_81

    :cond_80
    const/4 v5, 0x0

    .line 104
    .local v5, "change":Z
    :goto_81
    iget-object v6, p0, Lcom/android/server/wm/FlymeWindowModeFrame$LandFrameCalculate;->mVisibleBound:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/android/server/wm/FlymeWindowModeFrame$LandFrameCalculate;->mTmpBound:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 105
    iget-object v6, p0, Lcom/android/server/wm/FlymeWindowModeFrame$LandFrameCalculate;->mDisplayBound:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/android/server/wm/FlymeWindowModeFrame$LandFrameCalculate;->mTmpBound:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 106
    iget-object v6, p0, Lcom/android/server/wm/FlymeWindowModeFrame$LandFrameCalculate;->mDisplayBound:Landroid/graphics/Rect;

    iget v7, v6, Landroid/graphics/Rect;->top:I

    iget-object v8, p0, Lcom/android/server/wm/FlymeWindowModeFrame$LandFrameCalculate;->this$0:Lcom/android/server/wm/FlymeWindowModeFrame;

    invoke-static {v8}, Lcom/android/server/wm/FlymeWindowModeFrame;->access$300(Lcom/android/server/wm/FlymeWindowModeFrame;)Landroid/graphics/Rect;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Rect;->top:I

    int-to-float v8, v8

    iget v9, p0, Lcom/android/server/wm/FlymeWindowModeFrame$LandFrameCalculate;->mWinScale:F

    mul-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    sub-int/2addr v7, v8

    iput v7, v6, Landroid/graphics/Rect;->top:I

    .line 107
    return v5
.end method

.method public getDisplayBound()Landroid/graphics/Rect;
    .registers 2

    .line 117
    iget-object v0, p0, Lcom/android/server/wm/FlymeWindowModeFrame$LandFrameCalculate;->mDisplayBound:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getScale()F
    .registers 2

    .line 112
    iget v0, p0, Lcom/android/server/wm/FlymeWindowModeFrame$LandFrameCalculate;->mWinScale:F

    return v0
.end method

.method public getVisibleBound()Landroid/graphics/Rect;
    .registers 2

    .line 122
    iget-object v0, p0, Lcom/android/server/wm/FlymeWindowModeFrame$LandFrameCalculate;->mVisibleBound:Landroid/graphics/Rect;

    return-object v0
.end method
