.class public Lcom/android/keyguard/PasswordTextView;
.super Landroid/view/View;
.source "PasswordTextView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/PasswordTextView$CharState;,
        Lcom/android/keyguard/PasswordTextView$UserActivityListener;
    }
.end annotation


# static fields
.field private static DOT:C = '•'


# instance fields
.field private animated:Z

.field private animator:Landroid/animation/Animator;

.field dotFinishListener:Landroid/animation/Animator$AnimatorListener;

.field private dotScaleDoubleUpdate:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private dotScaleUpdate:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private dotYUpdate:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mAppearInterpolator:Landroid/view/animation/Interpolator;

.field private mCharPadding:I

.field private mCharPool:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/android/keyguard/PasswordTextView$CharState;",
            ">;"
        }
    .end annotation
.end field

.field private mCircleHollow:Landroid/graphics/drawable/Drawable;

.field private mCircleSize:I

.field private mCircleSolid:Landroid/graphics/drawable/Drawable;

.field private mDisappearInterpolator:Landroid/view/animation/Interpolator;

.field private mDotDisappearAnimatorstart:Z

.field private mDotSize:I

.field private mDoubleAnimtor:Landroid/animation/Animator;

.field private final mDrawPaint:Landroid/graphics/Paint;

.field private mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private final mGravity:I

.field private final mHandler:Landroid/os/Handler;

.field private mHollowVisible:Z

.field private mMatch:Z

.field private mMaxNum:I

.field private mOutCurrentDotScaleDoubleFactor:F

.field private mOutCurrentDotScaleFactor:F

.field private mOutCurrentDotTranYFactor:F

.field private mPM:Landroid/os/PowerManager;

.field private mPathInterpolatorScale:Landroid/view/animation/PathInterpolator;

.field private mPathInterpolatorY:Landroid/view/animation/PathInterpolator;

.field private mShakeAnim:Landroid/animation/AnimatorSet;

.field private mShowPassword:Z

.field private mText:Ljava/lang/String;

.field private mTextChars:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/keyguard/PasswordTextView$CharState;",
            ">;"
        }
    .end annotation
.end field

.field private mTextHeightRaw:I

.field private mTransitionY:I

.field private mUserActivityListener:Lcom/android/keyguard/PasswordTextView$UserActivityListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 122
    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/PasswordTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 126
    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/PasswordTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const/4 v0, 0x0

    .line 130
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/keyguard/PasswordTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 10

    .line 135
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 104
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/android/keyguard/PasswordTextView;->mTextChars:Ljava/util/ArrayList;

    const-string p3, ""

    .line 105
    iput-object p3, p0, Lcom/android/keyguard/PasswordTextView;->mText:Ljava/lang/String;

    .line 106
    new-instance p3, Ljava/util/Stack;

    invoke-direct {p3}, Ljava/util/Stack;-><init>()V

    iput-object p3, p0, Lcom/android/keyguard/PasswordTextView;->mCharPool:Ljava/util/Stack;

    .line 110
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    iput-object p3, p0, Lcom/android/keyguard/PasswordTextView;->mDrawPaint:Landroid/graphics/Paint;

    .line 1077
    new-instance p3, Lcom/android/keyguard/PasswordTextView$2;

    invoke-direct {p3, p0}, Lcom/android/keyguard/PasswordTextView$2;-><init>(Lcom/android/keyguard/PasswordTextView;)V

    iput-object p3, p0, Lcom/android/keyguard/PasswordTextView;->mHandler:Landroid/os/Handler;

    .line 1091
    new-instance p3, Lcom/android/keyguard/PasswordTextView$3;

    invoke-direct {p3, p0}, Lcom/android/keyguard/PasswordTextView$3;-><init>(Lcom/android/keyguard/PasswordTextView;)V

    iput-object p3, p0, Lcom/android/keyguard/PasswordTextView;->dotYUpdate:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 1099
    new-instance p3, Lcom/android/keyguard/PasswordTextView$4;

    invoke-direct {p3, p0}, Lcom/android/keyguard/PasswordTextView$4;-><init>(Lcom/android/keyguard/PasswordTextView;)V

    iput-object p3, p0, Lcom/android/keyguard/PasswordTextView;->dotScaleUpdate:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 1108
    new-instance p3, Lcom/android/keyguard/PasswordTextView$5;

    invoke-direct {p3, p0}, Lcom/android/keyguard/PasswordTextView$5;-><init>(Lcom/android/keyguard/PasswordTextView;)V

    iput-object p3, p0, Lcom/android/keyguard/PasswordTextView;->dotScaleDoubleUpdate:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 1117
    new-instance p3, Lcom/android/keyguard/PasswordTextView$6;

    invoke-direct {p3, p0}, Lcom/android/keyguard/PasswordTextView$6;-><init>(Lcom/android/keyguard/PasswordTextView;)V

    iput-object p3, p0, Lcom/android/keyguard/PasswordTextView;->dotFinishListener:Landroid/animation/Animator$AnimatorListener;

    const/4 p3, 0x1

    .line 1129
    iput-boolean p3, p0, Lcom/android/keyguard/PasswordTextView;->mHollowVisible:Z

    .line 1142
    iput-boolean p3, p0, Lcom/android/keyguard/PasswordTextView;->mMatch:Z

    .line 136
    invoke-virtual {p0, p3}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 137
    invoke-virtual {p0, p3}, Landroid/view/View;->setFocusable(Z)V

    .line 138
    sget-object p3, Lcom/android/systemui/R$styleable;->PasswordTextView:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 142
    iget p2, p0, Lcom/android/keyguard/PasswordTextView;->mCircleSize:I

    .line 146
    :try_start_52
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p3

    const/4 p4, 0x0

    const/4 v0, 0x0

    move v2, p2

    move-object v1, p4

    move p2, v0

    :goto_5b
    if-ge p2, p3, :cond_a7

    .line 148
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    .line 149
    sget v4, Lcom/android/systemui/R$styleable;->PasswordTextView_scaledTextSize:I

    if-ne v3, v4, :cond_6e

    .line 150
    iget v4, p0, Lcom/android/keyguard/PasswordTextView;->mTextHeightRaw:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lcom/android/keyguard/PasswordTextView;->mTextHeightRaw:I

    goto :goto_a4

    .line 151
    :cond_6e
    sget v4, Lcom/android/systemui/R$styleable;->PasswordTextView_mzPasswordMaxNum:I

    if-ne v3, v4, :cond_7b

    .line 152
    iget v4, p0, Lcom/android/keyguard/PasswordTextView;->mMaxNum:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lcom/android/keyguard/PasswordTextView;->mMaxNum:I

    goto :goto_a4

    .line 153
    :cond_7b
    sget v4, Lcom/android/systemui/R$styleable;->PasswordTextView_mzPasswordHollowVisible:I

    if-ne v3, v4, :cond_88

    .line 154
    iget-boolean v4, p0, Lcom/android/keyguard/PasswordTextView;->mHollowVisible:Z

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/keyguard/PasswordTextView;->mHollowVisible:Z

    goto :goto_a4

    .line 155
    :cond_88
    sget v4, Lcom/android/systemui/R$styleable;->PasswordTextView_mzPasswordSolidDrawable:I

    if-ne v3, v4, :cond_91

    .line 156
    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p4

    goto :goto_a4

    .line 157
    :cond_91
    sget v4, Lcom/android/systemui/R$styleable;->PasswordTextView_mzPasswordHollowDrawable:I

    if-ne v3, v4, :cond_9a

    .line 158
    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_a4

    .line 159
    :cond_9a
    sget v4, Lcom/android/systemui/R$styleable;->PasswordTextView_mzPasswordCellSize:I

    if-ne v3, v4, :cond_a4

    .line 160
    iget v2, p0, Lcom/android/keyguard/PasswordTextView;->mCircleSize:I

    invoke-virtual {p1, v3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    :cond_a4
    :goto_a4
    add-int/lit8 p2, p2, 0x1

    goto :goto_5b

    .line 164
    :cond_a7
    sget p2, Lcom/android/systemui/R$styleable;->PasswordTextView_android_gravity:I

    const/16 p3, 0x11

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/android/keyguard/PasswordTextView;->mGravity:I

    .line 165
    sget p2, Lcom/android/systemui/R$styleable;->PasswordTextView_dotSize:I

    .line 166
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v3, Lcom/android/systemui/R$dimen;->password_dot_size:I

    invoke-virtual {p3, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    .line 165
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/android/keyguard/PasswordTextView;->mDotSize:I

    .line 167
    sget p2, Lcom/android/systemui/R$styleable;->PasswordTextView_charPadding:I

    .line 168
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v3, Lcom/android/systemui/R$dimen;->mz_password_padding:I

    invoke-virtual {p3, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    .line 167
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/android/keyguard/PasswordTextView;->mCharPadding:I

    .line 170
    sget p2, Lcom/android/systemui/R$styleable;->PasswordTextView_android_textColor:I

    const/4 p3, -0x1

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    .line 171
    iget-object p3, p0, Lcom/android/keyguard/PasswordTextView;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {p3, p2}, Landroid/graphics/Paint;->setColor(I)V
    :try_end_e9
    .catchall {:try_start_52 .. :try_end_e9} :catchall_165

    .line 173
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 175
    iget-object p1, p0, Lcom/android/keyguard/PasswordTextView;->mDrawPaint:Landroid/graphics/Paint;

    const/16 p2, 0x81

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setFlags(I)V

    .line 176
    iget-object p1, p0, Lcom/android/keyguard/PasswordTextView;->mDrawPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 177
    iget-object p1, p0, Lcom/android/keyguard/PasswordTextView;->mDrawPaint:Landroid/graphics/Paint;

    const/16 p2, 0x50

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 182
    iget-object p1, p0, Lcom/android/keyguard/PasswordTextView;->mDrawPaint:Landroid/graphics/Paint;

    const-string p2, "sans-serif-light"

    invoke-static {p2, v0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 184
    iput-boolean v0, p0, Lcom/android/keyguard/PasswordTextView;->mShowPassword:Z

    .line 186
    iget-object p1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const p2, 0x10c000e

    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/keyguard/PasswordTextView;->mAppearInterpolator:Landroid/view/animation/Interpolator;

    .line 188
    iget-object p1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const p2, 0x10c000f

    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/keyguard/PasswordTextView;->mDisappearInterpolator:Landroid/view/animation/Interpolator;

    .line 190
    iget-object p1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const p2, 0x10c000d

    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/keyguard/PasswordTextView;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 192
    iget-object p1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string p2, "power"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    iput-object p1, p0, Lcom/android/keyguard/PasswordTextView;->mPM:Landroid/os/PowerManager;

    .line 194
    new-instance p1, Landroid/view/animation/PathInterpolator;

    const p2, 0x3e99999a  # 0.3f

    const p3, 0x3f2b851f  # 0.67f

    const/high16 v0, 0x3f800000  # 1.0f

    const/4 v3, 0x0

    invoke-direct {p1, p2, v3, p3, v0}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p1, p0, Lcom/android/keyguard/PasswordTextView;->mPathInterpolatorY:Landroid/view/animation/PathInterpolator;

    .line 195
    new-instance p1, Landroid/view/animation/PathInterpolator;

    const p2, 0x3e4ccccd  # 0.2f

    invoke-direct {p1, v3, v3, p2, v0}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p1, p0, Lcom/android/keyguard/PasswordTextView;->mPathInterpolatorScale:Landroid/view/animation/PathInterpolator;

    .line 196
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/systemui/R$dimen;->keyguard_password_transitiony:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/keyguard/PasswordTextView;->mTransitionY:I

    .line 197
    invoke-virtual {p0, p4, v1, v2}, Lcom/android/keyguard/PasswordTextView;->setPasswordDrawablesAndSize(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;I)V

    return-void

    :catchall_165
    move-exception p0

    .line 173
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p0
.end method

.method static synthetic access$100(Lcom/android/keyguard/PasswordTextView;)Ljava/util/ArrayList;
    .registers 1

    .line 67
    iget-object p0, p0, Lcom/android/keyguard/PasswordTextView;->mTextChars:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/keyguard/PasswordTextView;)Landroid/graphics/Paint;
    .registers 1

    .line 67
    iget-object p0, p0, Lcom/android/keyguard/PasswordTextView;->mDrawPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/android/keyguard/PasswordTextView;)F
    .registers 1

    .line 67
    iget p0, p0, Lcom/android/keyguard/PasswordTextView;->mOutCurrentDotTranYFactor:F

    return p0
.end method

.method static synthetic access$1102(Lcom/android/keyguard/PasswordTextView;F)F
    .registers 2

    .line 67
    iput p1, p0, Lcom/android/keyguard/PasswordTextView;->mOutCurrentDotTranYFactor:F

    return p1
.end method

.method static synthetic access$1200(Lcom/android/keyguard/PasswordTextView;)Z
    .registers 1

    .line 67
    iget-boolean p0, p0, Lcom/android/keyguard/PasswordTextView;->mDotDisappearAnimatorstart:Z

    return p0
.end method

.method static synthetic access$1300(Lcom/android/keyguard/PasswordTextView;)I
    .registers 1

    .line 67
    iget p0, p0, Lcom/android/keyguard/PasswordTextView;->mDotSize:I

    return p0
.end method

.method static synthetic access$1400(Lcom/android/keyguard/PasswordTextView;)F
    .registers 1

    .line 67
    iget p0, p0, Lcom/android/keyguard/PasswordTextView;->mOutCurrentDotScaleDoubleFactor:F

    return p0
.end method

.method static synthetic access$1402(Lcom/android/keyguard/PasswordTextView;F)F
    .registers 2

    .line 67
    iput p1, p0, Lcom/android/keyguard/PasswordTextView;->mOutCurrentDotScaleDoubleFactor:F

    return p1
.end method

.method static synthetic access$1500(Lcom/android/keyguard/PasswordTextView;)I
    .registers 1

    .line 67
    iget p0, p0, Lcom/android/keyguard/PasswordTextView;->mCharPadding:I

    return p0
.end method

.method static synthetic access$1600(Lcom/android/keyguard/PasswordTextView;)Z
    .registers 1

    .line 67
    iget-boolean p0, p0, Lcom/android/keyguard/PasswordTextView;->animated:Z

    return p0
.end method

.method static synthetic access$1700(Lcom/android/keyguard/PasswordTextView;ZI)V
    .registers 3

    .line 67
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/PasswordTextView;->executeDisappearAnimator(ZI)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/keyguard/PasswordTextView;C)V
    .registers 2

    .line 67
    invoke-direct {p0, p1}, Lcom/android/keyguard/PasswordTextView;->handleAppend(C)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/keyguard/PasswordTextView;Z)V
    .registers 2

    .line 67
    invoke-direct {p0, p1}, Lcom/android/keyguard/PasswordTextView;->handleReset(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/keyguard/PasswordTextView;)Ljava/util/Stack;
    .registers 1

    .line 67
    iget-object p0, p0, Lcom/android/keyguard/PasswordTextView;->mCharPool:Ljava/util/Stack;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/android/keyguard/PasswordTextView;)Landroid/animation/Animator;
    .registers 1

    .line 67
    iget-object p0, p0, Lcom/android/keyguard/PasswordTextView;->animator:Landroid/animation/Animator;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/android/keyguard/PasswordTextView;)V
    .registers 1

    .line 67
    invoke-direct {p0}, Lcom/android/keyguard/PasswordTextView;->exceuteResetState()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/keyguard/PasswordTextView;)Ljava/lang/CharSequence;
    .registers 1

    .line 67
    invoke-direct {p0}, Lcom/android/keyguard/PasswordTextView;->getTransformedText()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/keyguard/PasswordTextView;)Z
    .registers 1

    .line 67
    iget-boolean p0, p0, Lcom/android/keyguard/PasswordTextView;->mShowPassword:Z

    return p0
.end method

.method static synthetic access$700(Lcom/android/keyguard/PasswordTextView;)Landroid/view/animation/Interpolator;
    .registers 1

    .line 67
    iget-object p0, p0, Lcom/android/keyguard/PasswordTextView;->mDisappearInterpolator:Landroid/view/animation/Interpolator;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/keyguard/PasswordTextView;)Landroid/view/animation/Interpolator;
    .registers 1

    .line 67
    iget-object p0, p0, Lcom/android/keyguard/PasswordTextView;->mAppearInterpolator:Landroid/view/animation/Interpolator;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/keyguard/PasswordTextView;)F
    .registers 1

    .line 67
    iget p0, p0, Lcom/android/keyguard/PasswordTextView;->mOutCurrentDotScaleFactor:F

    return p0
.end method

.method static synthetic access$902(Lcom/android/keyguard/PasswordTextView;F)F
    .registers 2

    .line 67
    iput p1, p0, Lcom/android/keyguard/PasswordTextView;->mOutCurrentDotScaleFactor:F

    return p1
.end method

.method private exceuteResetState()V
    .registers 5

    const/4 v0, 0x0

    .line 956
    iput-object v0, p0, Lcom/android/keyguard/PasswordTextView;->animator:Landroid/animation/Animator;

    .line 957
    iput-object v0, p0, Lcom/android/keyguard/PasswordTextView;->mShakeAnim:Landroid/animation/AnimatorSet;

    .line 958
    iget-object v1, p0, Lcom/android/keyguard/PasswordTextView;->mTextChars:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_d
    if-ltz v1, :cond_27

    .line 960
    iget-object v2, p0, Lcom/android/keyguard/PasswordTextView;->mTextChars:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/PasswordTextView$CharState;

    .line 961
    invoke-virtual {v2}, Lcom/android/keyguard/PasswordTextView$CharState;->reset()V

    .line 962
    iget-object v3, p0, Lcom/android/keyguard/PasswordTextView;->mTextChars:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 963
    iget-object v3, p0, Lcom/android/keyguard/PasswordTextView;->mCharPool:Ljava/util/Stack;

    invoke-virtual {v3, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    goto :goto_d

    .line 966
    :cond_27
    iget-object v1, p0, Lcom/android/keyguard/PasswordTextView;->mTextChars:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    const/4 v1, 0x0

    .line 967
    iput v1, p0, Lcom/android/keyguard/PasswordTextView;->mOutCurrentDotTranYFactor:F

    const/high16 v1, 0x3f800000  # 1.0f

    .line 968
    iput v1, p0, Lcom/android/keyguard/PasswordTextView;->mOutCurrentDotScaleFactor:F

    const/4 v2, 0x0

    .line 969
    iput-boolean v2, p0, Lcom/android/keyguard/PasswordTextView;->mDotDisappearAnimatorstart:Z

    .line 971
    iput-object v0, p0, Lcom/android/keyguard/PasswordTextView;->mDoubleAnimtor:Landroid/animation/Animator;

    .line 972
    iput v1, p0, Lcom/android/keyguard/PasswordTextView;->mOutCurrentDotScaleDoubleFactor:F

    return-void
.end method

.method private executeDisappearAnimator(ZI)V
    .registers 7

    add-int/lit8 v0, p2, -0x1

    .line 1050
    div-int/lit8 v1, v0, 0x2

    const/4 v1, 0x0

    :goto_5
    if-ge v1, p2, :cond_25

    .line 1053
    iget-object v2, p0, Lcom/android/keyguard/PasswordTextView;->mTextChars:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/PasswordTextView$CharState;

    const/4 v3, 0x0

    .line 1054
    iput v3, v2, Lcom/android/keyguard/PasswordTextView$CharState;->currentDotSizeFactor:F

    if-eqz p1, :cond_1d

    if-ne v1, v0, :cond_22

    .line 1057
    invoke-direct {p0}, Lcom/android/keyguard/PasswordTextView;->startDotDisappearAnimation()V

    .line 1058
    invoke-direct {p0}, Lcom/android/keyguard/PasswordTextView;->startDoubleScaleAnimation()V

    goto :goto_22

    .line 1061
    :cond_1d
    iget-object v3, p0, Lcom/android/keyguard/PasswordTextView;->mCharPool:Ljava/util/Stack;

    invoke-virtual {v3, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_22
    :goto_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_25
    return-void
.end method

.method private getCharBounds()Landroid/graphics/Rect;
    .registers 5

    .line 254
    iget v0, p0, Lcom/android/keyguard/PasswordTextView;->mTextHeightRaw:I

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->scaledDensity:F

    mul-float/2addr v0, v1

    .line 255
    iget-object v1, p0, Lcom/android/keyguard/PasswordTextView;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 256
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 257
    iget-object p0, p0, Lcom/android/keyguard/PasswordTextView;->mDrawPaint:Landroid/graphics/Paint;

    const-string v1, "0"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v3, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    return-object v0
.end method

.method private getDrawingWidth()F
    .registers 8

    .line 263
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView;->mTextChars:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 264
    invoke-direct {p0}, Lcom/android/keyguard/PasswordTextView;->getCharBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 265
    iget v2, v1, Landroid/graphics/Rect;->right:I

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v1

    const/4 v1, 0x0

    move v3, v1

    :goto_11
    if-ge v1, v0, :cond_30

    .line 267
    iget-object v4, p0, Lcom/android/keyguard/PasswordTextView;->mTextChars:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/keyguard/PasswordTextView$CharState;

    if-eqz v1, :cond_26

    int-to-float v3, v3

    .line 269
    iget v5, p0, Lcom/android/keyguard/PasswordTextView;->mCharPadding:I

    int-to-float v5, v5

    iget v6, v4, Lcom/android/keyguard/PasswordTextView$CharState;->currentWidthFactor:F

    mul-float/2addr v5, v6

    add-float/2addr v3, v5

    float-to-int v3, v3

    :cond_26
    int-to-float v3, v3

    int-to-float v5, v2

    .line 271
    iget v4, v4, Lcom/android/keyguard/PasswordTextView$CharState;->currentWidthFactor:F

    mul-float/2addr v5, v4

    add-float/2addr v3, v5

    float-to-int v3, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_30
    int-to-float p0, v3

    return p0
.end method

.method private getTransformedText()Ljava/lang/CharSequence;
    .registers 6

    .line 343
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView;->mTextChars:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 344
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v0, :cond_30

    .line 346
    iget-object v3, p0, Lcom/android/keyguard/PasswordTextView;->mTextChars:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/keyguard/PasswordTextView$CharState;

    .line 349
    iget-object v4, v3, Lcom/android/keyguard/PasswordTextView$CharState;->dotAnimator:Landroid/animation/Animator;

    if-eqz v4, :cond_1f

    iget-boolean v4, v3, Lcom/android/keyguard/PasswordTextView$CharState;->dotAnimationIsGrowing:Z

    if-nez v4, :cond_1f

    goto :goto_2d

    .line 352
    :cond_1f
    invoke-virtual {v3}, Lcom/android/keyguard/PasswordTextView$CharState;->isCharVisibleForA11y()Z

    move-result v4

    if-eqz v4, :cond_28

    iget-char v3, v3, Lcom/android/keyguard/PasswordTextView$CharState;->whichChar:C

    goto :goto_2a

    :cond_28
    sget-char v3, Lcom/android/keyguard/PasswordTextView;->DOT:C

    :goto_2a
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_2d
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_30
    return-object v1
.end method

.method private handleAppend(C)V
    .registers 6

    .line 908
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView;->mText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lcom/android/keyguard/PasswordTextView;->mMaxNum:I

    if-lt v0, v1, :cond_b

    return-void

    .line 911
    :cond_b
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView;->mTextChars:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 912
    iget-object v1, p0, Lcom/android/keyguard/PasswordTextView;->mText:Ljava/lang/String;

    .line 913
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/keyguard/PasswordTextView;->mText:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/PasswordTextView;->mText:Ljava/lang/String;

    .line 915
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/meizu/keyguard/KeyguardThemeUtils;->getInstance(Landroid/content/Context;)Lcom/meizu/keyguard/KeyguardThemeUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/meizu/keyguard/KeyguardThemeUtils;->usedSystemUITheme()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_37

    .line 916
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_58

    .line 918
    :cond_37
    iget-object v2, p0, Lcom/android/keyguard/PasswordTextView;->mText:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v0, :cond_49

    .line 921
    invoke-direct {p0, p1}, Lcom/android/keyguard/PasswordTextView;->obtainCharState(C)Lcom/android/keyguard/PasswordTextView$CharState;

    move-result-object p1

    .line 922
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView;->mTextChars:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_55

    .line 924
    :cond_49
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView;->mTextChars:Ljava/util/ArrayList;

    sub-int/2addr v2, v3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/PasswordTextView$CharState;

    .line 925
    iput-char p1, v0, Lcom/android/keyguard/PasswordTextView$CharState;->whichChar:C

    move-object p1, v0

    .line 927
    :goto_55
    invoke-virtual {p1}, Lcom/android/keyguard/PasswordTextView$CharState;->startAppearAnimation()V

    .line 929
    :goto_58
    invoke-direct {p0}, Lcom/android/keyguard/PasswordTextView;->userActivity()V

    .line 930
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v0, 0x0

    invoke-virtual {p0, v1, p1, v0, v3}, Lcom/android/keyguard/PasswordTextView;->sendAccessibilityEventTypeViewTextChanged(Ljava/lang/CharSequence;III)V

    return-void
.end method

.method private handleReset(Z)V
    .registers 6

    const-string v0, "PasswordTextView"

    const-string v1, "reset() is called, set PwEntry true."

    .line 934
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 935
    invoke-virtual {p0, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 936
    iput-boolean p1, p0, Lcom/android/keyguard/PasswordTextView;->animated:Z

    .line 937
    iget-object v1, p0, Lcom/android/keyguard/PasswordTextView;->mText:Ljava/lang/String;

    const-string v2, ""

    .line 938
    iput-object v2, p0, Lcom/android/keyguard/PasswordTextView;->mText:Ljava/lang/String;

    .line 939
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/meizu/keyguard/KeyguardThemeUtils;->getInstance(Landroid/content/Context;)Lcom/meizu/keyguard/KeyguardThemeUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/meizu/keyguard/KeyguardThemeUtils;->usedSystemUITheme()Z

    move-result v2

    if-nez v2, :cond_39

    .line 940
    iget-object v2, p0, Lcom/android/keyguard/PasswordTextView;->mTextChars:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 941
    iget-boolean v3, p0, Lcom/android/keyguard/PasswordTextView;->mMatch:Z

    if-eqz v3, :cond_2d

    .line 942
    invoke-direct {p0, p1, v2}, Lcom/android/keyguard/PasswordTextView;->executeDisappearAnimator(ZI)V

    goto :goto_30

    .line 944
    :cond_2d
    invoke-virtual {p0, p0}, Lcom/android/keyguard/PasswordTextView;->showErrorPasswordAnim(Landroid/view/View;)V

    .line 946
    :goto_30
    iput-boolean v0, p0, Lcom/android/keyguard/PasswordTextView;->mMatch:Z

    if-nez p1, :cond_39

    .line 948
    iget-object p1, p0, Lcom/android/keyguard/PasswordTextView;->mTextChars:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 951
    :cond_39
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 952
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0, p1, v0}, Lcom/android/keyguard/PasswordTextView;->sendAccessibilityEventTypeViewTextChanged(Ljava/lang/CharSequence;III)V

    return-void
.end method

.method private obtainCharState(C)Lcom/android/keyguard/PasswordTextView$CharState;
    .registers 4

    .line 359
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView;->mCharPool:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 360
    new-instance v0, Lcom/android/keyguard/PasswordTextView$CharState;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/PasswordTextView$CharState;-><init>(Lcom/android/keyguard/PasswordTextView;Lcom/android/keyguard/PasswordTextView$1;)V

    goto :goto_1b

    .line 362
    :cond_f
    iget-object p0, p0, Lcom/android/keyguard/PasswordTextView;->mCharPool:Ljava/util/Stack;

    invoke-virtual {p0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lcom/android/keyguard/PasswordTextView$CharState;

    .line 363
    invoke-virtual {v0}, Lcom/android/keyguard/PasswordTextView$CharState;->reset()V

    .line 365
    :goto_1b
    iput-char p1, v0, Lcom/android/keyguard/PasswordTextView$CharState;->whichChar:C

    return-object v0
.end method

.method private shouldSpeakPasswordsForAccessibility()Z
    .registers 4

    .line 1044
    iget-object p0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    const-string/jumbo v1, "speak_password"

    const/4 v2, -0x3

    invoke-static {p0, v1, v0, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_13

    move v0, v1

    :cond_13
    return v0
.end method

.method private startDotDisappearAnimation()V
    .registers 9

    .line 976
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView;->animator:Landroid/animation/Animator;

    if-eqz v0, :cond_7

    .line 977
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_7
    const/4 v0, 0x2

    new-array v1, v0, [F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 979
    iget v2, p0, Lcom/android/keyguard/PasswordTextView;->mTransitionY:I

    int-to-float v2, v2

    const/4 v4, 0x1

    aput v2, v1, v4

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 980
    iget-object v2, p0, Lcom/android/keyguard/PasswordTextView;->dotYUpdate:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 981
    iget-object v2, p0, Lcom/android/keyguard/PasswordTextView;->dotFinishListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 982
    iget-object v2, p0, Lcom/android/keyguard/PasswordTextView;->mPathInterpolatorY:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v5, 0x12c

    .line 983
    invoke-virtual {v1, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-array v2, v0, [F

    .line 985
    fill-array-data v2, :array_5e

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 986
    iget-object v7, p0, Lcom/android/keyguard/PasswordTextView;->dotScaleUpdate:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v2, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 987
    iget-object v7, p0, Lcom/android/keyguard/PasswordTextView;->dotFinishListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v2, v7}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 988
    iget-object v7, p0, Lcom/android/keyguard/PasswordTextView;->mPathInterpolatorScale:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v2, v7}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 989
    invoke-virtual {v2, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 991
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v0, v0, [Landroid/animation/Animator;

    aput-object v1, v0, v3

    aput-object v2, v0, v4

    .line 992
    invoke-virtual {v5, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 993
    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->start()V

    .line 995
    iput-object v5, p0, Lcom/android/keyguard/PasswordTextView;->animator:Landroid/animation/Animator;

    .line 996
    iput-boolean v4, p0, Lcom/android/keyguard/PasswordTextView;->mDotDisappearAnimatorstart:Z

    return-void

    nop

    :array_5e
    .array-data 4
        0x3f800000  # 1.0f
        0x0
    .end array-data
.end method

.method private startDoubleScaleAnimation()V
    .registers 6

    .line 1000
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView;->mDoubleAnimtor:Landroid/animation/Animator;

    if-eqz v0, :cond_7

    .line 1001
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_7
    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 1003
    fill-array-data v0, :array_30

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 1004
    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v2, 0x3e4ccccd  # 0.2f

    const/high16 v3, 0x3f800000  # 1.0f

    const/4 v4, 0x0

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 1005
    iget-object v2, p0, Lcom/android/keyguard/PasswordTextView;->dotScaleDoubleUpdate:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1006
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v1, 0xc8

    .line 1007
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1008
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 1009
    iput-object v0, p0, Lcom/android/keyguard/PasswordTextView;->mDoubleAnimtor:Landroid/animation/Animator;

    return-void

    nop

    :array_30
    .array-data 4
        0x3f800000  # 1.0f
        0x0
    .end array-data
.end method

.method private userActivity()V
    .registers 5

    .line 320
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView;->mPM:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 321
    iget-object p0, p0, Lcom/android/keyguard/PasswordTextView;->mUserActivityListener:Lcom/android/keyguard/PasswordTextView$UserActivityListener;

    if-eqz p0, :cond_11

    .line 322
    invoke-interface {p0}, Lcom/android/keyguard/PasswordTextView$UserActivityListener;->onUserActivity()V

    :cond_11
    return-void
.end method


# virtual methods
.method public append(C)V
    .registers 3

    .line 302
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView;->mShakeAnim:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView;->animator:Landroid/animation/Animator;

    if-eqz v0, :cond_19

    .line 303
    :cond_8
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView;->mShakeAnim:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_f

    .line 304
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 306
    :cond_f
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView;->animator:Landroid/animation/Animator;

    if-eqz v0, :cond_16

    .line 307
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 309
    :cond_16
    invoke-direct {p0}, Lcom/android/keyguard/PasswordTextView;->exceuteResetState()V

    .line 311
    :cond_19
    iget-object p0, p0, Lcom/android/keyguard/PasswordTextView;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public deleteLastChar()V
    .registers 8

    .line 327
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView;->mText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 328
    invoke-direct {p0}, Lcom/android/keyguard/PasswordTextView;->getTransformedText()Ljava/lang/CharSequence;

    move-result-object v1

    if-lez v0, :cond_2c

    .line 330
    iget-object v2, p0, Lcom/android/keyguard/PasswordTextView;->mText:Ljava/lang/String;

    const/4 v3, 0x1

    sub-int/2addr v0, v3

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/PasswordTextView;->mText:Ljava/lang/String;

    .line 331
    iget-object v2, p0, Lcom/android/keyguard/PasswordTextView;->mTextChars:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/PasswordTextView$CharState;

    const-wide/16 v5, 0x0

    .line 332
    invoke-virtual {v0, v5, v6, v5, v6}, Lcom/android/keyguard/PasswordTextView$CharState;->startRemoveAnimation(JJ)V

    .line 333
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    sub-int/2addr v0, v3

    invoke-virtual {p0, v1, v0, v3, v4}, Lcom/android/keyguard/PasswordTextView;->sendAccessibilityEventTypeViewTextChanged(Ljava/lang/CharSequence;III)V

    .line 335
    :cond_2c
    invoke-direct {p0}, Lcom/android/keyguard/PasswordTextView;->userActivity()V

    return-void
.end method

.method public getText()Ljava/lang/String;
    .registers 1

    .line 339
    iget-object p0, p0, Lcom/android/keyguard/PasswordTextView;->mText:Ljava/lang/String;

    return-object p0
.end method

.method public hasOverlappingRendering()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 15

    .line 204
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/keyguard/KeyguardThemeUtils;->getInstance(Landroid/content/Context;)Lcom/meizu/keyguard/KeyguardThemeUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/keyguard/KeyguardThemeUtils;->usedSystemUITheme()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_5d

    .line 205
    iget v0, p0, Landroid/view/View;->mRight:I

    iget v3, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v0, v3

    iget v3, p0, Lcom/android/keyguard/PasswordTextView;->mCircleSize:I

    iget-object v4, p0, Lcom/android/keyguard/PasswordTextView;->mText:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    mul-int/2addr v3, v4

    sub-int/2addr v0, v3

    div-int/lit8 v0, v0, 0x2

    .line 206
    iget v3, p0, Landroid/view/View;->mTop:I

    iget v4, p0, Landroid/view/View;->mBottom:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/android/keyguard/PasswordTextView;->mCircleSize:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    .line 207
    iget-object v4, p0, Lcom/android/keyguard/PasswordTextView;->mCircleSolid:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 208
    iget-object v5, p0, Lcom/android/keyguard/PasswordTextView;->mCircleSolid:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    .line 209
    iget v6, p0, Lcom/android/keyguard/PasswordTextView;->mCircleSize:I

    sub-int v7, v6, v4

    shr-int/2addr v7, v2

    sub-int/2addr v6, v5

    shr-int/lit8 v2, v6, 0x1

    .line 211
    :goto_3d
    iget-object v6, p0, Lcom/android/keyguard/PasswordTextView;->mText:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v1, v6, :cond_ef

    .line 212
    iget v6, p0, Lcom/android/keyguard/PasswordTextView;->mCircleSize:I

    mul-int/2addr v6, v1

    add-int/2addr v6, v0

    add-int/2addr v6, v7

    add-int v8, v3, v2

    .line 214
    iget-object v9, p0, Lcom/android/keyguard/PasswordTextView;->mCircleSolid:Landroid/graphics/drawable/Drawable;

    add-int v10, v6, v4

    add-int v11, v8, v5

    invoke-virtual {v9, v6, v8, v10, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 215
    iget-object v6, p0, Lcom/android/keyguard/PasswordTextView;->mCircleSolid:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3d

    .line 219
    :cond_5d
    invoke-direct {p0}, Lcom/android/keyguard/PasswordTextView;->getDrawingWidth()F

    move-result v0

    .line 221
    iget v3, p0, Lcom/android/keyguard/PasswordTextView;->mGravity:I

    and-int/lit8 v4, v3, 0x7

    const/4 v5, 0x3

    if-ne v4, v5, :cond_84

    const/high16 v4, 0x800000

    and-int/2addr v3, v4

    if-eqz v3, :cond_7e

    .line 223
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v3

    if-ne v3, v2, :cond_7e

    .line 224
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    goto :goto_8e

    .line 226
    :cond_7e
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    int-to-float v2, v0

    goto :goto_8f

    .line 229
    :cond_84
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    const/high16 v3, 0x40000000  # 2.0f

    div-float/2addr v0, v3

    :goto_8e
    sub-float/2addr v2, v0

    .line 231
    :goto_8f
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView;->mTextChars:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 232
    invoke-direct {p0}, Lcom/android/keyguard/PasswordTextView;->getCharBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 233
    iget v4, v3, Landroid/graphics/Rect;->bottom:I

    iget v5, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    .line 235
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v6

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    .line 236
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v6

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v7

    .line 237
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v9

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v10

    sub-int/2addr v9, v10

    .line 236
    invoke-virtual {p1, v6, v7, v8, v9}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 238
    iget v6, v3, Landroid/graphics/Rect;->right:I

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v3

    int-to-float v3, v6

    :goto_d7
    if-ge v1, v0, :cond_ef

    .line 240
    iget-object v6, p0, Lcom/android/keyguard/PasswordTextView;->mTextChars:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/keyguard/PasswordTextView$CharState;

    move-object v7, p1

    move v8, v2

    move v9, v4

    move v10, v5

    move v11, v3

    move v12, v1

    .line 241
    invoke-virtual/range {v6 .. v12}, Lcom/android/keyguard/PasswordTextView$CharState;->draw(Landroid/graphics/Canvas;FIFFI)F

    move-result v6

    add-float/2addr v2, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_d7

    :cond_ef
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 2

    .line 433
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 435
    const-class p0, Landroid/widget/EditText;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    const/4 p0, 0x1

    .line 436
    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityEvent;->setPassword(Z)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 3

    .line 441
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 443
    const-class v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    .line 444
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPassword(Z)V

    .line 445
    invoke-direct {p0}, Lcom/android/keyguard/PasswordTextView;->getTransformedText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    .line 447
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEditable(Z)V

    const/16 p0, 0x10

    .line 449
    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setInputType(I)V

    return-void
.end method

.method protected onMeasure(II)V
    .registers 7

    .line 874
    invoke-direct {p0}, Lcom/android/keyguard/PasswordTextView;->getCharBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 875
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v0

    const/4 v0, 0x0

    move v2, v0

    .line 876
    :goto_b
    iget v3, p0, Lcom/android/keyguard/PasswordTextView;->mMaxNum:I

    if-ge v0, v3, :cond_16

    .line 877
    iget v3, p0, Lcom/android/keyguard/PasswordTextView;->mCharPadding:I

    add-int/2addr v3, v1

    add-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 879
    :cond_16
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p1, v2}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 881
    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumHeight()I

    move-result v0

    invoke-static {v0, p2}, Landroid/view/View;->getDefaultSize(II)I

    move-result p2

    .line 880
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 3

    .line 831
    invoke-super {p0, p1}, Landroid/view/View;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 833
    invoke-direct {p0}, Lcom/android/keyguard/PasswordTextView;->shouldSpeakPasswordsForAccessibility()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 834
    iget-object p0, p0, Lcom/android/keyguard/PasswordTextView;->mText:Ljava/lang/String;

    .line 835
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 836
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_18
    return-void
.end method

.method public reset(ZZ)V
    .registers 4

    .line 401
    iget-object p2, p0, Lcom/android/keyguard/PasswordTextView;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 402
    iget-object p2, p0, Lcom/android/keyguard/PasswordTextView;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 403
    iget-object p0, p0, Lcom/android/keyguard/PasswordTextView;->mHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method sendAccessibilityEventTypeViewTextChanged(Ljava/lang/CharSequence;III)V
    .registers 6

    .line 409
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 410
    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-nez v0, :cond_1e

    invoke-virtual {p0}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_4f

    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 412
    :cond_1e
    invoke-direct {p0}, Lcom/android/keyguard/PasswordTextView;->shouldSpeakPasswordsForAccessibility()Z

    move-result v0

    if-nez v0, :cond_25

    const/4 p1, 0x0

    :cond_25
    const/16 v0, 0x10

    .line 417
    invoke-static {v0}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 418
    invoke-virtual {v0, p2}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 419
    invoke-virtual {v0, p3}, Landroid/view/accessibility/AccessibilityEvent;->setRemovedCount(I)V

    .line 420
    invoke-virtual {v0, p4}, Landroid/view/accessibility/AccessibilityEvent;->setAddedCount(I)V

    .line 421
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityEvent;->setBeforeText(Ljava/lang/CharSequence;)V

    .line 422
    invoke-direct {p0}, Lcom/android/keyguard/PasswordTextView;->getTransformedText()Ljava/lang/CharSequence;

    move-result-object p1

    .line 423
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_48

    .line 424
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_48
    const/4 p1, 0x1

    .line 426
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityEvent;->setPassword(Z)V

    .line 427
    invoke-virtual {p0, v0}, Landroid/view/View;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_4f
    return-void
.end method

.method public setMatch(Z)V
    .registers 2

    .line 1036
    iput-boolean p1, p0, Lcom/android/keyguard/PasswordTextView;->mMatch:Z

    return-void
.end method

.method public setMaxNum(I)V
    .registers 3

    .line 857
    iget v0, p0, Lcom/android/keyguard/PasswordTextView;->mMaxNum:I

    if-eq v0, p1, :cond_c

    .line 858
    iput p1, p0, Lcom/android/keyguard/PasswordTextView;->mMaxNum:I

    .line 859
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 860
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_c
    return-void
.end method

.method public setPasswordDrawablesAndSize(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;I)V
    .registers 6

    if-gtz p3, :cond_25

    .line 889
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p3

    .line 890
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 889
    invoke-static {p3, v0}, Ljava/lang/Math;->max(II)I

    move-result p3

    .line 891
    iget-boolean v0, p0, Lcom/android/keyguard/PasswordTextView;->mHollowVisible:Z

    if-eqz v0, :cond_22

    .line 893
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 894
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 893
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 892
    invoke-static {p3, v0}, Ljava/lang/Math;->max(II)I

    move-result p3

    .line 896
    :cond_22
    iget v0, p0, Lcom/android/keyguard/PasswordTextView;->mCharPadding:I

    add-int/2addr p3, v0

    .line 898
    :cond_25
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView;->mCircleSolid:Landroid/graphics/drawable/Drawable;

    if-ne v0, p1, :cond_31

    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView;->mCircleHollow:Landroid/graphics/drawable/Drawable;

    if-ne v0, p2, :cond_31

    iget v0, p0, Lcom/android/keyguard/PasswordTextView;->mCircleSize:I

    if-eq p3, v0, :cond_3d

    .line 899
    :cond_31
    iput-object p1, p0, Lcom/android/keyguard/PasswordTextView;->mCircleSolid:Landroid/graphics/drawable/Drawable;

    .line 900
    iput-object p2, p0, Lcom/android/keyguard/PasswordTextView;->mCircleHollow:Landroid/graphics/drawable/Drawable;

    .line 901
    iput p3, p0, Lcom/android/keyguard/PasswordTextView;->mCircleSize:I

    .line 902
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 903
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_3d
    return-void
.end method

.method public setUserActivityListener(Lcom/android/keyguard/PasswordTextView$UserActivityListener;)V
    .registers 2

    .line 316
    iput-object p1, p0, Lcom/android/keyguard/PasswordTextView;->mUserActivityListener:Lcom/android/keyguard/PasswordTextView$UserActivityListener;

    return-void
.end method

.method protected showErrorPasswordAnim(Landroid/view/View;)V
    .registers 6

    .line 1014
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView;->mShakeAnim:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_7

    .line 1015
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1017
    :cond_7
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1018
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/systemui/R$anim;->error_anim:I

    invoke-static {v1, v2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v1

    check-cast v1, Landroid/animation/AnimatorSet;

    .line 1019
    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1020
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator;

    .line 1021
    new-instance v3, Lcom/android/keyguard/PasswordTextView$1;

    invoke-direct {v3, p0}, Lcom/android/keyguard/PasswordTextView$1;-><init>(Lcom/android/keyguard/PasswordTextView;)V

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1028
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playSequentially(Ljava/util/List;)V

    .line 1029
    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    .line 1030
    iput-object v0, p0, Lcom/android/keyguard/PasswordTextView;->mShakeAnim:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_42

    .line 1032
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    :cond_42
    return-void
.end method

.method public updateColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 2

    .line 850
    iget-object p0, p0, Lcom/android/keyguard/PasswordTextView;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method
