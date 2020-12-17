.class public Lcom/meizu/settings/display/PreviewPagerAdapter;
.super Landroidx/viewpager/widget/PagerAdapter;
.source "PreviewPagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/settings/display/PreviewPagerAdapter$InflateViewFinishListener;
    }
.end annotation


# static fields
.field private static final FADE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;


# instance fields
.field private mAnimationEndRunnable:Ljava/lang/Runnable;

.field private mFontSizeValues:[Ljava/lang/String;

.field private mPreviewFrames:[Landroid/widget/FrameLayout;

.field private mTempPreviewFrames:[Landroid/widget/FrameLayout;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 46
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    sput-object v0, Lcom/meizu/settings/display/PreviewPagerAdapter;->FADE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[I[Landroid/content/res/Configuration;IILcom/meizu/settings/display/PreviewPagerAdapter$InflateViewFinishListener;)V
    .registers 17

    move-object v1, p0

    move-object v3, p1

    move-object v2, p2

    .line 57
    invoke-direct {p0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f030095

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/meizu/settings/display/PreviewPagerAdapter;->mFontSizeValues:[Ljava/lang/String;

    .line 59
    array-length v0, v2

    new-array v0, v0, [Landroid/widget/FrameLayout;

    iput-object v0, v1, Lcom/meizu/settings/display/PreviewPagerAdapter;->mPreviewFrames:[Landroid/widget/FrameLayout;

    .line 60
    array-length v0, v2

    new-array v0, v0, [Landroid/widget/FrameLayout;

    iput-object v0, v1, Lcom/meizu/settings/display/PreviewPagerAdapter;->mTempPreviewFrames:[Landroid/widget/FrameLayout;

    .line 62
    iget-object v0, v1, Lcom/meizu/settings/display/PreviewPagerAdapter;->mPreviewFrames:[Landroid/widget/FrameLayout;

    new-instance v4, Landroid/widget/FrameLayout;

    invoke-direct {v4, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v8, 0x0

    aput-object v4, v0, v8

    .line 63
    iget-object v0, v1, Lcom/meizu/settings/display/PreviewPagerAdapter;->mPreviewFrames:[Landroid/widget/FrameLayout;

    aget-object v0, v0, v8

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    invoke-direct {v4, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 67
    aget-object v0, p3, p4

    .line 68
    iget-object v4, v1, Lcom/meizu/settings/display/PreviewPagerAdapter;->mFontSizeValues:[Ljava/lang/String;

    aget-object v4, v4, p5

    invoke-static {v4}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    iput v4, v0, Landroid/content/res/Configuration;->fontScale:F

    .line 69
    invoke-virtual {p1, v0}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object v0

    .line 70
    invoke-virtual {p1}, Landroid/content/Context;->getThemeResId()I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/content/Context;->setTheme(I)V

    .line 72
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 73
    aget v4, v2, v8

    iget-object v5, v1, Lcom/meizu/settings/display/PreviewPagerAdapter;->mPreviewFrames:[Landroid/widget/FrameLayout;

    aget-object v5, v5, v8

    invoke-virtual {v0, v4, v5, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const/high16 v4, 0x3f800000  # 1.0f

    .line 75
    invoke-virtual {v0, v4}, Landroid/view/View;->setAlpha(F)V

    .line 76
    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 77
    iget-object v4, v1, Lcom/meizu/settings/display/PreviewPagerAdapter;->mPreviewFrames:[Landroid/widget/FrameLayout;

    aget-object v4, v4, v8

    invoke-virtual {v4, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 79
    new-instance v9, Lcom/meizu/settings/display/PreviewPagerAdapter$1;

    move-object v0, v9

    move-object v4, p3

    move-object/from16 v5, p6

    move v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/meizu/settings/display/PreviewPagerAdapter$1;-><init>(Lcom/meizu/settings/display/PreviewPagerAdapter;[ILandroid/content/Context;[Landroid/content/res/Configuration;Lcom/meizu/settings/display/PreviewPagerAdapter$InflateViewFinishListener;II)V

    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v1, v8, [Ljava/lang/Void;

    .line 131
    invoke-virtual {v9, v0, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/settings/display/PreviewPagerAdapter;)[Landroid/widget/FrameLayout;
    .registers 1

    .line 36
    iget-object p0, p0, Lcom/meizu/settings/display/PreviewPagerAdapter;->mTempPreviewFrames:[Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$100(Lcom/meizu/settings/display/PreviewPagerAdapter;)[Ljava/lang/String;
    .registers 1

    .line 36
    iget-object p0, p0, Lcom/meizu/settings/display/PreviewPagerAdapter;->mFontSizeValues:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/meizu/settings/display/PreviewPagerAdapter;)[Landroid/widget/FrameLayout;
    .registers 1

    .line 36
    iget-object p0, p0, Lcom/meizu/settings/display/PreviewPagerAdapter;->mPreviewFrames:[Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$202(Lcom/meizu/settings/display/PreviewPagerAdapter;[Landroid/widget/FrameLayout;)[Landroid/widget/FrameLayout;
    .registers 2

    .line 36
    iput-object p1, p0, Lcom/meizu/settings/display/PreviewPagerAdapter;->mPreviewFrames:[Landroid/widget/FrameLayout;

    return-object p1
.end method

.method static synthetic access$300(Lcom/meizu/settings/display/PreviewPagerAdapter;)V
    .registers 1

    .line 36
    invoke-direct {p0}, Lcom/meizu/settings/display/PreviewPagerAdapter;->runAnimationEnd()V

    return-void
.end method

.method static synthetic access$400()Landroid/view/animation/Interpolator;
    .registers 1

    .line 36
    sget-object v0, Lcom/meizu/settings/display/PreviewPagerAdapter;->FADE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method private runAnimationEnd()V
    .registers 1

    .line 225
    iget-object p0, p0, Lcom/meizu/settings/display/PreviewPagerAdapter;->mAnimationEndRunnable:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private setPreviewLayerInternal(IIIIIZ)V
    .registers 10

    .line 174
    iget-object v0, p0, Lcom/meizu/settings/display/PreviewPagerAdapter;->mFontSizeValues:[Ljava/lang/String;

    array-length v0, v0

    .line 176
    iget-object v1, p0, Lcom/meizu/settings/display/PreviewPagerAdapter;->mPreviewFrames:[Landroid/widget/FrameLayout;

    aget-object v2, v1, p3

    if-eqz v2, :cond_53

    .line 178
    aget-object v1, v1, p3

    mul-int/2addr p1, v0

    add-int/2addr p1, p4

    invoke-virtual {v1, p1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 179
    iget-object p4, p0, Lcom/meizu/settings/display/PreviewPagerAdapter;->mPreviewFrames:[Landroid/widget/FrameLayout;

    aget-object p3, p4, p3

    mul-int/2addr p2, v0

    add-int/2addr p2, p5

    invoke-virtual {p3, p2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    const/4 p3, 0x0

    if-eqz p6, :cond_3f

    if-eqz p2, :cond_53

    if-eqz p1, :cond_53

    .line 183
    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p4

    .line 184
    invoke-virtual {p4, p3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p3

    sget-object p4, Lcom/meizu/settings/display/PreviewPagerAdapter;->FADE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 185
    invoke-virtual {p3, p4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p3

    const-wide/16 p4, 0xc8

    .line 186
    invoke-virtual {p3, p4, p5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p3

    new-instance p4, Lcom/meizu/settings/display/PreviewPagerAdapter$2;

    invoke-direct {p4, p0, p2, p1}, Lcom/meizu/settings/display/PreviewPagerAdapter$2;-><init>(Lcom/meizu/settings/display/PreviewPagerAdapter;Landroid/view/View;Landroid/view/View;)V

    .line 187
    invoke-virtual {p3, p4}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    goto :goto_53

    :cond_3f
    if-eqz p2, :cond_48

    .line 208
    invoke-virtual {p2, p3}, Landroid/view/View;->setAlpha(F)V

    const/4 p0, 0x4

    .line 209
    invoke-virtual {p2, p0}, Landroid/view/View;->setVisibility(I)V

    :cond_48
    if-eqz p1, :cond_53

    const/4 p0, 0x0

    .line 213
    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    const/high16 p0, 0x3f800000  # 1.0f

    .line 214
    invoke-virtual {p1, p0}, Landroid/view/View;->setAlpha(F)V

    :cond_53
    :goto_53
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .registers 4

    .line 137
    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public getCount()I
    .registers 1

    .line 142
    iget-object p0, p0, Lcom/meizu/settings/display/PreviewPagerAdapter;->mPreviewFrames:[Landroid/widget/FrameLayout;

    array-length p0, p0

    return p0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .registers 4

    .line 147
    iget-object v0, p0, Lcom/meizu/settings/display/PreviewPagerAdapter;->mPreviewFrames:[Landroid/widget/FrameLayout;

    aget-object v0, v0, p2

    if-eqz v0, :cond_e

    .line 149
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 150
    iget-object p0, p0, Lcom/meizu/settings/display/PreviewPagerAdapter;->mPreviewFrames:[Landroid/widget/FrameLayout;

    aget-object p0, p0, p2

    return-object p0

    :cond_e
    const/4 p0, 0x0

    return-object p0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .registers 3

    if-ne p1, p2, :cond_4

    const/4 p0, 0x1

    goto :goto_5

    :cond_4
    const/4 p0, 0x0

    :goto_5
    return p0
.end method

.method public setAnimationEndListener(Ljava/lang/Runnable;)V
    .registers 2

    .line 221
    iput-object p1, p0, Lcom/meizu/settings/display/PreviewPagerAdapter;->mAnimationEndRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method setPreviewLayer(IIIIIZ)V
    .registers 14

    .line 163
    invoke-direct/range {p0 .. p6}, Lcom/meizu/settings/display/PreviewPagerAdapter;->setPreviewLayerInternal(IIIIIZ)V

    const/4 p6, 0x0

    .line 164
    :goto_4
    iget-object v0, p0, Lcom/meizu/settings/display/PreviewPagerAdapter;->mPreviewFrames:[Landroid/widget/FrameLayout;

    array-length v0, v0

    if-ge p6, v0, :cond_18

    if-eq p6, p3, :cond_15

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p6

    move v4, p4

    move v5, p5

    .line 166
    invoke-direct/range {v0 .. v6}, Lcom/meizu/settings/display/PreviewPagerAdapter;->setPreviewLayerInternal(IIIIIZ)V

    :cond_15
    add-int/lit8 p6, p6, 0x1

    goto :goto_4

    :cond_18
    return-void
.end method
