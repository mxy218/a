.class Lcom/android/server/wm/FlymeWindowModeFrame;
.super Ljava/lang/Object;
.source "FlymeWindowModeFrame.java"

# interfaces
.implements Lcom/android/server/wm/FlymeDisplayInfo;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/FlymeWindowModeFrame$LandFrameCalculate;,
        Lcom/android/server/wm/FlymeWindowModeFrame$PortFrameCalculate;,
        Lcom/android/server/wm/FlymeWindowModeFrame$IFrameCalculate;
    }
.end annotation


# static fields
.field private static final LANDSCAPE_OFFSET_LEFT_CUTOUT_IN_DP:I = 0x38

.field private static final LANDSCAPE_OFFSET_LEFT_IN_DP:I = 0x40

.field private static final WINDOW_CORNER_RADIUS:F = 48.0f

.field private static WINDOW_MODE_ASPECT_RATIO:F

.field private static WINDOW_MODE_PORTRAIT_SCALE:F


# instance fields
.field private final frameCalculate:Lcom/android/server/wm/FlymeWindowModeFrame$IFrameCalculate;

.field private final mDisplayFrame:Landroid/graphics/Rect;

.field private final mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

.field private final mDisplayMetrics:Landroid/util/DisplayMetrics;

.field final mFrame:Landroid/graphics/Rect;

.field private final mRotation:I

.field private final mSafeInsets:Landroid/graphics/Rect;

.field private final mVisibleFrame:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 19
    const v0, 0x3f19999a  # 0.6f

    sput v0, Lcom/android/server/wm/FlymeWindowModeFrame;->WINDOW_MODE_ASPECT_RATIO:F

    .line 21
    const v0, 0x3f59999a  # 0.85f

    sput v0, Lcom/android/server/wm/FlymeWindowModeFrame;->WINDOW_MODE_PORTRAIT_SCALE:F

    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/DisplayContent;I)V
    .registers 11
    .param p1, "displayContent"  # Lcom/android/server/wm/DisplayContent;
    .param p2, "rotation"  # I

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/FlymeWindowModeFrame;->mDisplayFrame:Landroid/graphics/Rect;

    .line 25
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/FlymeWindowModeFrame;->mVisibleFrame:Landroid/graphics/Rect;

    .line 26
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/FlymeWindowModeFrame;->mFrame:Landroid/graphics/Rect;

    .line 27
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/FlymeWindowModeFrame;->mSafeInsets:Landroid/graphics/Rect;

    .line 181
    const/4 v0, 0x1

    if-eq p2, v0, :cond_2d

    const/4 v0, 0x3

    if-eq p2, v0, :cond_2d

    .line 187
    new-instance v0, Lcom/android/server/wm/FlymeWindowModeFrame$PortFrameCalculate;

    invoke-direct {v0, p0}, Lcom/android/server/wm/FlymeWindowModeFrame$PortFrameCalculate;-><init>(Lcom/android/server/wm/FlymeWindowModeFrame;)V

    iput-object v0, p0, Lcom/android/server/wm/FlymeWindowModeFrame;->frameCalculate:Lcom/android/server/wm/FlymeWindowModeFrame$IFrameCalculate;

    goto :goto_35

    .line 184
    :cond_2d
    new-instance v0, Lcom/android/server/wm/FlymeWindowModeFrame$LandFrameCalculate;

    invoke-direct {v0, p0}, Lcom/android/server/wm/FlymeWindowModeFrame$LandFrameCalculate;-><init>(Lcom/android/server/wm/FlymeWindowModeFrame;)V

    iput-object v0, p0, Lcom/android/server/wm/FlymeWindowModeFrame;->frameCalculate:Lcom/android/server/wm/FlymeWindowModeFrame$IFrameCalculate;

    .line 185
    nop

    .line 190
    :goto_35
    iput p2, p0, Lcom/android/server/wm/FlymeWindowModeFrame;->mRotation:I

    .line 191
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/FlymeWindowModeFrame;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 192
    invoke-virtual {p1, p2}, Lcom/android/server/wm/DisplayContent;->calculateDisplayCutoutForRotation(I)Lcom/android/server/wm/utils/WmDisplayCutout;

    move-result-object v0

    .line 193
    .local v0, "wmDisplayCutout":Lcom/android/server/wm/utils/WmDisplayCutout;
    iget-object v1, p0, Lcom/android/server/wm/FlymeWindowModeFrame;->mSafeInsets:Landroid/graphics/Rect;

    invoke-virtual {v0}, Lcom/android/server/wm/utils/WmDisplayCutout;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/DisplayCutout;->getSafeInsets()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 194
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/android/server/wm/DisplayContent;->calculateDisplayCutoutForRotation(I)Lcom/android/server/wm/utils/WmDisplayCutout;

    move-result-object v0

    .line 195
    iget-object v2, p1, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1050211

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 196
    .local v2, "statusBarHeight":I
    invoke-virtual {v0}, Lcom/android/server/wm/utils/WmDisplayCutout;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 197
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v3

    iget v3, v3, Landroid/view/DisplayInfo;->logicalWidth:I

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v4

    iget v4, v4, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-direct {p0, v3, v4}, Lcom/android/server/wm/FlymeWindowModeFrame;->calculateFrame(II)V

    .line 198
    iget-object v3, p0, Lcom/android/server/wm/FlymeWindowModeFrame;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/wm/FlymeWindowModeFrame;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 199
    .local v3, "width":I
    int-to-float v4, v3

    sget v5, Lcom/android/server/wm/FlymeWindowModeFrame;->WINDOW_MODE_ASPECT_RATIO:F

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 200
    .local v4, "height":I
    iget-object v5, p0, Lcom/android/server/wm/FlymeWindowModeFrame;->mDisplayFrame:Landroid/graphics/Rect;

    add-int v6, v4, v2

    invoke-virtual {v5, v1, v1, v3, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 201
    iget-object v5, p0, Lcom/android/server/wm/FlymeWindowModeFrame;->mVisibleFrame:Landroid/graphics/Rect;

    add-int v6, v4, v2

    invoke-virtual {v5, v1, v2, v3, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 202
    iget-object v5, p0, Lcom/android/server/wm/FlymeWindowModeFrame;->frameCalculate:Lcom/android/server/wm/FlymeWindowModeFrame$IFrameCalculate;

    iget-object v6, p1, Lcom/android/server/wm/DisplayContent;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    invoke-interface {v5, v6}, Lcom/android/server/wm/FlymeWindowModeFrame$IFrameCalculate;->calculate(Lcom/android/server/wm/DisplayFrames;)Z

    .line 203
    new-instance v5, Landroid/view/DisplayInfo;

    invoke-direct {v5}, Landroid/view/DisplayInfo;-><init>()V

    .line 204
    .local v5, "displayInfo":Landroid/view/DisplayInfo;
    iget-object v6, p0, Lcom/android/server/wm/FlymeWindowModeFrame;->mDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    iput v6, v5, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 205
    iget-object v6, p0, Lcom/android/server/wm/FlymeWindowModeFrame;->mDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    iput v6, v5, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 206
    new-instance v6, Lcom/android/server/wm/DisplayFrames;

    const/4 v7, 0x0

    invoke-direct {v6, v1, v5, v7}, Lcom/android/server/wm/DisplayFrames;-><init>(ILandroid/view/DisplayInfo;Lcom/android/server/wm/utils/WmDisplayCutout;)V

    iput-object v6, p0, Lcom/android/server/wm/FlymeWindowModeFrame;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    .line 207
    iget-object v1, p0, Lcom/android/server/wm/FlymeWindowModeFrame;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayFrames;->onBeginLayout()V

    .line 208
    return-void
.end method

.method static synthetic access$000()F
    .registers 1

    .line 15
    sget v0, Lcom/android/server/wm/FlymeWindowModeFrame;->WINDOW_MODE_PORTRAIT_SCALE:F

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/wm/FlymeWindowModeFrame;)Landroid/graphics/Rect;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/wm/FlymeWindowModeFrame;

    .line 15
    iget-object v0, p0, Lcom/android/server/wm/FlymeWindowModeFrame;->mDisplayFrame:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$200()F
    .registers 1

    .line 15
    sget v0, Lcom/android/server/wm/FlymeWindowModeFrame;->WINDOW_MODE_ASPECT_RATIO:F

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/wm/FlymeWindowModeFrame;)Landroid/graphics/Rect;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/wm/FlymeWindowModeFrame;

    .line 15
    iget-object v0, p0, Lcom/android/server/wm/FlymeWindowModeFrame;->mVisibleFrame:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/wm/FlymeWindowModeFrame;)Landroid/util/DisplayMetrics;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/wm/FlymeWindowModeFrame;

    .line 15
    iget-object v0, p0, Lcom/android/server/wm/FlymeWindowModeFrame;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/wm/FlymeWindowModeFrame;)Landroid/graphics/Rect;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/wm/FlymeWindowModeFrame;

    .line 15
    iget-object v0, p0, Lcom/android/server/wm/FlymeWindowModeFrame;->mSafeInsets:Landroid/graphics/Rect;

    return-object v0
.end method

.method private calculateFrame(II)V
    .registers 10
    .param p1, "logicalWidth"  # I
    .param p2, "logicalHeight"  # I

    .line 174
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 175
    .local v0, "width":I
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 176
    .local v1, "height":I
    iget v2, p0, Lcom/android/server/wm/FlymeWindowModeFrame;->mRotation:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v2, v3, :cond_13

    const/4 v5, 0x3

    if-ne v2, v5, :cond_12

    goto :goto_13

    :cond_12
    move v3, v4

    :cond_13
    :goto_13
    move v2, v3

    .line 177
    .local v2, "rotation":Z
    iget-object v3, p0, Lcom/android/server/wm/FlymeWindowModeFrame;->mFrame:Landroid/graphics/Rect;

    if-eqz v2, :cond_1a

    move v5, v1

    goto :goto_1b

    :cond_1a
    move v5, v0

    :goto_1b
    if-eqz v2, :cond_1f

    move v6, v0

    goto :goto_20

    :cond_1f
    move v6, v1

    :goto_20
    invoke-virtual {v3, v4, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 178
    return-void
.end method


# virtual methods
.method public getCornerRadius()F
    .registers 2

    .line 128
    const/high16 v0, 0x42400000  # 48.0f

    return v0
.end method

.method public getDisplayBound()Landroid/graphics/Rect;
    .registers 2

    .line 138
    iget-object v0, p0, Lcom/android/server/wm/FlymeWindowModeFrame;->frameCalculate:Lcom/android/server/wm/FlymeWindowModeFrame$IFrameCalculate;

    invoke-interface {v0}, Lcom/android/server/wm/FlymeWindowModeFrame$IFrameCalculate;->getDisplayBound()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayFrame()Landroid/graphics/Rect;
    .registers 2

    .line 148
    iget-object v0, p0, Lcom/android/server/wm/FlymeWindowModeFrame;->mDisplayFrame:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getDisplayFrames(Lcom/android/server/wm/DisplayFrames;)Lcom/android/server/wm/DisplayFrames;
    .registers 5
    .param p1, "displayFrames"  # Lcom/android/server/wm/DisplayFrames;

    .line 157
    invoke-virtual {p0}, Lcom/android/server/wm/FlymeWindowModeFrame;->getDisplayBound()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p1, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    .line 158
    .local v0, "layoutYDiff":I
    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 159
    int-to-float v1, v0

    invoke-virtual {p0}, Lcom/android/server/wm/FlymeWindowModeFrame;->getScale()F

    move-result v2

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 160
    iget-object v1, p0, Lcom/android/server/wm/FlymeWindowModeFrame;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    iget-object v1, v1, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/wm/FlymeWindowModeFrame;->mVisibleFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 161
    iget-object v1, p0, Lcom/android/server/wm/FlymeWindowModeFrame;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    iget-object v1, v1, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/wm/FlymeWindowModeFrame;->mVisibleFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 162
    iget-object v1, p0, Lcom/android/server/wm/FlymeWindowModeFrame;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    iget-object v1, v1, Lcom/android/server/wm/DisplayFrames;->mCurrent:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/wm/FlymeWindowModeFrame;->mVisibleFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 163
    iget-object v1, p0, Lcom/android/server/wm/FlymeWindowModeFrame;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    iget-object v1, v1, Lcom/android/server/wm/DisplayFrames;->mSystem:Landroid/graphics/Rect;

    iget-object v2, p1, Lcom/android/server/wm/DisplayFrames;->mSystem:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 164
    iget-object v1, p0, Lcom/android/server/wm/FlymeWindowModeFrame;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    iget-object v1, v1, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/wm/FlymeWindowModeFrame;->mVisibleFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 165
    iget-object v1, p0, Lcom/android/server/wm/FlymeWindowModeFrame;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    iget-object v1, v1, Lcom/android/server/wm/DisplayFrames;->mStableFullscreen:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/wm/FlymeWindowModeFrame;->mVisibleFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 166
    iget-object v1, p0, Lcom/android/server/wm/FlymeWindowModeFrame;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    iget-object v1, v1, Lcom/android/server/wm/DisplayFrames;->mVoiceContent:Landroid/graphics/Rect;

    iget-object v2, p1, Lcom/android/server/wm/DisplayFrames;->mVoiceContent:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 167
    iget-object v1, p0, Lcom/android/server/wm/FlymeWindowModeFrame;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    iget-object v1, v1, Lcom/android/server/wm/DisplayFrames;->mCurrent:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/wm/FlymeWindowModeFrame;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    iget-object v2, v2, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v0

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 168
    iget-object v1, p0, Lcom/android/server/wm/FlymeWindowModeFrame;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    iget-object v1, v1, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/wm/FlymeWindowModeFrame;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    iget-object v2, v2, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v0

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 169
    iget-object v1, p0, Lcom/android/server/wm/FlymeWindowModeFrame;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    iget-object v1, v1, Lcom/android/server/wm/DisplayFrames;->mVoiceContent:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/wm/FlymeWindowModeFrame;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    iget-object v2, v2, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v0

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 170
    iget-object v1, p0, Lcom/android/server/wm/FlymeWindowModeFrame;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    return-object v1
.end method

.method public getScale()F
    .registers 2

    .line 133
    iget-object v0, p0, Lcom/android/server/wm/FlymeWindowModeFrame;->frameCalculate:Lcom/android/server/wm/FlymeWindowModeFrame$IFrameCalculate;

    invoke-interface {v0}, Lcom/android/server/wm/FlymeWindowModeFrame$IFrameCalculate;->getScale()F

    move-result v0

    return v0
.end method

.method public getVisibleBound()Landroid/graphics/Rect;
    .registers 2

    .line 143
    iget-object v0, p0, Lcom/android/server/wm/FlymeWindowModeFrame;->frameCalculate:Lcom/android/server/wm/FlymeWindowModeFrame$IFrameCalculate;

    invoke-interface {v0}, Lcom/android/server/wm/FlymeWindowModeFrame$IFrameCalculate;->getVisibleBound()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public getVisibleFrame()Landroid/graphics/Rect;
    .registers 2

    .line 153
    iget-object v0, p0, Lcom/android/server/wm/FlymeWindowModeFrame;->mVisibleFrame:Landroid/graphics/Rect;

    return-object v0
.end method
