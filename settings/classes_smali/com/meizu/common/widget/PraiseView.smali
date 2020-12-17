.class public Lcom/meizu/common/widget/PraiseView;
.super Landroid/view/View;
.source "PraiseView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/common/widget/PraiseView$onPraiseCallBack;,
        Lcom/meizu/common/widget/PraiseView$Stage;
    }
.end annotation


# instance fields
.field private isAnimationRunning:Z

.field private isPerformAnimation:Z

.field private mAnimImage:Landroid/graphics/drawable/Drawable;

.field private mAnimImageView:Landroid/widget/ImageView;

.field private mAnimListener:Landroid/view/animation/Animation$AnimationListener;

.field private mAnimPopWindow:Landroid/widget/PopupWindow;

.field private mBackImageChanged:Z

.field private mContext:Landroid/content/Context;

.field private mCurrentStage:Lcom/meizu/common/widget/PraiseView$Stage;

.field private mHeight:I

.field private mPopAnimation:Landroid/view/animation/Animation;

.field private mPopWindowView:Landroid/view/ViewGroup;

.field private mPopwindowHiehgt:I

.field private mPopwindowWidth:I

.field private mPraiseCallBack:Lcom/meizu/common/widget/PraiseView$onPraiseCallBack;

.field private mPraiseImage:Landroid/graphics/drawable/Drawable;

.field private mTranslateHeight:F

.field private mUnPraiseImage:Landroid/graphics/drawable/Drawable;

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 73
    invoke-direct {p0, p1, v0}, Lcom/meizu/common/widget/PraiseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 77
    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/common/widget/PraiseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    .line 81
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 263
    new-instance v0, Lcom/meizu/common/widget/PraiseView$2;

    invoke-direct {v0, p0}, Lcom/meizu/common/widget/PraiseView$2;-><init>(Lcom/meizu/common/widget/PraiseView;)V

    iput-object v0, p0, Lcom/meizu/common/widget/PraiseView;->mAnimListener:Landroid/view/animation/Animation$AnimationListener;

    .line 82
    iput-object p1, p0, Lcom/meizu/common/widget/PraiseView;->mContext:Landroid/content/Context;

    .line 83
    invoke-direct {p0, p1, p2, p3}, Lcom/meizu/common/widget/PraiseView;->initAttributes(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/common/widget/PraiseView;)Lcom/meizu/common/widget/PraiseView$onPraiseCallBack;
    .registers 1

    .line 34
    iget-object p0, p0, Lcom/meizu/common/widget/PraiseView;->mPraiseCallBack:Lcom/meizu/common/widget/PraiseView$onPraiseCallBack;

    return-object p0
.end method

.method static synthetic access$102(Lcom/meizu/common/widget/PraiseView;Z)Z
    .registers 2

    .line 34
    iput-boolean p1, p0, Lcom/meizu/common/widget/PraiseView;->isAnimationRunning:Z

    return p1
.end method

.method static synthetic access$200(Lcom/meizu/common/widget/PraiseView;)Landroid/view/ViewGroup;
    .registers 1

    .line 34
    iget-object p0, p0, Lcom/meizu/common/widget/PraiseView;->mPopWindowView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$300(Lcom/meizu/common/widget/PraiseView;)Landroid/widget/PopupWindow;
    .registers 1

    .line 34
    iget-object p0, p0, Lcom/meizu/common/widget/PraiseView;->mAnimPopWindow:Landroid/widget/PopupWindow;

    return-object p0
.end method

.method private addImageView()V
    .registers 4

    .line 197
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lcom/meizu/common/widget/PraiseView;->mWidth:I

    iget v2, p0, Lcom/meizu/common/widget/PraiseView;->mHeight:I

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x51

    .line 198
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 199
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/meizu/common/widget/PraiseView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/meizu/common/widget/PraiseView;->mAnimImageView:Landroid/widget/ImageView;

    .line 200
    iget-object v1, p0, Lcom/meizu/common/widget/PraiseView;->mAnimImageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/meizu/common/widget/PraiseView;->mAnimImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 201
    iget-object v1, p0, Lcom/meizu/common/widget/PraiseView;->mAnimImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 202
    iget-object v0, p0, Lcom/meizu/common/widget/PraiseView;->mPopWindowView:Landroid/view/ViewGroup;

    iget-object p0, p0, Lcom/meizu/common/widget/PraiseView;->mAnimImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method private getInterpolator(FFFF)Landroid/view/animation/Interpolator;
    .registers 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 342
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p0, v0, :cond_c

    .line 344
    new-instance p0, Landroid/view/animation/PathInterpolator;

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    return-object p0

    .line 346
    :cond_c
    new-instance p0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    return-object p0
.end method

.method private getMeasure(III)I
    .registers 4

    const/high16 p0, -0x80000000

    if-eq p2, p0, :cond_8

    const/high16 p0, 0x40000000  # 2.0f

    if-eq p2, p0, :cond_9

    :cond_8
    move p1, p3

    :cond_9
    return p1
.end method

.method private initAnimation()Landroid/view/animation/Animation;
    .registers 21

    move-object/from16 v0, p0

    .line 206
    new-instance v10, Landroid/view/animation/ScaleAnimation;

    const/high16 v2, 0x3f800000  # 1.0f

    const v3, 0x3fcccccd  # 1.6f

    const/high16 v4, 0x3f800000  # 1.0f

    const v5, 0x3fcccccd  # 1.6f

    const/4 v6, 0x1

    const/high16 v7, 0x3f000000  # 0.5f

    const/4 v8, 0x1

    const/high16 v9, 0x3f000000  # 0.5f

    move-object v1, v10

    invoke-direct/range {v1 .. v9}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    const v1, 0x3dcccccd  # 0.1f

    const v2, 0x3e99999a  # 0.3f

    const/high16 v3, 0x3f800000  # 1.0f

    const/4 v4, 0x0

    .line 208
    invoke-direct {v0, v2, v4, v1, v3}, Lcom/meizu/common/widget/PraiseView;->getInterpolator(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v5

    invoke-virtual {v10, v5}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v5, 0x2bc

    .line 209
    invoke-virtual {v10, v5, v6}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 211
    iget v7, v0, Lcom/meizu/common/widget/PraiseView;->mTranslateHeight:F

    iget v8, v0, Lcom/meizu/common/widget/PraiseView;->mPopwindowHiehgt:I

    int-to-float v8, v8

    div-float/2addr v7, v8

    .line 212
    new-instance v8, Landroid/view/animation/TranslateAnimation;

    neg-float v7, v7

    const/4 v12, 0x2

    const/4 v13, 0x0

    const/4 v14, 0x2

    const/4 v15, 0x0

    const/16 v16, 0x2

    const/16 v17, 0x0

    const/16 v18, 0x2

    move-object v11, v8

    move/from16 v19, v7

    invoke-direct/range {v11 .. v19}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 214
    invoke-direct {v0, v2, v4, v1, v3}, Lcom/meizu/common/widget/PraiseView;->getInterpolator(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 215
    invoke-virtual {v8, v5, v6}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 217
    new-instance v1, Landroid/view/animation/RotateAnimation;

    const/4 v12, 0x0

    const/high16 v13, 0x41c80000  # 25.0f

    const/4 v14, 0x1

    const/high16 v15, 0x3f000000  # 0.5f

    const/16 v16, 0x1

    const/high16 v17, 0x3f000000  # 0.5f

    move-object v11, v1

    invoke-direct/range {v11 .. v17}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    const-wide/16 v11, 0x64

    .line 218
    invoke-virtual {v1, v11, v12}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    const v7, 0x3f333333  # 0.7f

    .line 219
    invoke-direct {v0, v2, v4, v7, v3}, Lcom/meizu/common/widget/PraiseView;->getInterpolator(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 221
    new-instance v9, Landroid/view/animation/RotateAnimation;

    const/4 v14, 0x0

    const/high16 v15, -0x3e380000  # -25.0f

    const/16 v18, 0x1

    const/high16 v19, 0x3f000000  # 0.5f

    move-object v13, v9

    invoke-direct/range {v13 .. v19}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    const-wide/16 v13, 0x78

    .line 222
    invoke-virtual {v9, v13, v14}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 223
    invoke-virtual {v9, v11, v12}, Landroid/view/animation/RotateAnimation;->setStartOffset(J)V

    .line 224
    invoke-direct {v0, v2, v4, v7, v3}, Lcom/meizu/common/widget/PraiseView;->getInterpolator(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 226
    new-instance v11, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v11, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 227
    invoke-direct {v0, v2, v4, v7, v3}, Lcom/meizu/common/widget/PraiseView;->getInterpolator(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v2

    invoke-virtual {v11, v2}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v2, 0x12c

    .line 228
    invoke-virtual {v11, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 229
    invoke-virtual {v11, v5, v6}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    .line 231
    new-instance v2, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 233
    invoke-virtual {v2, v10}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 234
    invoke-virtual {v2, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 235
    invoke-virtual {v2, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 236
    invoke-virtual {v2, v8}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 237
    invoke-virtual {v2, v11}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 239
    new-instance v1, Lcom/meizu/common/widget/PraiseView$1;

    invoke-direct {v1, v0}, Lcom/meizu/common/widget/PraiseView$1;-><init>(Lcom/meizu/common/widget/PraiseView;)V

    invoke-virtual {v11, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 259
    iget-object v0, v0, Lcom/meizu/common/widget/PraiseView;->mAnimListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v2, v0}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-object v2
.end method

.method private initAttributes(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    .line 87
    sget-object v0, Lcom/meizu/common/R$styleable;->PraiseView:[I

    sget v1, Lcom/meizu/common/R$style;->Widget_MeizuCommon_PraiseView_Default:I

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 89
    sget p2, Lcom/meizu/common/R$styleable;->PraiseView_praiseBackDrawable:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/meizu/common/widget/PraiseView;->mPraiseImage:Landroid/graphics/drawable/Drawable;

    .line 90
    sget p2, Lcom/meizu/common/R$styleable;->PraiseView_unPraiseBackDrawable:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/meizu/common/widget/PraiseView;->mUnPraiseImage:Landroid/graphics/drawable/Drawable;

    .line 91
    iget-object p2, p0, Lcom/meizu/common/widget/PraiseView;->mPraiseImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/meizu/common/widget/PraiseView;->mAnimImage:Landroid/graphics/drawable/Drawable;

    .line 93
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 95
    iget-object p1, p0, Lcom/meizu/common/widget/PraiseView;->mUnPraiseImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 96
    sget-object p1, Lcom/meizu/common/widget/PraiseView$Stage;->CANCEL:Lcom/meizu/common/widget/PraiseView$Stage;

    iput-object p1, p0, Lcom/meizu/common/widget/PraiseView;->mCurrentStage:Lcom/meizu/common/widget/PraiseView$Stage;

    const/4 p1, 0x1

    .line 98
    iput-boolean p1, p0, Lcom/meizu/common/widget/PraiseView;->isPerformAnimation:Z

    const/4 p2, 0x0

    .line 99
    iput-boolean p2, p0, Lcom/meizu/common/widget/PraiseView;->isAnimationRunning:Z

    .line 101
    iput-boolean p1, p0, Lcom/meizu/common/widget/PraiseView;->mBackImageChanged:Z

    return-void
.end method

.method private initPopWindow()V
    .registers 5

    .line 184
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/meizu/common/widget/PraiseView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/meizu/common/widget/PraiseView;->mPopWindowView:Landroid/view/ViewGroup;

    .line 185
    invoke-direct {p0}, Lcom/meizu/common/widget/PraiseView;->addImageView()V

    .line 187
    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/meizu/common/widget/PraiseView;->mPopWindowView:Landroid/view/ViewGroup;

    iget v2, p0, Lcom/meizu/common/widget/PraiseView;->mPopwindowWidth:I

    iget v3, p0, Lcom/meizu/common/widget/PraiseView;->mPopwindowHiehgt:I

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v0, p0, Lcom/meizu/common/widget/PraiseView;->mAnimPopWindow:Landroid/widget/PopupWindow;

    .line 188
    iget-object v0, p0, Lcom/meizu/common/widget/PraiseView;->mAnimPopWindow:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 189
    iget-object v0, p0, Lcom/meizu/common/widget/PraiseView;->mAnimPopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 190
    iget-object v0, p0, Lcom/meizu/common/widget/PraiseView;->mAnimPopWindow:Landroid/widget/PopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 191
    iget-object v0, p0, Lcom/meizu/common/widget/PraiseView;->mAnimPopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p0}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private measurePopwindowHeight(II)V
    .registers 7

    mul-int/lit8 p1, p1, 0x2

    .line 126
    iput p1, p0, Lcom/meizu/common/widget/PraiseView;->mPopwindowWidth:I

    .line 127
    iget-object p1, p0, Lcom/meizu/common/widget/PraiseView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const v0, 0x42855555

    mul-float/2addr p1, v0

    .line 128
    iput p1, p0, Lcom/meizu/common/widget/PraiseView;->mTranslateHeight:F

    .line 129
    iget p1, p0, Lcom/meizu/common/widget/PraiseView;->mTranslateHeight:F

    float-to-double v0, p1

    int-to-double p1, p2

    const-wide v2, 0x3ff999999999999aL  # 1.6

    mul-double/2addr p1, v2

    add-double/2addr v0, p1

    double-to-int p1, v0

    iput p1, p0, Lcom/meizu/common/widget/PraiseView;->mPopwindowHiehgt:I

    return-void
.end method

.method private startAnim()V
    .registers 4

    .line 169
    iget-object v0, p0, Lcom/meizu/common/widget/PraiseView;->mAnimPopWindow:Landroid/widget/PopupWindow;

    const/4 v1, 0x1

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/meizu/common/widget/PraiseView;->mBackImageChanged:Z

    if-ne v0, v1, :cond_a

    goto :goto_e

    .line 172
    :cond_a
    invoke-direct {p0}, Lcom/meizu/common/widget/PraiseView;->addImageView()V

    goto :goto_11

    .line 170
    :cond_e
    :goto_e
    invoke-direct {p0}, Lcom/meizu/common/widget/PraiseView;->initPopWindow()V

    .line 174
    :goto_11
    iget-object v0, p0, Lcom/meizu/common/widget/PraiseView;->mPopAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_19

    iget-boolean v0, p0, Lcom/meizu/common/widget/PraiseView;->mBackImageChanged:Z

    if-ne v0, v1, :cond_1f

    .line 175
    :cond_19
    invoke-direct {p0}, Lcom/meizu/common/widget/PraiseView;->initAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/PraiseView;->mPopAnimation:Landroid/view/animation/Animation;

    :cond_1f
    const/4 v0, 0x0

    .line 177
    iput-boolean v0, p0, Lcom/meizu/common/widget/PraiseView;->mBackImageChanged:Z

    .line 179
    iget-object v0, p0, Lcom/meizu/common/widget/PraiseView;->mAnimPopWindow:Landroid/widget/PopupWindow;

    iget v1, p0, Lcom/meizu/common/widget/PraiseView;->mWidth:I

    div-int/lit8 v1, v1, 0x2

    neg-int v1, v1

    iget v2, p0, Lcom/meizu/common/widget/PraiseView;->mPopwindowHiehgt:I

    neg-int v2, v2

    invoke-virtual {v0, p0, v1, v2}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 180
    iget-object v0, p0, Lcom/meizu/common/widget/PraiseView;->mAnimImageView:Landroid/widget/ImageView;

    iget-object p0, p0, Lcom/meizu/common/widget/PraiseView;->mPopAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method


# virtual methods
.method public getPraiseCallBack()Lcom/meizu/common/widget/PraiseView$onPraiseCallBack;
    .registers 1

    .line 389
    iget-object p0, p0, Lcom/meizu/common/widget/PraiseView;->mPraiseCallBack:Lcom/meizu/common/widget/PraiseView$onPraiseCallBack;

    return-object p0
.end method

.method public getState()Lcom/meizu/common/widget/PraiseView$Stage;
    .registers 1

    .line 138
    iget-object p0, p0, Lcom/meizu/common/widget/PraiseView;->mCurrentStage:Lcom/meizu/common/widget/PraiseView$Stage;

    return-object p0
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 2

    .line 379
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 380
    const-class p0, Lcom/meizu/common/widget/PraiseView;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onMeasure(II)V
    .registers 7

    .line 108
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 109
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 111
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 112
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 114
    iget-object v2, p0, Lcom/meizu/common/widget/PraiseView;->mPraiseImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 115
    iget-object v3, p0, Lcom/meizu/common/widget/PraiseView;->mPraiseImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 117
    invoke-direct {p0, p1, v0, v2}, Lcom/meizu/common/widget/PraiseView;->getMeasure(III)I

    move-result p1

    iput p1, p0, Lcom/meizu/common/widget/PraiseView;->mWidth:I

    .line 118
    invoke-direct {p0, p2, v1, v3}, Lcom/meizu/common/widget/PraiseView;->getMeasure(III)I

    move-result p1

    iput p1, p0, Lcom/meizu/common/widget/PraiseView;->mHeight:I

    .line 120
    iget p1, p0, Lcom/meizu/common/widget/PraiseView;->mWidth:I

    iget p2, p0, Lcom/meizu/common/widget/PraiseView;->mHeight:I

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 121
    iget p1, p0, Lcom/meizu/common/widget/PraiseView;->mWidth:I

    iget p2, p0, Lcom/meizu/common/widget/PraiseView;->mHeight:I

    invoke-direct {p0, p1, p2}, Lcom/meizu/common/widget/PraiseView;->measurePopwindowHeight(II)V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4

    .line 368
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_10

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v0, :cond_e

    goto :goto_10

    :cond_e
    const/4 p0, 0x0

    return p0

    .line 369
    :cond_10
    :goto_10
    iget-object p1, p0, Lcom/meizu/common/widget/PraiseView;->mPopAnimation:Landroid/view/animation/Animation;

    if-eqz p1, :cond_1b

    iget-object p0, p0, Lcom/meizu/common/widget/PraiseView;->mAnimListener:Landroid/view/animation/Animation$AnimationListener;

    if-eqz p0, :cond_1b

    .line 370
    invoke-interface {p0, p1}, Landroid/view/animation/Animation$AnimationListener;->onAnimationEnd(Landroid/view/animation/Animation;)V

    :cond_1b
    const/4 p0, 0x1

    return p0
.end method

.method public setAnimationPerform(Z)V
    .registers 2

    .line 301
    iput-boolean p1, p0, Lcom/meizu/common/widget/PraiseView;->isPerformAnimation:Z

    return-void
.end method

.method public setPraiseCallBack(Lcom/meizu/common/widget/PraiseView$onPraiseCallBack;)V
    .registers 2

    .line 398
    iput-object p1, p0, Lcom/meizu/common/widget/PraiseView;->mPraiseCallBack:Lcom/meizu/common/widget/PraiseView$onPraiseCallBack;

    return-void
.end method

.method public setState(Lcom/meizu/common/widget/PraiseView$Stage;)V
    .registers 4

    .line 143
    sget-object v0, Lcom/meizu/common/widget/PraiseView$Stage;->PRAISED:Lcom/meizu/common/widget/PraiseView$Stage;

    if-ne p1, v0, :cond_18

    .line 145
    iget-object v1, p0, Lcom/meizu/common/widget/PraiseView;->mCurrentStage:Lcom/meizu/common/widget/PraiseView$Stage;

    if-ne v1, p1, :cond_9

    return-void

    .line 147
    :cond_9
    iput-object v0, p0, Lcom/meizu/common/widget/PraiseView;->mCurrentStage:Lcom/meizu/common/widget/PraiseView$Stage;

    .line 148
    iget-object p1, p0, Lcom/meizu/common/widget/PraiseView;->mPraiseImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 149
    iget-boolean p1, p0, Lcom/meizu/common/widget/PraiseView;->isPerformAnimation:Z

    if-eqz p1, :cond_34

    .line 150
    invoke-direct {p0}, Lcom/meizu/common/widget/PraiseView;->startAnim()V

    goto :goto_34

    .line 154
    :cond_18
    iget-object v0, p0, Lcom/meizu/common/widget/PraiseView;->mCurrentStage:Lcom/meizu/common/widget/PraiseView$Stage;

    if-ne v0, p1, :cond_1d

    return-void

    .line 155
    :cond_1d
    sget-object p1, Lcom/meizu/common/widget/PraiseView$Stage;->CANCEL:Lcom/meizu/common/widget/PraiseView$Stage;

    iput-object p1, p0, Lcom/meizu/common/widget/PraiseView;->mCurrentStage:Lcom/meizu/common/widget/PraiseView$Stage;

    .line 157
    iget-object p1, p0, Lcom/meizu/common/widget/PraiseView;->mAnimPopWindow:Landroid/widget/PopupWindow;

    if-eqz p1, :cond_28

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 158
    :cond_28
    iget-object p1, p0, Lcom/meizu/common/widget/PraiseView;->mUnPraiseImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 161
    iget-object p0, p0, Lcom/meizu/common/widget/PraiseView;->mPraiseCallBack:Lcom/meizu/common/widget/PraiseView$onPraiseCallBack;

    if-eqz p0, :cond_34

    .line 163
    invoke-interface {p0}, Lcom/meizu/common/widget/PraiseView$onPraiseCallBack;->cancelAnimEnd()V

    :cond_34
    :goto_34
    return-void
.end method
