.class public Lcom/meizu/common/widget/SubscribeButton;
.super Landroid/widget/Button;
.source "SubscribeButton.java"


# static fields
.field private static final PRESSED_STATE_SET:[I


# instance fields
.field private isAnimating:Z

.field private isPressed:Z

.field private mAlphaAnim:Landroid/animation/ValueAnimator;

.field private mAlphaInterpolator:Landroid/view/animation/Interpolator;

.field private mAnimDuration:I

.field private mAnimateRect:Landroid/graphics/Rect;

.field private mBackgroundBound:Landroid/graphics/Rect;

.field private mBaseline:I

.field private mBeAddedAlpha:F

.field private mBeAddedDrawble:Landroid/graphics/drawable/Drawable;

.field private mBeAddedTextPaint:Landroid/text/TextPaint;

.field private mBtnBeAddedText:Ljava/lang/String;

.field private mBtnBeAddedTextColor:I

.field private mBtnNormalText:Ljava/lang/String;

.field private mBtnNormalTextColor:I

.field private mBtnSubTextSize:F

.field private mDecreasingWidth:I

.field private mIncreasingWidth:I

.field mIsSelected:Z

.field private mMinRect:Landroid/graphics/Rect;

.field private mNormalAlpha:F

.field private mNormalDrawble:Landroid/graphics/drawable/Drawable;

.field private mNormalTextPaint:Landroid/text/TextPaint;

.field private mTotalHeight:I

.field private mTotalWidth:I

.field private mTotalWidthDelta:I

.field private mWidthInterpolator:Landroid/view/animation/Interpolator;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a7

    aput v2, v0, v1

    .line 200
    sput-object v0, Lcom/meizu/common/widget/SubscribeButton;->PRESSED_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 205
    invoke-direct {p0, p1, v0}, Lcom/meizu/common/widget/SubscribeButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 209
    sget v0, Lcom/meizu/common/R$attr;->MeizuCommon_SubscribeButtonStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/common/widget/SubscribeButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7

    .line 213
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    .line 173
    iput-boolean v0, p0, Lcom/meizu/common/widget/SubscribeButton;->mIsSelected:Z

    const/4 v1, 0x0

    .line 174
    iput v1, p0, Lcom/meizu/common/widget/SubscribeButton;->mNormalAlpha:F

    .line 175
    iput v1, p0, Lcom/meizu/common/widget/SubscribeButton;->mBeAddedAlpha:F

    .line 176
    iput v0, p0, Lcom/meizu/common/widget/SubscribeButton;->mTotalWidth:I

    .line 177
    iput v0, p0, Lcom/meizu/common/widget/SubscribeButton;->mTotalHeight:I

    .line 178
    iput v0, p0, Lcom/meizu/common/widget/SubscribeButton;->mTotalWidthDelta:I

    .line 179
    iput v0, p0, Lcom/meizu/common/widget/SubscribeButton;->mDecreasingWidth:I

    .line 180
    iput v0, p0, Lcom/meizu/common/widget/SubscribeButton;->mIncreasingWidth:I

    const/4 v1, 0x0

    .line 182
    iput-object v1, p0, Lcom/meizu/common/widget/SubscribeButton;->mAlphaAnim:Landroid/animation/ValueAnimator;

    const/high16 v1, 0x41700000  # 15.0f

    .line 188
    iput v1, p0, Lcom/meizu/common/widget/SubscribeButton;->mBtnSubTextSize:F

    .line 196
    iput-boolean v0, p0, Lcom/meizu/common/widget/SubscribeButton;->isAnimating:Z

    .line 197
    iput-boolean v0, p0, Lcom/meizu/common/widget/SubscribeButton;->isPressed:Z

    .line 214
    sget-object v2, Lcom/meizu/common/R$styleable;->SubscribeButton:[I

    invoke-virtual {p1, p2, v2, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 215
    sget p2, Lcom/meizu/common/R$styleable;->SubscribeButton_mcBtnNormalBg:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/meizu/common/widget/SubscribeButton;->mNormalDrawble:Landroid/graphics/drawable/Drawable;

    .line 216
    sget p2, Lcom/meizu/common/R$styleable;->SubscribeButton_mcBtnBeAddedBg:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/meizu/common/widget/SubscribeButton;->mBeAddedDrawble:Landroid/graphics/drawable/Drawable;

    .line 217
    sget p2, Lcom/meizu/common/R$styleable;->SubscribeButton_mcBtnSubTextSize:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/meizu/common/widget/SubscribeButton;->mBtnSubTextSize:F

    .line 218
    sget p2, Lcom/meizu/common/R$styleable;->SubscribeButton_mcBtnBeAddedText:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/meizu/common/widget/SubscribeButton;->mBtnBeAddedText:Ljava/lang/String;

    .line 219
    sget p2, Lcom/meizu/common/R$styleable;->SubscribeButton_mcBtnNormalText:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/meizu/common/widget/SubscribeButton;->mBtnNormalText:Ljava/lang/String;

    .line 220
    sget p2, Lcom/meizu/common/R$styleable;->SubscribeButton_mcBtnBeAddedTextColor:I

    const/high16 p3, -0x1000000

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/meizu/common/widget/SubscribeButton;->mBtnBeAddedTextColor:I

    .line 221
    sget p2, Lcom/meizu/common/R$styleable;->SubscribeButton_mcBtnNormalTextColor:I

    const/4 p3, -0x1

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/meizu/common/widget/SubscribeButton;->mBtnNormalTextColor:I

    .line 222
    sget p2, Lcom/meizu/common/R$styleable;->SubscribeButton_mcBtnAnimDuration:I

    const/16 p3, 0x140

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lcom/meizu/common/widget/SubscribeButton;->mAnimDuration:I

    .line 223
    iget-object p2, p0, Lcom/meizu/common/widget/SubscribeButton;->mNormalDrawble:Landroid/graphics/drawable/Drawable;

    if-nez p2, :cond_7b

    .line 224
    invoke-virtual {p0}, Landroid/widget/Button;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/meizu/common/R$drawable;->mc_btn_list_default_alpha_normal:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/meizu/common/widget/SubscribeButton;->mNormalDrawble:Landroid/graphics/drawable/Drawable;

    .line 226
    :cond_7b
    iget-object p2, p0, Lcom/meizu/common/widget/SubscribeButton;->mNormalDrawble:Landroid/graphics/drawable/Drawable;

    const/4 p3, 0x2

    if-eqz p2, :cond_8d

    .line 227
    invoke-virtual {p2, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 228
    iget-object p2, p0, Lcom/meizu/common/widget/SubscribeButton;->mNormalDrawble:Landroid/graphics/drawable/Drawable;

    new-array v0, p3, [I

    fill-array-data v0, :array_b6

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 231
    :cond_8d
    iget-object p2, p0, Lcom/meizu/common/widget/SubscribeButton;->mBeAddedDrawble:Landroid/graphics/drawable/Drawable;

    if-nez p2, :cond_9d

    .line 232
    invoke-virtual {p0}, Landroid/widget/Button;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/meizu/common/R$drawable;->mc_btn_list_default_pressed:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/meizu/common/widget/SubscribeButton;->mBeAddedDrawble:Landroid/graphics/drawable/Drawable;

    .line 234
    :cond_9d
    iget-object p2, p0, Lcom/meizu/common/widget/SubscribeButton;->mBeAddedDrawble:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_ae

    .line 235
    invoke-virtual {p2, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 236
    iget-object p2, p0, Lcom/meizu/common/widget/SubscribeButton;->mBeAddedDrawble:Landroid/graphics/drawable/Drawable;

    new-array p3, p3, [I

    fill-array-data p3, :array_be

    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 239
    :cond_ae
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 240
    invoke-direct {p0}, Lcom/meizu/common/widget/SubscribeButton;->init()V

    return-void

    nop

    :array_b6
    .array-data 4
        0x101009e
        0x10100a7
    .end array-data

    :array_be
    .array-data 4
        0x101009e
        0x10100a7
    .end array-data
.end method

.method static synthetic access$002(Lcom/meizu/common/widget/SubscribeButton;Z)Z
    .registers 2

    .line 169
    iput-boolean p1, p0, Lcom/meizu/common/widget/SubscribeButton;->isAnimating:Z

    return p1
.end method

.method static synthetic access$100(Lcom/meizu/common/widget/SubscribeButton;)F
    .registers 1

    .line 169
    iget p0, p0, Lcom/meizu/common/widget/SubscribeButton;->mBeAddedAlpha:F

    return p0
.end method

.method static synthetic access$1000(Lcom/meizu/common/widget/SubscribeButton;)I
    .registers 1

    .line 169
    iget p0, p0, Lcom/meizu/common/widget/SubscribeButton;->mIncreasingWidth:I

    return p0
.end method

.method static synthetic access$1002(Lcom/meizu/common/widget/SubscribeButton;I)I
    .registers 2

    .line 169
    iput p1, p0, Lcom/meizu/common/widget/SubscribeButton;->mIncreasingWidth:I

    return p1
.end method

.method static synthetic access$102(Lcom/meizu/common/widget/SubscribeButton;F)F
    .registers 2

    .line 169
    iput p1, p0, Lcom/meizu/common/widget/SubscribeButton;->mBeAddedAlpha:F

    return p1
.end method

.method static synthetic access$200(Lcom/meizu/common/widget/SubscribeButton;)Landroid/view/animation/Interpolator;
    .registers 1

    .line 169
    iget-object p0, p0, Lcom/meizu/common/widget/SubscribeButton;->mAlphaInterpolator:Landroid/view/animation/Interpolator;

    return-object p0
.end method

.method static synthetic access$300(Lcom/meizu/common/widget/SubscribeButton;)F
    .registers 1

    .line 169
    iget p0, p0, Lcom/meizu/common/widget/SubscribeButton;->mNormalAlpha:F

    return p0
.end method

.method static synthetic access$302(Lcom/meizu/common/widget/SubscribeButton;F)F
    .registers 2

    .line 169
    iput p1, p0, Lcom/meizu/common/widget/SubscribeButton;->mNormalAlpha:F

    return p1
.end method

.method static synthetic access$400(Lcom/meizu/common/widget/SubscribeButton;)I
    .registers 1

    .line 169
    iget p0, p0, Lcom/meizu/common/widget/SubscribeButton;->mTotalWidthDelta:I

    return p0
.end method

.method static synthetic access$500(Lcom/meizu/common/widget/SubscribeButton;)I
    .registers 1

    .line 169
    iget p0, p0, Lcom/meizu/common/widget/SubscribeButton;->mDecreasingWidth:I

    return p0
.end method

.method static synthetic access$502(Lcom/meizu/common/widget/SubscribeButton;I)I
    .registers 2

    .line 169
    iput p1, p0, Lcom/meizu/common/widget/SubscribeButton;->mDecreasingWidth:I

    return p1
.end method

.method static synthetic access$600(Lcom/meizu/common/widget/SubscribeButton;)Landroid/view/animation/Interpolator;
    .registers 1

    .line 169
    iget-object p0, p0, Lcom/meizu/common/widget/SubscribeButton;->mWidthInterpolator:Landroid/view/animation/Interpolator;

    return-object p0
.end method

.method static synthetic access$700(Lcom/meizu/common/widget/SubscribeButton;)I
    .registers 1

    .line 169
    iget p0, p0, Lcom/meizu/common/widget/SubscribeButton;->mTotalWidth:I

    return p0
.end method

.method static synthetic access$800(Lcom/meizu/common/widget/SubscribeButton;)I
    .registers 1

    .line 169
    iget p0, p0, Lcom/meizu/common/widget/SubscribeButton;->mTotalHeight:I

    return p0
.end method

.method static synthetic access$900(Lcom/meizu/common/widget/SubscribeButton;)Landroid/graphics/Rect;
    .registers 1

    .line 169
    iget-object p0, p0, Lcom/meizu/common/widget/SubscribeButton;->mAnimateRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method private getNormalAlpha()F
    .registers 1

    .line 315
    iget p0, p0, Lcom/meizu/common/widget/SubscribeButton;->mNormalAlpha:F

    return p0
.end method

.method private init()V
    .registers 6

    .line 286
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 287
    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    const/4 v1, 0x1

    .line 288
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 289
    iget v1, p0, Lcom/meizu/common/widget/SubscribeButton;->mBtnSubTextSize:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    const-string/jumbo v1, "sans-serif-medium"

    const/4 v2, 0x0

    .line 290
    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    .line 291
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 292
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1, v0}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    iput-object v1, p0, Lcom/meizu/common/widget/SubscribeButton;->mNormalTextPaint:Landroid/text/TextPaint;

    .line 293
    iget-object v1, p0, Lcom/meizu/common/widget/SubscribeButton;->mNormalTextPaint:Landroid/text/TextPaint;

    iget v2, p0, Lcom/meizu/common/widget/SubscribeButton;->mBtnNormalTextColor:I

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 294
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1, v0}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    iput-object v1, p0, Lcom/meizu/common/widget/SubscribeButton;->mBeAddedTextPaint:Landroid/text/TextPaint;

    .line 295
    iget-object v0, p0, Lcom/meizu/common/widget/SubscribeButton;->mBeAddedTextPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/meizu/common/widget/SubscribeButton;->mBtnBeAddedTextColor:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 297
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/SubscribeButton;->mBackgroundBound:Landroid/graphics/Rect;

    .line 298
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/SubscribeButton;->mAnimateRect:Landroid/graphics/Rect;

    .line 299
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/SubscribeButton;->mMinRect:Landroid/graphics/Rect;

    .line 301
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_78

    .line 302
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e3851ec  # 0.18f

    const v2, 0x3f333333  # 0.7f

    const v3, 0x3d4ccccd  # 0.05f

    const/high16 v4, 0x3f800000  # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/meizu/common/widget/SubscribeButton;->mAlphaInterpolator:Landroid/view/animation/Interpolator;

    .line 303
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e4ccccd  # 0.2f

    const v2, 0x3eeb851f  # 0.46f

    const v3, 0x3da3d70a  # 0.08f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/meizu/common/widget/SubscribeButton;->mWidthInterpolator:Landroid/view/animation/Interpolator;

    goto :goto_86

    .line 305
    :cond_78
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/SubscribeButton;->mAlphaInterpolator:Landroid/view/animation/Interpolator;

    .line 306
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/SubscribeButton;->mWidthInterpolator:Landroid/view/animation/Interpolator;

    :goto_86
    return-void
.end method

.method private setNormalAlpha(F)V
    .registers 2

    .line 311
    iput p1, p0, Lcom/meizu/common/widget/SubscribeButton;->mNormalAlpha:F

    return-void
.end method

.method private startAnimator(FFI)V
    .registers 6

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    .line 480
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/common/widget/SubscribeButton;->mAlphaAnim:Landroid/animation/ValueAnimator;

    .line 481
    iget-object p1, p0, Lcom/meizu/common/widget/SubscribeButton;->mAlphaAnim:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/meizu/common/widget/SubscribeButton$1;

    invoke-direct {p2, p0}, Lcom/meizu/common/widget/SubscribeButton$1;-><init>(Lcom/meizu/common/widget/SubscribeButton;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 502
    iget-object p1, p0, Lcom/meizu/common/widget/SubscribeButton;->mAlphaAnim:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/meizu/common/widget/SubscribeButton$2;

    invoke-direct {p2, p0}, Lcom/meizu/common/widget/SubscribeButton$2;-><init>(Lcom/meizu/common/widget/SubscribeButton;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 534
    iget-object p1, p0, Lcom/meizu/common/widget/SubscribeButton;->mAlphaAnim:Landroid/animation/ValueAnimator;

    int-to-long p2, p3

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 535
    iget-object p0, p0, Lcom/meizu/common/widget/SubscribeButton;->mAlphaAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private updateRectInfo()V
    .registers 8

    .line 417
    iget-object v0, p0, Lcom/meizu/common/widget/SubscribeButton;->mMinRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/meizu/common/widget/SubscribeButton;->mTotalWidthDelta:I

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lcom/meizu/common/widget/SubscribeButton;->mTotalWidth:I

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lcom/meizu/common/widget/SubscribeButton;->mTotalHeight:I

    add-int/lit8 v3, v3, -0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 418
    iget-boolean v0, p0, Lcom/meizu/common/widget/SubscribeButton;->mIsSelected:Z

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000  # 1.0f

    if-eqz v0, :cond_45

    .line 419
    iget v0, p0, Lcom/meizu/common/widget/SubscribeButton;->mTotalWidthDelta:I

    if-lez v0, :cond_2f

    .line 420
    iget-object v0, p0, Lcom/meizu/common/widget/SubscribeButton;->mAnimateRect:Landroid/graphics/Rect;

    iget v3, p0, Lcom/meizu/common/widget/SubscribeButton;->mTotalWidth:I

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0}, Landroid/widget/Button;->getHeight()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v0, v4, v4, v3, v5}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_40

    .line 422
    :cond_2f
    iget-object v3, p0, Lcom/meizu/common/widget/SubscribeButton;->mAnimateRect:Landroid/graphics/Rect;

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v5, p0, Lcom/meizu/common/widget/SubscribeButton;->mTotalWidth:I

    add-int/lit8 v5, v5, -0x1

    iget v6, p0, Lcom/meizu/common/widget/SubscribeButton;->mTotalHeight:I

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v3, v0, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 424
    :goto_40
    iput v1, p0, Lcom/meizu/common/widget/SubscribeButton;->mNormalAlpha:F

    .line 425
    iput v2, p0, Lcom/meizu/common/widget/SubscribeButton;->mBeAddedAlpha:F

    goto :goto_6c

    .line 427
    :cond_45
    iget v0, p0, Lcom/meizu/common/widget/SubscribeButton;->mTotalWidthDelta:I

    if-gez v0, :cond_57

    .line 428
    iget-object v0, p0, Lcom/meizu/common/widget/SubscribeButton;->mAnimateRect:Landroid/graphics/Rect;

    iget v3, p0, Lcom/meizu/common/widget/SubscribeButton;->mTotalWidth:I

    add-int/lit8 v3, v3, -0x1

    iget v5, p0, Lcom/meizu/common/widget/SubscribeButton;->mTotalHeight:I

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v0, v4, v4, v3, v5}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_68

    .line 430
    :cond_57
    iget-object v3, p0, Lcom/meizu/common/widget/SubscribeButton;->mAnimateRect:Landroid/graphics/Rect;

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v5, p0, Lcom/meizu/common/widget/SubscribeButton;->mTotalWidth:I

    add-int/lit8 v5, v5, -0x1

    iget v6, p0, Lcom/meizu/common/widget/SubscribeButton;->mTotalHeight:I

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v3, v0, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 432
    :goto_68
    iput v2, p0, Lcom/meizu/common/widget/SubscribeButton;->mNormalAlpha:F

    .line 433
    iput v1, p0, Lcom/meizu/common/widget/SubscribeButton;->mBeAddedAlpha:F

    :goto_6c
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .registers 3

    .line 272
    invoke-super {p0}, Landroid/widget/Button;->drawableStateChanged()V

    .line 274
    invoke-virtual {p0}, Landroid/widget/Button;->getDrawableState()[I

    move-result-object v0

    .line 276
    iget-object v1, p0, Lcom/meizu/common/widget/SubscribeButton;->mNormalDrawble:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_e

    .line 277
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 279
    :cond_e
    iget-object v1, p0, Lcom/meizu/common/widget/SubscribeButton;->mBeAddedDrawble:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_15

    .line 280
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 282
    :cond_15
    invoke-virtual {p0}, Landroid/widget/Button;->invalidate()V

    return-void
.end method

.method public getBeAddedDrawble()Landroid/graphics/drawable/Drawable;
    .registers 1

    .line 688
    iget-object p0, p0, Lcom/meizu/common/widget/SubscribeButton;->mBeAddedDrawble:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getBtnBeAddedText()Ljava/lang/String;
    .registers 1

    .line 548
    iget-object p0, p0, Lcom/meizu/common/widget/SubscribeButton;->mBtnBeAddedText:Ljava/lang/String;

    return-object p0
.end method

.method public getBtnBeAddedTextColor()I
    .registers 1

    .line 570
    iget-object p0, p0, Lcom/meizu/common/widget/SubscribeButton;->mBeAddedTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Landroid/text/TextPaint;->getColor()I

    move-result p0

    return p0
.end method

.method public getBtnNormalText()Ljava/lang/String;
    .registers 1

    .line 561
    iget-object p0, p0, Lcom/meizu/common/widget/SubscribeButton;->mBtnNormalText:Ljava/lang/String;

    return-object p0
.end method

.method public getBtnNormalTextColor()I
    .registers 1

    .line 579
    iget-object p0, p0, Lcom/meizu/common/widget/SubscribeButton;->mNormalTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Landroid/text/TextPaint;->getColor()I

    move-result p0

    return p0
.end method

.method public getNormalDrawble()Landroid/graphics/drawable/Drawable;
    .registers 1

    .line 679
    iget-object p0, p0, Lcom/meizu/common/widget/SubscribeButton;->mNormalDrawble:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getSelectedState()Z
    .registers 1

    .line 610
    iget-boolean p0, p0, Lcom/meizu/common/widget/SubscribeButton;->mIsSelected:Z

    return p0
.end method

.method public getTextWidth(Landroid/graphics/Paint;Ljava/lang/String;)I
    .registers 4

    .line 327
    invoke-virtual {p0}, Landroid/widget/Button;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 329
    invoke-interface {v0, p2, p0}, Landroid/text/method/TransformationMethod;->getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    .line 331
    :cond_e
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method public jumpDrawablesToCurrentState()V
    .registers 2

    .line 250
    invoke-super {p0}, Landroid/widget/Button;->jumpDrawablesToCurrentState()V

    .line 252
    iget-object v0, p0, Lcom/meizu/common/widget/SubscribeButton;->mNormalDrawble:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_a

    .line 253
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 256
    :cond_a
    iget-object p0, p0, Lcom/meizu/common/widget/SubscribeButton;->mBeAddedDrawble:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_11

    .line 257
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_11
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .registers 2

    add-int/lit8 p1, p1, 0x1

    .line 263
    invoke-super {p0, p1}, Landroid/widget/Button;->onCreateDrawableState(I)[I

    move-result-object p1

    .line 264
    iget-boolean p0, p0, Lcom/meizu/common/widget/SubscribeButton;->isPressed:Z

    if-eqz p0, :cond_f

    .line 265
    sget-object p0, Lcom/meizu/common/widget/SubscribeButton;->PRESSED_STATE_SET:[I

    invoke-static {p1, p0}, Landroid/widget/Button;->mergeDrawableStates([I[I)[I

    :cond_f
    return-object p1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 7

    .line 440
    iget-object v0, p0, Lcom/meizu/common/widget/SubscribeButton;->mNormalTextPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/meizu/common/widget/SubscribeButton;->mNormalAlpha:F

    const/high16 v2, 0x437f0000  # 255.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 441
    iget-object v0, p0, Lcom/meizu/common/widget/SubscribeButton;->mBeAddedTextPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/meizu/common/widget/SubscribeButton;->mBeAddedAlpha:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 444
    iget-object v0, p0, Lcom/meizu/common/widget/SubscribeButton;->mNormalDrawble:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/meizu/common/widget/SubscribeButton;->mNormalAlpha:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 445
    iget-object v0, p0, Lcom/meizu/common/widget/SubscribeButton;->mNormalDrawble:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/meizu/common/widget/SubscribeButton;->mAnimateRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 446
    iget-object v0, p0, Lcom/meizu/common/widget/SubscribeButton;->mNormalDrawble:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 448
    iget-object v0, p0, Lcom/meizu/common/widget/SubscribeButton;->mBeAddedDrawble:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/meizu/common/widget/SubscribeButton;->mBeAddedAlpha:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 449
    iget-object v0, p0, Lcom/meizu/common/widget/SubscribeButton;->mBeAddedDrawble:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/meizu/common/widget/SubscribeButton;->mAnimateRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 450
    iget-object v0, p0, Lcom/meizu/common/widget/SubscribeButton;->mBeAddedDrawble:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 453
    iget-object v0, p0, Lcom/meizu/common/widget/SubscribeButton;->mBtnNormalText:Ljava/lang/String;

    iget-object v1, p0, Lcom/meizu/common/widget/SubscribeButton;->mNormalTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Landroid/widget/Button;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/Button;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/widget/Button;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v0, v1, v2, v3}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 454
    iget-object v1, p0, Lcom/meizu/common/widget/SubscribeButton;->mBtnBeAddedText:Ljava/lang/String;

    iget-object v2, p0, Lcom/meizu/common/widget/SubscribeButton;->mBeAddedTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Landroid/widget/Button;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/Button;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/widget/Button;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v1, v2, v3, v4}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 455
    iget-object v2, p0, Lcom/meizu/common/widget/SubscribeButton;->mBackgroundBound:Landroid/graphics/Rect;

    if-eqz v2, :cond_c4

    .line 456
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 457
    iget-object v2, p0, Lcom/meizu/common/widget/SubscribeButton;->mAnimateRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 458
    iget v2, p0, Lcom/meizu/common/widget/SubscribeButton;->mTotalWidthDelta:I

    if-lez v2, :cond_a3

    .line 459
    iget-object v2, p0, Lcom/meizu/common/widget/SubscribeButton;->mMinRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/meizu/common/widget/SubscribeButton;->mBaseline:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/meizu/common/widget/SubscribeButton;->mNormalTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 460
    iget-object v0, p0, Lcom/meizu/common/widget/SubscribeButton;->mBackgroundBound:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Lcom/meizu/common/widget/SubscribeButton;->mBaseline:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/meizu/common/widget/SubscribeButton;->mBeAddedTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_c1

    .line 462
    :cond_a3
    iget-object v2, p0, Lcom/meizu/common/widget/SubscribeButton;->mBackgroundBound:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/meizu/common/widget/SubscribeButton;->mBaseline:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/meizu/common/widget/SubscribeButton;->mNormalTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 463
    iget-object v0, p0, Lcom/meizu/common/widget/SubscribeButton;->mMinRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Lcom/meizu/common/widget/SubscribeButton;->mBaseline:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/meizu/common/widget/SubscribeButton;->mBeAddedTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 465
    :goto_c1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 467
    :cond_c4
    invoke-super {p0, p1}, Landroid/widget/Button;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 2

    .line 693
    invoke-super {p0, p1}, Landroid/widget/Button;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 694
    const-class p0, Lcom/meizu/common/widget/SubscribeButton;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onMeasure(II)V
    .registers 11

    .line 364
    iget-object v0, p0, Lcom/meizu/common/widget/SubscribeButton;->mNormalTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    .line 365
    iget v1, v0, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v1, v0

    .line 366
    invoke-virtual {p0}, Landroid/widget/Button;->getPaddingBottom()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v1, v0

    invoke-virtual {p0}, Landroid/widget/Button;->getPaddingTop()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v1, v0

    float-to-int v0, v1

    .line 367
    iget-object v1, p0, Lcom/meizu/common/widget/SubscribeButton;->mNormalTextPaint:Landroid/text/TextPaint;

    iget-object v2, p0, Lcom/meizu/common/widget/SubscribeButton;->mBtnNormalText:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/meizu/common/widget/SubscribeButton;->getTextWidth(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v1

    .line 368
    invoke-virtual {p0}, Landroid/widget/Button;->getMinWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/Button;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/widget/Button;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 370
    iget-object v2, p0, Lcom/meizu/common/widget/SubscribeButton;->mBeAddedTextPaint:Landroid/text/TextPaint;

    iget-object v3, p0, Lcom/meizu/common/widget/SubscribeButton;->mBtnBeAddedText:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/meizu/common/widget/SubscribeButton;->getTextWidth(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v2

    .line 371
    invoke-virtual {p0}, Landroid/widget/Button;->getMinWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/Button;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/widget/Button;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 374
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 375
    invoke-virtual {p0}, Landroid/widget/Button;->getPaddingLeft()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/widget/Button;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    .line 377
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 378
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 379
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 380
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/high16 v6, 0x40000000  # 2.0f

    const/high16 v7, -0x80000000

    if-ne v4, v7, :cond_71

    move p1, v3

    :cond_71
    if-ne v5, v7, :cond_74

    goto :goto_7c

    :cond_74
    if-ne v5, v6, :cond_77

    goto :goto_79

    :cond_77
    if-nez v4, :cond_7b

    :goto_79
    move v0, p2

    goto :goto_7c

    :cond_7b
    const/4 v0, 0x0

    .line 397
    :goto_7c
    invoke-virtual {p0, p1, v0}, Landroid/widget/Button;->setMeasuredDimension(II)V

    sub-int/2addr v2, v1

    .line 399
    iput v2, p0, Lcom/meizu/common/widget/SubscribeButton;->mTotalWidthDelta:I

    .line 400
    invoke-direct {p0}, Lcom/meizu/common/widget/SubscribeButton;->updateRectInfo()V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 6

    .line 405
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/Button;->onSizeChanged(IIII)V

    .line 406
    iget-object p3, p0, Lcom/meizu/common/widget/SubscribeButton;->mBackgroundBound:Landroid/graphics/Rect;

    const/4 p4, 0x0

    invoke-virtual {p3, p4, p4, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 407
    iget-object p3, p0, Lcom/meizu/common/widget/SubscribeButton;->mNormalTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p3}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object p3

    .line 408
    iget-object p4, p0, Lcom/meizu/common/widget/SubscribeButton;->mBackgroundBound:Landroid/graphics/Rect;

    invoke-virtual {p4}, Landroid/graphics/Rect;->centerY()I

    move-result p4

    iget v0, p3, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget p3, p3, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v0, p3

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr p4, v0

    sub-int/2addr p4, p3

    iput p4, p0, Lcom/meizu/common/widget/SubscribeButton;->mBaseline:I

    .line 409
    iget-object p3, p0, Lcom/meizu/common/widget/SubscribeButton;->mBeAddedDrawble:Landroid/graphics/drawable/Drawable;

    iget-object p4, p0, Lcom/meizu/common/widget/SubscribeButton;->mBackgroundBound:Landroid/graphics/Rect;

    invoke-virtual {p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 410
    iget-object p3, p0, Lcom/meizu/common/widget/SubscribeButton;->mNormalDrawble:Landroid/graphics/drawable/Drawable;

    iget-object p4, p0, Lcom/meizu/common/widget/SubscribeButton;->mBackgroundBound:Landroid/graphics/Rect;

    invoke-virtual {p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 411
    iput p1, p0, Lcom/meizu/common/widget/SubscribeButton;->mTotalWidth:I

    .line 412
    iput p2, p0, Lcom/meizu/common/widget/SubscribeButton;->mTotalHeight:I

    .line 413
    invoke-direct {p0}, Lcom/meizu/common/widget/SubscribeButton;->updateRectInfo()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6

    .line 336
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1d

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1a

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1a

    const/4 v3, 0x3

    if-eq v0, v3, :cond_1a

    const/16 v3, 0xb

    if-eq v0, v3, :cond_17

    .line 353
    iput-boolean v2, p0, Lcom/meizu/common/widget/SubscribeButton;->isPressed:Z

    goto :goto_26

    .line 345
    :cond_17
    iput-boolean v1, p0, Lcom/meizu/common/widget/SubscribeButton;->isPressed:Z

    goto :goto_26

    .line 350
    :cond_1a
    iput-boolean v2, p0, Lcom/meizu/common/widget/SubscribeButton;->isPressed:Z

    goto :goto_26

    .line 339
    :cond_1d
    iget-object v0, p0, Lcom/meizu/common/widget/SubscribeButton;->mAlphaAnim:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_24

    .line 340
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 342
    :cond_24
    iput-boolean v1, p0, Lcom/meizu/common/widget/SubscribeButton;->isPressed:Z

    .line 356
    :goto_26
    invoke-super {p0, p1}, Landroid/widget/Button;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public performClick()Z
    .registers 4

    .line 472
    iget-boolean v0, p0, Lcom/meizu/common/widget/SubscribeButton;->isAnimating:Z

    if-nez v0, :cond_12

    .line 473
    iget-boolean v0, p0, Lcom/meizu/common/widget/SubscribeButton;->mIsSelected:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/common/widget/SubscribeButton;->mIsSelected:Z

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000  # 1.0f

    .line 474
    iget v2, p0, Lcom/meizu/common/widget/SubscribeButton;->mAnimDuration:I

    invoke-direct {p0, v0, v1, v2}, Lcom/meizu/common/widget/SubscribeButton;->startAnimator(FFI)V

    .line 476
    :cond_12
    invoke-super {p0}, Landroid/widget/Button;->performClick()Z

    move-result p0

    return p0
.end method

.method public setAnimDuration(I)V
    .registers 2

    .line 593
    iput p1, p0, Lcom/meizu/common/widget/SubscribeButton;->mAnimDuration:I

    return-void
.end method

.method public setAnimating(Z)V
    .registers 2

    .line 618
    iput-boolean p1, p0, Lcom/meizu/common/widget/SubscribeButton;->isAnimating:Z

    return-void
.end method

.method public setBeAddedDrawble(I)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    .line 669
    :cond_3
    invoke-virtual {p0}, Landroid/widget/Button;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/common/widget/SubscribeButton;->mBeAddedDrawble:Landroid/graphics/drawable/Drawable;

    .line 670
    invoke-virtual {p0}, Landroid/widget/Button;->invalidate()V

    return-void
.end method

.method public setBeAddedDrawble(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    if-nez p1, :cond_3

    return-void

    .line 656
    :cond_3
    iput-object p1, p0, Lcom/meizu/common/widget/SubscribeButton;->mBeAddedDrawble:Landroid/graphics/drawable/Drawable;

    .line 657
    invoke-virtual {p0}, Landroid/widget/Button;->invalidate()V

    return-void
.end method

.method public setBtnBeAddedText(Ljava/lang/String;)V
    .registers 4

    .line 539
    iget-object v0, p0, Lcom/meizu/common/widget/SubscribeButton;->mBtnBeAddedText:Ljava/lang/String;

    .line 540
    iput-object p1, p0, Lcom/meizu/common/widget/SubscribeButton;->mBtnBeAddedText:Ljava/lang/String;

    .line 541
    iget-object p1, p0, Lcom/meizu/common/widget/SubscribeButton;->mBeAddedTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result p1

    iget-object v0, p0, Lcom/meizu/common/widget/SubscribeButton;->mBeAddedTextPaint:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/meizu/common/widget/SubscribeButton;->mBtnBeAddedText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_19

    .line 542
    invoke-virtual {p0}, Landroid/widget/Button;->requestLayout()V

    .line 544
    :cond_19
    invoke-virtual {p0}, Landroid/widget/Button;->invalidate()V

    return-void
.end method

.method public setBtnBeAddedTextColor(I)V
    .registers 3

    .line 565
    iget-object v0, p0, Lcom/meizu/common/widget/SubscribeButton;->mBeAddedTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setColor(I)V

    .line 566
    invoke-virtual {p0}, Landroid/widget/Button;->invalidate()V

    return-void
.end method

.method public setBtnNormalText(Ljava/lang/String;)V
    .registers 4

    .line 552
    iget-object v0, p0, Lcom/meizu/common/widget/SubscribeButton;->mBtnNormalText:Ljava/lang/String;

    .line 553
    iput-object p1, p0, Lcom/meizu/common/widget/SubscribeButton;->mBtnNormalText:Ljava/lang/String;

    .line 554
    iget-object p1, p0, Lcom/meizu/common/widget/SubscribeButton;->mNormalTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result p1

    iget-object v0, p0, Lcom/meizu/common/widget/SubscribeButton;->mNormalTextPaint:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/meizu/common/widget/SubscribeButton;->mBtnNormalText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_19

    .line 555
    invoke-virtual {p0}, Landroid/widget/Button;->requestLayout()V

    .line 557
    :cond_19
    invoke-virtual {p0}, Landroid/widget/Button;->invalidate()V

    return-void
.end method

.method public setBtnNormalTextColor(I)V
    .registers 3

    .line 574
    iget-object v0, p0, Lcom/meizu/common/widget/SubscribeButton;->mNormalTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setColor(I)V

    .line 575
    invoke-virtual {p0}, Landroid/widget/Button;->invalidate()V

    return-void
.end method

.method public setBtnSubTextSize(I)V
    .registers 4

    .line 583
    iget-object v0, p0, Lcom/meizu/common/widget/SubscribeButton;->mNormalTextPaint:Landroid/text/TextPaint;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 584
    iget-object v0, p0, Lcom/meizu/common/widget/SubscribeButton;->mBeAddedTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 585
    iget-object p1, p0, Lcom/meizu/common/widget/SubscribeButton;->mBackgroundBound:Landroid/graphics/Rect;

    if-eqz p1, :cond_26

    .line 586
    iget-object p1, p0, Lcom/meizu/common/widget/SubscribeButton;->mNormalTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object p1

    .line 587
    iget-object v0, p0, Lcom/meizu/common/widget/SubscribeButton;->mBackgroundBound:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    iget v1, p1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget p1, p1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v1, p1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/meizu/common/widget/SubscribeButton;->mBaseline:I

    .line 589
    :cond_26
    invoke-virtual {p0}, Landroid/widget/Button;->invalidate()V

    return-void
.end method

.method public setNormalDrawble(I)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    .line 630
    :cond_3
    invoke-virtual {p0}, Landroid/widget/Button;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/common/widget/SubscribeButton;->mNormalDrawble:Landroid/graphics/drawable/Drawable;

    .line 631
    invoke-virtual {p0}, Landroid/widget/Button;->invalidate()V

    return-void
.end method

.method public setNormalDrawble(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    if-nez p1, :cond_3

    return-void

    .line 643
    :cond_3
    iput-object p1, p0, Lcom/meizu/common/widget/SubscribeButton;->mNormalDrawble:Landroid/graphics/drawable/Drawable;

    .line 644
    invoke-virtual {p0}, Landroid/widget/Button;->invalidate()V

    return-void
.end method

.method public setSelectedable(Z)V
    .registers 3

    .line 602
    iget-boolean v0, p0, Lcom/meizu/common/widget/SubscribeButton;->mIsSelected:Z

    if-eq v0, p1, :cond_c

    .line 603
    iput-boolean p1, p0, Lcom/meizu/common/widget/SubscribeButton;->mIsSelected:Z

    .line 604
    invoke-direct {p0}, Lcom/meizu/common/widget/SubscribeButton;->updateRectInfo()V

    .line 605
    invoke-virtual {p0}, Landroid/widget/Button;->invalidate()V

    :cond_c
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .registers 3

    .line 245
    invoke-super {p0, p1}, Landroid/widget/Button;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/meizu/common/widget/SubscribeButton;->mNormalDrawble:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_11

    iget-object p0, p0, Lcom/meizu/common/widget/SubscribeButton;->mBeAddedDrawble:Landroid/graphics/drawable/Drawable;

    if-ne p1, p0, :cond_f

    goto :goto_11

    :cond_f
    const/4 p0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 p0, 0x1

    :goto_12
    return p0
.end method
