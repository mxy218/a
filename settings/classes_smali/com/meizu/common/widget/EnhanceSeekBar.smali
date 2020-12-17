.class public Lcom/meizu/common/widget/EnhanceSeekBar;
.super Landroid/view/View;
.source "EnhanceSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/common/widget/EnhanceSeekBar$AccessibilityEventSender;,
        Lcom/meizu/common/widget/EnhanceSeekBar$XYEvaluator;,
        Lcom/meizu/common/widget/EnhanceSeekBar$XYHolder;,
        Lcom/meizu/common/widget/EnhanceSeekBar$DrawableXYHolder;,
        Lcom/meizu/common/widget/EnhanceSeekBar$SavedState;,
        Lcom/meizu/common/widget/EnhanceSeekBar$OnEnhanceSeekBarChangeListener;
    }
.end annotation


# static fields
.field private static final AURA_HIDE_ANIM_TIME:I = 0xc8

.field private static final AURA_SCALE_BASELINE:F = 1.0f

.field private static final AURA_SCALE_TARGET:F = 0.5f

.field private static final AURA_SHOW_ANIM_TIME:I = 0xb4

.field private static final MIN_HEIGHT:I = 0x14

.field private static final MIN_WIDTH:I = 0x40

.field private static final TAG:Ljava/lang/String; = "EnhanceSeekBar"

.field private static final TEXT_HEIGHT:I = 0x32

.field private static final TIMEOUT_SEND_ACCESSIBILITY_EVENT:I = 0xc8


# instance fields
.field private hasMoved:Z

.field private iconPadding:I

.field private iconWidth:I

.field private isAuraShow:Z

.field private isDrag:Z

.field private mAccessibilityEventSender:Lcom/meizu/common/widget/EnhanceSeekBar$AccessibilityEventSender;

.field private mAccessibilityFocused:Z

.field private mAuraDrawble:Landroid/graphics/drawable/Drawable;

.field private mAuraHeight:I

.field private mAuraHideAnimator:Landroid/animation/ValueAnimator;

.field private mAuraHideInterpolator:Landroid/view/animation/Interpolator;

.field private mAuraRadius:I

.field private mAuraShowAnimator:Landroid/animation/ValueAnimator;

.field private mAuraShowInterpolator:Landroid/view/animation/Interpolator;

.field private mAuraWidth:I

.field private mDecreaseIcon:Landroid/graphics/Bitmap;

.field private mDistance:I

.field private mDrawableXYHolder:Lcom/meizu/common/widget/EnhanceSeekBar$DrawableXYHolder;

.field private mEnableEngine:Z

.field private mEndXY:Lcom/meizu/common/widget/EnhanceSeekBar$XYHolder;

.field private mHalfThumbHeight:I

.field private mHalfThumbWidth:I

.field private mIncreaseIcon:Landroid/graphics/Bitmap;

.field private mInitialThumbX:F

.field private mInitialTouchX:F

.field private mIsDragging:Z

.field private mIsInItemPositon:Z

.field private mItems:[Ljava/lang/CharSequence;

.field private mLeftIconRect:Landroid/graphics/Rect;

.field private mLocationInterpolator:Landroid/view/animation/Interpolator;

.field private mMax:I

.field private mObjectAnimator:Landroid/animation/ObjectAnimator;

.field private mOnEnhanceSeekBarChangeListener:Lcom/meizu/common/widget/EnhanceSeekBar$OnEnhanceSeekBarChangeListener;

.field private mPaint:Landroid/graphics/Paint;

.field private mPaintColor:I

.field private mPaintColorStateList:Landroid/content/res/ColorStateList;

.field private mProgress:I

.field private mRightIconRect:Landroid/graphics/Rect;

.field private mScaledTouchSlop:I

.field private mSpotColor:I

.field private mSpotColorStateList:Landroid/content/res/ColorStateList;

.field private mSpotRadius:F

.field private mStartXY:Lcom/meizu/common/widget/EnhanceSeekBar$XYHolder;

.field private mStrokeColor:I

.field private mStrokeColorStateList:Landroid/content/res/ColorStateList;

.field private mStrokeWidth:I

.field private mTextSize:I

.field private mThumb:Landroid/graphics/drawable/Drawable;

.field private mThumbOffset:I

.field private mTouchDownProgress:I

.field private mXYEvaluator:Lcom/meizu/common/widget/EnhanceSeekBar$XYEvaluator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 187
    invoke-direct {p0, p1, v0}, Lcom/meizu/common/widget/EnhanceSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 191
    sget v0, Lcom/meizu/common/R$attr;->MeizuCommon_EnhanceSeekBarStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/common/widget/EnhanceSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7

    .line 195
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    .line 87
    iput-boolean v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->isDrag:Z

    .line 88
    iput v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mTouchDownProgress:I

    .line 89
    iput v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mHalfThumbWidth:I

    .line 90
    iput v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mHalfThumbHeight:I

    .line 105
    iput v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mAuraRadius:I

    .line 129
    new-instance v1, Lcom/meizu/common/widget/EnhanceSeekBar$XYHolder;

    invoke-direct {v1, p0}, Lcom/meizu/common/widget/EnhanceSeekBar$XYHolder;-><init>(Lcom/meizu/common/widget/EnhanceSeekBar;)V

    iput-object v1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mStartXY:Lcom/meizu/common/widget/EnhanceSeekBar$XYHolder;

    .line 130
    new-instance v1, Lcom/meizu/common/widget/EnhanceSeekBar$XYHolder;

    invoke-direct {v1, p0}, Lcom/meizu/common/widget/EnhanceSeekBar$XYHolder;-><init>(Lcom/meizu/common/widget/EnhanceSeekBar;)V

    iput-object v1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mEndXY:Lcom/meizu/common/widget/EnhanceSeekBar$XYHolder;

    .line 132
    new-instance v1, Lcom/meizu/common/widget/EnhanceSeekBar$XYEvaluator;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/meizu/common/widget/EnhanceSeekBar$XYEvaluator;-><init>(Lcom/meizu/common/widget/EnhanceSeekBar;Lcom/meizu/common/widget/EnhanceSeekBar$1;)V

    iput-object v1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mXYEvaluator:Lcom/meizu/common/widget/EnhanceSeekBar$XYEvaluator;

    .line 133
    new-instance v1, Lcom/meizu/common/widget/EnhanceSeekBar$DrawableXYHolder;

    invoke-direct {v1, p0}, Lcom/meizu/common/widget/EnhanceSeekBar$DrawableXYHolder;-><init>(Lcom/meizu/common/widget/EnhanceSeekBar;)V

    iput-object v1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mDrawableXYHolder:Lcom/meizu/common/widget/EnhanceSeekBar$DrawableXYHolder;

    .line 139
    iput-boolean v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->hasMoved:Z

    .line 144
    iput-boolean v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mAccessibilityFocused:Z

    .line 1080
    iput-boolean v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->isAuraShow:Z

    .line 196
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mScaledTouchSlop:I

    .line 197
    sget-object v1, Lcom/meizu/common/R$styleable;->EnhanceSeekBar:[I

    invoke-virtual {p1, p2, v1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 199
    sget p3, Lcom/meizu/common/R$styleable;->EnhanceSeekBar_mcEItems:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p3

    .line 200
    invoke-virtual {p0, p3}, Lcom/meizu/common/widget/EnhanceSeekBar;->setItems([Ljava/lang/CharSequence;)V

    .line 202
    sget p3, Lcom/meizu/common/R$styleable;->EnhanceSeekBar_mcEProgress:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    .line 203
    invoke-virtual {p0, p3}, Lcom/meizu/common/widget/EnhanceSeekBar;->setProgress(I)V

    .line 205
    sget p3, Lcom/meizu/common/R$styleable;->EnhanceSeekBar_mcEItemsCount:I

    const/4 v0, 0x1

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    .line 206
    invoke-virtual {p0, p3}, Lcom/meizu/common/widget/EnhanceSeekBar;->setItemsCount(I)V

    .line 208
    sget p3, Lcom/meizu/common/R$styleable;->EnhanceSeekBar_mcEThumb:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    if-nez p3, :cond_6f

    .line 210
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lcom/meizu/common/R$drawable;->mz_scrubber_control_selector:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    .line 212
    :cond_6f
    sget v0, Lcom/meizu/common/R$styleable;->EnhanceSeekBar_mcEnhanceDistance:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/meizu/common/R$dimen;->mc_enhance_seekbar_distance:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mDistance:I

    .line 213
    sget v0, Lcom/meizu/common/R$styleable;->EnhanceSeekBar_mcStrokeWidth:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/meizu/common/R$dimen;->mc_enhance_seekbar_stroke_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mStrokeWidth:I

    .line 214
    sget v0, Lcom/meizu/common/R$styleable;->EnhanceSeekBar_mcItemsTextSize:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/meizu/common/R$dimen;->mc_enhance_seekbar_item_text_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mTextSize:I

    .line 215
    sget v0, Lcom/meizu/common/R$styleable;->EnhanceSeekBar_mcEnhanceStrokeColor:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mStrokeColorStateList:Landroid/content/res/ColorStateList;

    .line 216
    invoke-virtual {p0, p3}, Lcom/meizu/common/widget/EnhanceSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 218
    sget p3, Lcom/meizu/common/R$styleable;->EnhanceSeekBar_mcAuraEnhanceThumbDrawble:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mAuraDrawble:Landroid/graphics/drawable/Drawable;

    .line 220
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lcom/meizu/common/R$dimen;->mc_enhance_seekbar_icon_width:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iput p3, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->iconWidth:I

    .line 221
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lcom/meizu/common/R$dimen;->mc_enhance_seekbar_icon_padding:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iput p3, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->iconPadding:I

    .line 222
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lcom/meizu/common/R$drawable;->mz_enhance_seekbar_ic_increase:I

    invoke-static {p3, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p3

    .line 223
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/meizu/common/R$drawable;->mz_enhance_seekbar_ic_decrease:I

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 224
    invoke-direct {p0, p3}, Lcom/meizu/common/widget/EnhanceSeekBar;->setIncreaseIcon(Landroid/graphics/Bitmap;)V

    .line 225
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/EnhanceSeekBar;->setDecreaseIcon(Landroid/graphics/Bitmap;)V

    .line 226
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p3, Lcom/meizu/common/R$color;->mc_enhance_seekbar_background_color:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mPaintColorStateList:Landroid/content/res/ColorStateList;

    .line 227
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p3, Lcom/meizu/common/R$color;->mc_enhance_seekbar_spot_color:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mSpotColorStateList:Landroid/content/res/ColorStateList;

    .line 228
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p3, Lcom/meizu/common/R$dimen;->mc_enhance_seekbar_spot_radius:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mSpotRadius:F

    .line 230
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 232
    invoke-direct {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->refreshRes()V

    .line 233
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mPaint:Landroid/graphics/Paint;

    .line 234
    iget-object p1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mPaint:Landroid/graphics/Paint;

    iget p2, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mPaintColor:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 237
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x15

    if-lt p1, p2, :cond_154

    .line 238
    new-instance p1, Landroid/view/animation/PathInterpolator;

    const p2, 0x3e9eb852  # 0.31f

    const p3, 0x3eae147b  # 0.34f

    const/high16 v0, 0x3f800000  # 1.0f

    const v1, 0x3e4ccccd  # 0.2f

    invoke-direct {p1, v1, p2, p3, v0}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mLocationInterpolator:Landroid/view/animation/Interpolator;

    .line 239
    new-instance p1, Landroid/view/animation/PathInterpolator;

    const p2, 0x3edc28f6  # 0.43f

    invoke-direct {p1, v1, p2, v1, v0}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mAuraShowInterpolator:Landroid/view/animation/Interpolator;

    .line 240
    new-instance p1, Landroid/view/animation/PathInterpolator;

    const p2, 0x3e2e147b  # 0.17f

    const/4 p3, 0x0

    invoke-direct {p1, p2, p3, v1, v0}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mAuraHideInterpolator:Landroid/view/animation/Interpolator;

    goto :goto_169

    .line 242
    :cond_154
    new-instance p1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object p1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mLocationInterpolator:Landroid/view/animation/Interpolator;

    .line 243
    new-instance p1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object p1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mAuraShowInterpolator:Landroid/view/animation/Interpolator;

    .line 244
    new-instance p1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object p1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mAuraHideInterpolator:Landroid/view/animation/Interpolator;

    :goto_169
    return-void
.end method

.method static synthetic access$100(Lcom/meizu/common/widget/EnhanceSeekBar;)Lcom/meizu/common/widget/EnhanceSeekBar$OnEnhanceSeekBarChangeListener;
    .registers 1

    .line 73
    iget-object p0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mOnEnhanceSeekBarChangeListener:Lcom/meizu/common/widget/EnhanceSeekBar$OnEnhanceSeekBarChangeListener;

    return-object p0
.end method

.method static synthetic access$202(Lcom/meizu/common/widget/EnhanceSeekBar;I)I
    .registers 2

    .line 73
    iput p1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mAuraRadius:I

    return p1
.end method

.method static synthetic access$300(Lcom/meizu/common/widget/EnhanceSeekBar;)I
    .registers 1

    .line 73
    iget p0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mAuraHeight:I

    return p0
.end method

.method static synthetic access$402(Lcom/meizu/common/widget/EnhanceSeekBar;Z)Z
    .registers 2

    .line 73
    iput-boolean p1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->isDrag:Z

    return p1
.end method

.method static synthetic access$700(Lcom/meizu/common/widget/EnhanceSeekBar;)[Ljava/lang/CharSequence;
    .registers 1

    .line 73
    iget-object p0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mItems:[Ljava/lang/CharSequence;

    return-object p0
.end method

.method static synthetic access$800(Lcom/meizu/common/widget/EnhanceSeekBar;)I
    .registers 1

    .line 73
    iget p0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mProgress:I

    return p0
.end method

.method private attemptClaimDrag()V
    .registers 2

    .line 1053
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 1054
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_e
    return-void
.end method

.method private flingThumb(Landroid/view/MotionEvent;)V
    .registers 6

    .line 942
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mObjectAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_b

    .line 943
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    .line 947
    :cond_b
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 948
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->iconWidth:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    .line 951
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    .line 953
    iget-object v1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 954
    iget v2, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mInitialThumbX:F

    int-to-float p1, p1

    add-float/2addr v2, p1

    iget p1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mInitialTouchX:F

    sub-float/2addr v2, p1

    float-to-int p1, v2

    if-gez p1, :cond_35

    const/4 p1, 0x0

    goto :goto_38

    :cond_35
    if-le p1, v0, :cond_38

    move p1, v0

    .line 962
    :cond_38
    :goto_38
    invoke-direct {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->isRTL()Z

    move-result v2

    if-eqz v2, :cond_4b

    const/high16 v2, 0x3f800000  # 1.0f

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    sub-int v3, p1, v3

    int-to-float v3, v3

    int-to-float v0, v0

    div-float/2addr v3, v0

    sub-float/2addr v2, v3

    goto :goto_54

    :cond_4b
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    sub-int v2, p1, v2

    int-to-float v2, v2

    int-to-float v0, v0

    div-float/2addr v2, v0

    :goto_54
    invoke-direct {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getMax()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v0

    const/4 v2, 0x1

    .line 963
    invoke-virtual {p0, v0, v2}, Lcom/meizu/common/widget/EnhanceSeekBar;->setProgress(IZ)V

    .line 965
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    iget v2, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    add-int/2addr v3, p1

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, p1, v2, v3, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 966
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private getDisabledColor(Landroid/content/res/ColorStateList;)I
    .registers 4

    const/4 p0, 0x1

    new-array p0, p0, [I

    const/4 v0, 0x0

    const v1, -0x101009e

    aput v1, p0, v0

    .line 1420
    invoke-virtual {p1, p0, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p0

    return p0
.end method

.method private declared-synchronized getMax()I
    .registers 2

    monitor-enter p0

    .line 546
    :try_start_1
    iget v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mMax:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getNormalColor(Landroid/content/res/ColorStateList;)I
    .registers 4

    const/4 p0, 0x1

    new-array p0, p0, [I

    const/4 v0, 0x0

    const v1, 0x101009e

    aput v1, p0, v0

    .line 1413
    invoke-virtual {p1, p0, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p0

    return p0
.end method

.method public static getTAG()Ljava/lang/String;
    .registers 1

    const-string v0, "EnhanceSeekBar"

    return-object v0
.end method

.method private isPointInside(II)Z
    .registers 3

    const/4 p0, 0x1

    return p0
.end method

.method private isRTL()Z
    .registers 2

    .line 707
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_14

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0
.end method

.method private onProgressRefresh(F)V
    .registers 5

    .line 571
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_d

    .line 573
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    const/high16 v2, -0x80000000

    invoke-direct {p0, v1, v0, p1, v2}, Lcom/meizu/common/widget/EnhanceSeekBar;->setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V

    :cond_d
    return-void
.end method

.method private prepareStartAuraHide()V
    .registers 2

    const/4 v0, 0x0

    .line 1149
    iput-boolean v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->isAuraShow:Z

    .line 1150
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mAuraDrawble:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_a

    .line 1151
    invoke-direct {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->startAuraHideAnim()V

    :cond_a
    return-void
.end method

.method private prepareStartAuraShow()V
    .registers 2

    .line 1142
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mAuraDrawble:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->isAuraShow:Z

    if-nez v0, :cond_b

    .line 1143
    invoke-direct {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->startAuraShowAnim()V

    :cond_b
    return-void
.end method

.method private refreshRes()V
    .registers 2

    .line 256
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 257
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mStrokeColorStateList:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getNormalColor(Landroid/content/res/ColorStateList;)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mStrokeColor:I

    .line 258
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mSpotColorStateList:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getNormalColor(Landroid/content/res/ColorStateList;)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mSpotColor:I

    .line 259
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mPaintColorStateList:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getNormalColor(Landroid/content/res/ColorStateList;)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mPaintColor:I

    goto :goto_37

    .line 261
    :cond_1f
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mStrokeColorStateList:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getDisabledColor(Landroid/content/res/ColorStateList;)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mStrokeColor:I

    .line 262
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mSpotColorStateList:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getDisabledColor(Landroid/content/res/ColorStateList;)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mSpotColor:I

    .line 263
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mPaintColorStateList:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getDisabledColor(Landroid/content/res/ColorStateList;)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mPaintColor:I

    :goto_37
    return-void
.end method

.method private scheduleAccessibilityEventSender()V
    .registers 4

    .line 1382
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mAccessibilityEventSender:Lcom/meizu/common/widget/EnhanceSeekBar$AccessibilityEventSender;

    if-nez v0, :cond_d

    .line 1383
    new-instance v0, Lcom/meizu/common/widget/EnhanceSeekBar$AccessibilityEventSender;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/meizu/common/widget/EnhanceSeekBar$AccessibilityEventSender;-><init>(Lcom/meizu/common/widget/EnhanceSeekBar;Lcom/meizu/common/widget/EnhanceSeekBar$1;)V

    iput-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mAccessibilityEventSender:Lcom/meizu/common/widget/EnhanceSeekBar$AccessibilityEventSender;

    goto :goto_10

    .line 1385
    :cond_d
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1387
    :goto_10
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mAccessibilityEventSender:Lcom/meizu/common/widget/EnhanceSeekBar$AccessibilityEventSender;

    const-wide/16 v1, 0xc8

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private setDecreaseIcon(Landroid/graphics/Bitmap;)V
    .registers 2

    .line 318
    iput-object p1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mDecreaseIcon:Landroid/graphics/Bitmap;

    return-void
.end method

.method private setIconRect()V
    .registers 8

    .line 322
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    .line 323
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    add-int/lit8 v2, v2, 0x32

    iget v3, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mHalfThumbHeight:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->iconWidth:I

    iget v4, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->iconPadding:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    .line 324
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    iget v4, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->iconWidth:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->iconPadding:I

    sub-int/2addr v3, v4

    .line 325
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    add-int/lit8 v4, v4, 0x32

    iget v5, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mHalfThumbHeight:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->iconWidth:I

    iget v6, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->iconPadding:I

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mLeftIconRect:Landroid/graphics/Rect;

    .line 326
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->iconWidth:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->iconPadding:I

    add-int/2addr v1, v2

    .line 327
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    add-int/lit8 v2, v2, 0x32

    iget v3, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mHalfThumbHeight:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->iconWidth:I

    iget v4, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->iconPadding:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    .line 328
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    .line 329
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    add-int/lit8 v4, v4, 0x32

    iget v5, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mHalfThumbHeight:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->iconWidth:I

    iget v6, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->iconPadding:I

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mRightIconRect:Landroid/graphics/Rect;

    return-void
.end method

.method private setIncreaseIcon(Landroid/graphics/Bitmap;)V
    .registers 2

    .line 314
    iput-object p1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mIncreaseIcon:Landroid/graphics/Bitmap;

    return-void
.end method

.method private declared-synchronized setMax(I)V
    .registers 3

    monitor-enter p0

    if-gez p1, :cond_4

    const/4 p1, 0x0

    .line 559
    :cond_4
    :try_start_4
    iget v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mMax:I

    if-eq p1, v0, :cond_20

    .line 560
    iput p1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mMax:I

    .line 562
    iget v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mProgress:I

    if-le v0, p1, :cond_10

    .line 563
    iput p1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mProgress:I

    .line 565
    :cond_10
    iget p1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mMax:I

    if-lez p1, :cond_1c

    iget p1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mProgress:I

    int-to-float p1, p1

    iget v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mMax:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    goto :goto_1d

    :cond_1c
    const/4 p1, 0x0

    .line 566
    :goto_1d
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/EnhanceSeekBar;->onProgressRefresh(F)V
    :try_end_20
    .catchall {:try_start_4 .. :try_end_20} :catchall_22

    .line 568
    :cond_20
    monitor-exit p0

    return-void

    :catchall_22
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private setThumbOffset(I)V
    .registers 2

    .line 398
    iput p1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mThumbOffset:I

    .line 399
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V
    .registers 14

    .line 621
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    sub-int/2addr p1, v0

    iget v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->iconWidth:I

    const/4 v1, 0x2

    mul-int/2addr v0, v1

    sub-int/2addr p1, v0

    .line 622
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 632
    invoke-direct {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->isRTL()Z

    move-result v2

    if-eqz v2, :cond_23

    int-to-float v2, p1

    mul-float/2addr p3, v2

    .line 633
    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p3

    sub-int p3, p1, p3

    sub-int/2addr p1, p3

    goto :goto_2f

    :cond_23
    const/high16 v2, 0x3f800000  # 1.0f

    sub-float/2addr v2, p3

    int-to-float p3, p1

    mul-float/2addr v2, p3

    .line 636
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result p3

    sub-int p3, p1, p3

    move p1, p3

    :goto_2f
    add-int/2addr v0, p1

    const/high16 v2, -0x80000000

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne p4, v2, :cond_41

    .line 642
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    .line 643
    iget v6, v5, Landroid/graphics/Rect;->top:I

    .line 644
    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    move v7, v5

    move v5, v4

    goto :goto_49

    .line 648
    :cond_41
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    add-int/2addr v5, p4

    move v6, p4

    move v7, v5

    move v5, v3

    .line 652
    :goto_49
    iget-object v8, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mObjectAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v8, :cond_5d

    if-nez v5, :cond_56

    .line 654
    invoke-virtual {v8}, Landroid/animation/ObjectAnimator;->cancel()V

    const/4 v8, 0x0

    .line 655
    iput-object v8, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mObjectAnimator:Landroid/animation/ObjectAnimator;

    goto :goto_5d

    .line 658
    :cond_56
    invoke-virtual {v8}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v8

    if-eqz v8, :cond_5d

    move v5, v3

    :cond_5d
    :goto_5d
    if-eqz v5, :cond_d3

    .line 664
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Rect;->left:I

    if-ne p1, p3, :cond_77

    .line 667
    iput-boolean v4, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mIsInItemPositon:Z

    if-ne p4, v2, :cond_76

    .line 669
    iget-object p1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mOnEnhanceSeekBarChangeListener:Lcom/meizu/common/widget/EnhanceSeekBar$OnEnhanceSeekBarChangeListener;

    if-eqz p1, :cond_76

    .line 670
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getProgress()I

    move-result p2

    invoke-interface {p1, p0, p2}, Lcom/meizu/common/widget/EnhanceSeekBar$OnEnhanceSeekBarChangeListener;->onProgressChanged(Lcom/meizu/common/widget/EnhanceSeekBar;I)V

    :cond_76
    return-void

    .line 675
    :cond_77
    iget-object p4, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mStartXY:Lcom/meizu/common/widget/EnhanceSeekBar$XYHolder;

    int-to-float p1, p1

    int-to-float v0, v6

    invoke-virtual {p4, p1, v0}, Lcom/meizu/common/widget/EnhanceSeekBar$XYHolder;->setXY(FF)V

    .line 676
    iget-object p1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mEndXY:Lcom/meizu/common/widget/EnhanceSeekBar$XYHolder;

    int-to-float p3, p3

    invoke-virtual {p1, p3, v0}, Lcom/meizu/common/widget/EnhanceSeekBar$XYHolder;->setXY(FF)V

    .line 677
    iget-object p1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mDrawableXYHolder:Lcom/meizu/common/widget/EnhanceSeekBar$DrawableXYHolder;

    invoke-virtual {p1, p2}, Lcom/meizu/common/widget/EnhanceSeekBar$DrawableXYHolder;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 678
    iget-object p1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mDrawableXYHolder:Lcom/meizu/common/widget/EnhanceSeekBar$DrawableXYHolder;

    iget-object p2, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mXYEvaluator:Lcom/meizu/common/widget/EnhanceSeekBar$XYEvaluator;

    new-array p3, v1, [Ljava/lang/Object;

    iget-object p4, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mStartXY:Lcom/meizu/common/widget/EnhanceSeekBar$XYHolder;

    aput-object p4, p3, v3

    iget-object p4, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mEndXY:Lcom/meizu/common/widget/EnhanceSeekBar$XYHolder;

    aput-object p4, p3, v4

    const-string/jumbo p4, "xY"

    invoke-static {p1, p4, p2, p3}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mObjectAnimator:Landroid/animation/ObjectAnimator;

    const p1, 0x3ee38e39

    .line 680
    iget-object p2, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mEndXY:Lcom/meizu/common/widget/EnhanceSeekBar$XYHolder;

    invoke-virtual {p2}, Lcom/meizu/common/widget/EnhanceSeekBar$XYHolder;->getX()F

    move-result p2

    iget-object p3, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mStartXY:Lcom/meizu/common/widget/EnhanceSeekBar$XYHolder;

    invoke-virtual {p3}, Lcom/meizu/common/widget/EnhanceSeekBar$XYHolder;->getX()F

    move-result p3

    sub-float/2addr p2, p3

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    mul-float/2addr p2, p1

    float-to-int p1, p2

    .line 681
    iget-object p2, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mObjectAnimator:Landroid/animation/ObjectAnimator;

    int-to-long p3, p1

    invoke-virtual {p2, p3, p4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 682
    iget-object p1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mObjectAnimator:Landroid/animation/ObjectAnimator;

    iget-object p2, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mLocationInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 683
    iget-object p1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mObjectAnimator:Landroid/animation/ObjectAnimator;

    new-instance p2, Lcom/meizu/common/widget/EnhanceSeekBar$1;

    invoke-direct {p2, p0}, Lcom/meizu/common/widget/EnhanceSeekBar$1;-><init>(Lcom/meizu/common/widget/EnhanceSeekBar;)V

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 698
    iget-object p1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mObjectAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_db

    .line 700
    :cond_d3
    iget-object p2, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1, v6, v0, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 701
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 703
    :goto_db
    iput-boolean v4, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mIsInItemPositon:Z

    return-void
.end method

.method private startAuraHideAnim()V
    .registers 4

    .line 1109
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mAuraHideAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_32

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 1110
    fill-array-data v0, :array_38

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mAuraHideAnimator:Landroid/animation/ValueAnimator;

    .line 1111
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mAuraHideAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1112
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mAuraHideAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mAuraHideInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1114
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mAuraHideAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/meizu/common/widget/EnhanceSeekBar$3;

    invoke-direct {v1, p0}, Lcom/meizu/common/widget/EnhanceSeekBar$3;-><init>(Lcom/meizu/common/widget/EnhanceSeekBar;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1123
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mAuraHideAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/meizu/common/widget/EnhanceSeekBar$4;

    invoke-direct {v1, p0}, Lcom/meizu/common/widget/EnhanceSeekBar$4;-><init>(Lcom/meizu/common/widget/EnhanceSeekBar;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1132
    :cond_32
    iget-object p0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mAuraHideAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_38
    .array-data 4
        0x3f800000  # 1.0f
        0x3f000000  # 0.5f
    .end array-data
.end method

.method private startAuraShowAnim()V
    .registers 4

    const/4 v0, 0x1

    .line 1083
    iput-boolean v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->isAuraShow:Z

    .line 1084
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mAuraShowAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_2b

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 1085
    fill-array-data v0, :array_32

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mAuraShowAnimator:Landroid/animation/ValueAnimator;

    .line 1086
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mAuraShowAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xb4

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1087
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mAuraShowAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mAuraShowInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1089
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mAuraShowAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/meizu/common/widget/EnhanceSeekBar$2;

    invoke-direct {v1, p0}, Lcom/meizu/common/widget/EnhanceSeekBar$2;-><init>(Lcom/meizu/common/widget/EnhanceSeekBar;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1099
    :cond_2b
    iget-object p0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mAuraShowAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_32
    .array-data 4
        0x3f000000  # 0.5f
        0x3f800000  # 1.0f
    .end array-data
.end method

.method private stopAuraHideAnim()V
    .registers 2

    .line 1136
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mAuraHideAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1137
    iget-object p0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mAuraHideAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_f
    return-void
.end method

.method private stopAuraShowAnim()V
    .registers 2

    .line 1103
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mAuraShowAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1104
    iget-object p0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mAuraShowAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_f
    return-void
.end method

.method private trackTapUpTouchEvent(Landroid/view/MotionEvent;)V
    .registers 7

    .line 1016
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mObjectAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_b

    .line 1017
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    .line 1021
    :cond_b
    iget-boolean v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mEnableEngine:Z

    if-eqz v0, :cond_12

    .line 1022
    invoke-static {p0}, Lcom/meizu/common/util/CommonUtils;->shakeForFlymeFeature(Landroid/view/View;)V

    .line 1025
    :cond_12
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 1026
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->iconWidth:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    .line 1027
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    int-to-float p1, p1

    .line 1028
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    iget v2, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->iconWidth:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->iconPadding:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    cmpg-float v1, p1, v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-gez v1, :cond_66

    .line 1029
    invoke-direct {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->isRTL()Z

    move-result p1

    if-eqz p1, :cond_56

    .line 1030
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getProgress()I

    move-result p1

    add-int/2addr p1, v3

    iget v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mMax:I

    if-le p1, v0, :cond_4e

    :goto_4b
    int-to-float p1, v0

    goto/16 :goto_cb

    :cond_4e
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getProgress()I

    move-result p1

    :goto_52
    add-int/2addr p1, v3

    :goto_53
    int-to-float p1, p1

    goto/16 :goto_cb

    .line 1032
    :cond_56
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getProgress()I

    move-result p1

    sub-int/2addr p1, v3

    if-gez p1, :cond_5e

    :goto_5d
    goto :goto_64

    :cond_5e
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getProgress()I

    move-result p1

    :goto_62
    sub-int/2addr p1, v3

    int-to-float v2, p1

    :goto_64
    move p1, v2

    goto :goto_cb

    .line 1034
    :cond_66
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    iget v4, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->iconWidth:I

    add-int/2addr v1, v4

    add-int/2addr v1, v0

    iget v4, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->iconPadding:I

    add-int/2addr v1, v4

    int-to-float v1, v1

    cmpl-float v1, p1, v1

    if-lez v1, :cond_98

    .line 1035
    invoke-direct {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->isRTL()Z

    move-result p1

    if-eqz p1, :cond_89

    .line 1036
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getProgress()I

    move-result p1

    sub-int/2addr p1, v3

    if-gez p1, :cond_84

    goto :goto_5d

    :cond_84
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getProgress()I

    move-result p1

    goto :goto_62

    .line 1038
    :cond_89
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getProgress()I

    move-result p1

    add-int/2addr p1, v3

    iget v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mMax:I

    if-le p1, v0, :cond_93

    goto :goto_4b

    :cond_93
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getProgress()I

    move-result p1

    goto :goto_52

    .line 1041
    :cond_98
    invoke-direct {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->isRTL()Z

    move-result v1

    if-eqz v1, :cond_b6

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr p1, v2

    iget v2, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->iconWidth:I

    int-to-float v2, v2

    sub-float/2addr p1, v2

    int-to-float v0, v0

    div-float/2addr p1, v0

    sub-float/2addr v1, p1

    iget p1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mMax:I

    int-to-float p1, p1

    mul-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result p1

    goto :goto_53

    :cond_b6
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr p1, v1

    iget v1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->iconWidth:I

    int-to-float v1, v1

    sub-float/2addr p1, v1

    int-to-float v0, v0

    div-float/2addr p1, v0

    iget v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mMax:I

    int-to-float v0, v0

    mul-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    goto :goto_53

    .line 1043
    :goto_cb
    iget v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mMax:I

    int-to-float v0, v0

    div-float v0, p1, v0

    float-to-int p1, p1

    .line 1044
    invoke-virtual {p0, p1, v3}, Lcom/meizu/common/widget/EnhanceSeekBar;->setProgress(IZ)V

    .line 1045
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    iget-object v1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    const/high16 v2, -0x80000000

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/meizu/common/widget/EnhanceSeekBar;->setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V

    return-void
.end method

.method private trackTouchEvent(Landroid/view/MotionEvent;)V
    .registers 7

    .line 975
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 976
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    sub-int v1, v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->iconWidth:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    .line 977
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    .line 981
    iget v2, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mInitialThumbX:F

    int-to-float p1, p1

    add-float/2addr v2, p1

    iget p1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mInitialTouchX:F

    sub-float/2addr v2, p1

    float-to-int p1, v2

    const/high16 v2, 0x3f800000  # 1.0f

    const/4 v3, 0x0

    if-gez p1, :cond_2f

    .line 984
    invoke-direct {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->isRTL()Z

    move-result p1

    if-eqz p1, :cond_2d

    goto :goto_5b

    :cond_2d
    :goto_2d
    move v2, v3

    goto :goto_5b

    .line 989
    :cond_2f
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    sub-int/2addr v0, v4

    iget v4, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mHalfThumbWidth:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v0, v4

    if-le p1, v0, :cond_42

    .line 990
    invoke-direct {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->isRTL()Z

    move-result p1

    if-eqz p1, :cond_5b

    goto :goto_2d

    .line 996
    :cond_42
    invoke-direct {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->isRTL()Z

    move-result v0

    if-eqz v0, :cond_52

    .line 997
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    sub-int/2addr p1, v0

    int-to-float p1, p1

    int-to-float v0, v1

    div-float/2addr p1, v0

    sub-float/2addr v2, p1

    goto :goto_5b

    .line 999
    :cond_52
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    sub-int/2addr p1, v0

    int-to-float p1, p1

    int-to-float v0, v1

    div-float v2, p1, v0

    .line 1003
    :cond_5b
    :goto_5b
    invoke-direct {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getMax()I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr v2, p1

    add-float/2addr v2, v3

    .line 1005
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/meizu/common/widget/EnhanceSeekBar;->setProgress(IZ)V

    .line 1006
    iget-boolean p1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mEnableEngine:Z

    if-eqz p1, :cond_71

    .line 1007
    invoke-static {p0}, Lcom/meizu/common/util/CommonUtils;->shakeForFlymeFeature(Landroid/view/View;)V

    :cond_71
    return-void
.end method

.method private updateThumbPos(II)V
    .registers 6

    .line 597
    iget-object p2, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 599
    invoke-direct {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getMax()I

    move-result v0

    if-lez v0, :cond_1d

    .line 603
    invoke-direct {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->isRTL()Z

    move-result v1

    if-eqz v1, :cond_17

    const/high16 v1, 0x3f800000  # 1.0f

    .line 604
    iget v2, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mProgress:I

    int-to-float v2, v2

    int-to-float v0, v0

    div-float/2addr v2, v0

    sub-float/2addr v1, v2

    goto :goto_1e

    .line 606
    :cond_17
    iget v1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mProgress:I

    int-to-float v1, v1

    int-to-float v0, v0

    div-float/2addr v1, v0

    goto :goto_1e

    :cond_1d
    const/4 v1, 0x0

    :goto_1e
    if-eqz p2, :cond_24

    const/4 v0, 0x0

    .line 613
    invoke-direct {p0, p1, p2, v1, v0}, Lcom/meizu/common/widget/EnhanceSeekBar;->setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V

    :cond_24
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .registers 2

    .line 583
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 585
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 586
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v0

    .line 587
    iget-object p0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_16
    return-void
.end method

.method public getDistance()I
    .registers 1

    .line 506
    iget p0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mDistance:I

    return p0
.end method

.method public declared-synchronized getItemsCount()I
    .registers 2

    monitor-enter p0

    .line 542
    :try_start_1
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mItems:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mItems:[Ljava/lang/CharSequence;

    array-length v0, v0

    goto :goto_b

    :cond_9
    iget v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mMax:I
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    :goto_b
    monitor-exit p0

    return v0

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getProgress()I
    .registers 2

    monitor-enter p0

    .line 524
    :try_start_1
    iget v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mProgress:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getStrokeColor()I
    .registers 1

    .line 452
    iget p0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mStrokeColor:I

    return p0
.end method

.method public getStrokeWidth()I
    .registers 1

    .line 488
    iget p0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mStrokeWidth:I

    return p0
.end method

.method public getTextSize()I
    .registers 1

    .line 470
    iget p0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mTextSize:I

    return p0
.end method

.method public getThumb()Landroid/graphics/drawable/Drawable;
    .registers 1

    .line 389
    iget-object p0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    .line 1405
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 1406
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mAccessibilityEventSender:Lcom/meizu/common/widget/EnhanceSeekBar$AccessibilityEventSender;

    if-eqz v0, :cond_d

    const/4 v1, 0x0

    .line 1407
    iput-boolean v1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mAccessibilityFocused:Z

    .line 1408
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_d
    return-void
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .registers 13

    monitor-enter p0

    .line 712
    :try_start_1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 713
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_218

    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mIncreaseIcon:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_218

    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mDecreaseIcon:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_218

    .line 714
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 716
    invoke-direct {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->isRTL()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2c

    .line 717
    iget-object v1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mDecreaseIcon:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mRightIconRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v1, v2, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 718
    iget-object v1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mIncreaseIcon:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mLeftIconRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v1, v2, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_3a

    .line 720
    :cond_2c
    iget-object v1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mDecreaseIcon:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mLeftIconRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v1, v2, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 721
    iget-object v1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mIncreaseIcon:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mRightIconRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v1, v2, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 724
    :goto_3a
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 725
    iget-object v1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mItems:[Ljava/lang/CharSequence;

    if-eqz v1, :cond_57

    .line 726
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    iget v2, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->iconWidth:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    add-int/lit8 v2, v2, 0x32

    iget v3, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mHalfThumbHeight:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_6a

    .line 728
    :cond_57
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    iget v2, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->iconWidth:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    iget v3, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mHalfThumbHeight:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 730
    :goto_6a
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->iconWidth:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    .line 731
    invoke-direct {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getMax()I

    move-result v8

    const/4 v9, 0x0

    if-lez v8, :cond_8a

    int-to-float v2, v8

    div-float v2, v1, v2

    move v10, v2

    goto :goto_8b

    :cond_8a
    move v10, v9

    .line 733
    :goto_8b
    iget-object v2, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mStrokeWidth:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 734
    iget-object v2, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mPaintColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 735
    iget-object v2, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mPaint:Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 736
    iget-object v7, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mPaint:Landroid/graphics/Paint;

    move-object v2, p1

    move v5, v1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 738
    iget-object v2, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mStrokeColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 739
    invoke-direct {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->isRTL()Z

    move-result v2

    if-eqz v2, :cond_ca

    .line 740
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v3

    const/4 v4, 0x0

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mPaint:Landroid/graphics/Paint;

    move-object v2, p1

    move v5, v1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_d8

    :cond_ca
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 742
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    int-to-float v5, v2

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 744
    :goto_d8
    iget-object v2, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mTextSize:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 745
    iget-object v2, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mPaint:Landroid/graphics/Paint;

    const/high16 v3, -0x1000000

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v2, 0x0

    move v3, v2

    :goto_e9
    if-gt v3, v8, :cond_13b

    .line 748
    invoke-direct {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->isRTL()Z

    move-result v4

    const/high16 v5, 0x40000000  # 2.0f

    if-eqz v4, :cond_117

    .line 749
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getProgress()I

    move-result v4

    sub-int v6, v8, v3

    if-ne v4, v6, :cond_138

    .line 750
    iget-object v4, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mItems:[Ljava/lang/CharSequence;

    aget-object v4, v4, v6

    check-cast v4, Ljava/lang/String;

    .line 751
    iget-object v6, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v6

    sub-float v6, v1, v6

    div-float/2addr v6, v5

    iget v5, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mHalfThumbHeight:I

    iget v7, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mDistance:I

    add-int/2addr v5, v7

    neg-int v5, v5

    int-to-float v5, v5

    iget-object v7, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v6, v5, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_138

    .line 754
    :cond_117
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getProgress()I

    move-result v4

    if-ne v4, v3, :cond_138

    .line 755
    iget-object v4, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mItems:[Ljava/lang/CharSequence;

    aget-object v4, v4, v3

    check-cast v4, Ljava/lang/String;

    .line 756
    iget-object v6, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v6

    sub-float v6, v1, v6

    div-float/2addr v6, v5

    iget v5, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mHalfThumbHeight:I

    iget v7, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mDistance:I

    add-int/2addr v5, v7

    neg-int v5, v5

    int-to-float v5, v5

    iget-object v7, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v6, v5, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_138
    :goto_138
    add-int/lit8 v3, v3, 0x1

    goto :goto_e9

    .line 760
    :cond_13b
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 761
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 763
    iget-object v3, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mItems:[Ljava/lang/CharSequence;

    if-eqz v3, :cond_15b

    .line 764
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    iget v4, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->iconWidth:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    add-int/lit8 v4, v4, 0x32

    iget v5, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mHalfThumbHeight:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_16e

    .line 766
    :cond_15b
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    iget v4, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->iconWidth:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    iget v5, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mHalfThumbHeight:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    :goto_16e
    if-gt v2, v8, :cond_1b3

    int-to-float v3, v2

    mul-float/2addr v3, v10

    .line 771
    invoke-direct {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->isRTL()Z

    move-result v4

    if-eqz v4, :cond_193

    .line 772
    iget v4, v0, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    invoke-static {v4, v1}, Ljava/lang/Math;->min(FF)F

    move-result v4

    cmpg-float v4, v4, v3

    if-gez v4, :cond_18b

    .line 773
    iget-object v4, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mPaint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mStrokeColor:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1a9

    .line 775
    :cond_18b
    iget-object v4, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mPaint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mSpotColor:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1a9

    .line 778
    :cond_193
    iget v4, v0, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    cmpl-float v4, v4, v3

    if-lez v4, :cond_1a2

    .line 779
    iget-object v4, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mPaint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mStrokeColor:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1a9

    .line 781
    :cond_1a2
    iget-object v4, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mPaint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mSpotColor:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 784
    :goto_1a9
    iget v4, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mSpotRadius:F

    iget-object v5, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v9, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_16e

    .line 786
    :cond_1b3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 787
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 789
    iget-object v1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mItems:[Ljava/lang/CharSequence;

    if-eqz v1, :cond_1d3

    .line 790
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    iget v2, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->iconWidth:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mHalfThumbWidth:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    add-int/lit8 v2, v2, 0x32

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_1e6

    .line 792
    :cond_1d3
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    iget v2, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->iconWidth:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mHalfThumbWidth:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 794
    :goto_1e6
    iget-object v1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 796
    iget-boolean v1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->isDrag:Z

    if-eqz v1, :cond_215

    .line 797
    iget-object v1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mAuraDrawble:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    iget v3, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mAuraRadius:I

    sub-int/2addr v2, v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    iget v4, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mAuraRadius:I

    sub-int/2addr v3, v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    iget v5, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mAuraRadius:I

    add-int/2addr v4, v5

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    iget v5, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mAuraRadius:I

    add-int/2addr v0, v5

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 798
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mAuraDrawble:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 800
    :cond_215
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V
    :try_end_218
    .catchall {:try_start_1 .. :try_end_218} :catchall_21a

    .line 802
    :cond_218
    monitor-exit p0

    return-void

    :catchall_21a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    .line 1358
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_38

    .line 1359
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 1360
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_2e

    const/16 v1, 0x9

    if-eq v0, v1, :cond_29

    const/16 v1, 0xa

    if-eq v0, v1, :cond_24

    goto :goto_32

    :cond_24
    const/4 v1, 0x1

    .line 1369
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_32

    :cond_29
    const/4 v1, 0x0

    .line 1363
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_32

    :cond_2e
    const/4 v1, 0x2

    .line 1366
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1372
    :goto_32
    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/EnhanceSeekBar;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1373
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1375
    :cond_38
    invoke-super {p0, p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 2

    .line 1212
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1213
    const-class p0, Lcom/meizu/common/widget/EnhanceSeekBar;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 4

    .line 1218
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1219
    const-class v0, Lcom/meizu/common/widget/EnhanceSeekBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 1221
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 1222
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getProgress()I

    move-result v0

    if-lez v0, :cond_1d

    const/16 v1, 0x2000

    .line 1224
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 1226
    :cond_1d
    invoke-direct {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getMax()I

    move-result p0

    if-ge v0, p0, :cond_28

    const/16 p0, 0x1000

    .line 1227
    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_28
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 6

    .line 827
    invoke-direct {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->setIconRect()V

    .line 828
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    return-void
.end method

.method protected declared-synchronized onMeasure(II)V
    .registers 8

    monitor-enter p0

    .line 806
    :try_start_1
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mAuraDrawble:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-nez v0, :cond_8

    move v0, v1

    goto :goto_e

    :cond_8
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mAuraDrawble:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    :goto_e
    iput v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mAuraHeight:I

    .line 807
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_16

    move v0, v1

    goto :goto_1c

    :cond_16
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    :goto_1c
    const/16 v2, 0x14

    .line 809
    iget-object v3, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mItems:[Ljava/lang/CharSequence;

    if-eqz v3, :cond_24

    const/16 v2, 0x46

    .line 813
    :cond_24
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    add-int/lit8 v3, v3, 0x40

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    if-eqz v0, :cond_3e

    .line 815
    iget-object v4, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mItems:[Ljava/lang/CharSequence;

    if-eqz v4, :cond_38

    const/16 v4, 0x32

    goto :goto_39

    :cond_38
    move v4, v1

    :goto_39
    add-int/2addr v0, v4

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 817
    :cond_3e
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    add-int/2addr v0, v4

    add-int/2addr v2, v0

    .line 818
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 820
    invoke-static {v0, p1, v1}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p1

    .line 821
    invoke-static {v2, p2, v1}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p2

    .line 820
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V
    :try_end_5b
    .catchall {:try_start_1 .. :try_end_5b} :catchall_5d

    .line 823
    monitor-exit p0

    return-void

    :catchall_5d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 3

    .line 1205
    check-cast p1, Lcom/meizu/common/widget/EnhanceSeekBar$SavedState;

    .line 1206
    invoke-virtual {p1}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1207
    iget p1, p1, Lcom/meizu/common/widget/EnhanceSeekBar$SavedState;->progress:I

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/meizu/common/widget/EnhanceSeekBar;->setProgress(IZ)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 3

    .line 1195
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 1196
    new-instance v1, Lcom/meizu/common/widget/EnhanceSeekBar$SavedState;

    invoke-direct {v1, v0}, Lcom/meizu/common/widget/EnhanceSeekBar$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1198
    iget p0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mProgress:I

    iput p0, v1, Lcom/meizu/common/widget/EnhanceSeekBar$SavedState;->progress:I

    return-object v1
.end method

.method protected onSizeChanged(IIII)V
    .registers 5

    .line 593
    invoke-direct {p0, p1, p2}, Lcom/meizu/common/widget/EnhanceSeekBar;->updateThumbPos(II)V

    return-void
.end method

.method onStartTrackingTouch()V
    .registers 2

    const/4 v0, 0x1

    .line 1062
    iput-boolean v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mIsDragging:Z

    .line 1063
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mOnEnhanceSeekBarChangeListener:Lcom/meizu/common/widget/EnhanceSeekBar$OnEnhanceSeekBarChangeListener;

    if-eqz v0, :cond_a

    .line 1064
    invoke-interface {v0, p0}, Lcom/meizu/common/widget/EnhanceSeekBar$OnEnhanceSeekBarChangeListener;->onStartTrackingTouch(Lcom/meizu/common/widget/EnhanceSeekBar;)V

    :cond_a
    return-void
.end method

.method onStopTrackingTouch()V
    .registers 2

    const/4 v0, 0x0

    .line 1072
    iput-boolean v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mIsDragging:Z

    .line 1073
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mOnEnhanceSeekBarChangeListener:Lcom/meizu/common/widget/EnhanceSeekBar$OnEnhanceSeekBarChangeListener;

    if-eqz v0, :cond_a

    .line 1074
    invoke-interface {v0, p0}, Lcom/meizu/common/widget/EnhanceSeekBar$OnEnhanceSeekBarChangeListener;->onStopTrackingTouch(Lcom/meizu/common/widget/EnhanceSeekBar;)V

    :cond_a
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8

    .line 833
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 837
    :cond_8
    invoke-direct {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getMax()I

    move-result v0

    if-nez v0, :cond_f

    return v1

    .line 841
    :cond_f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 842
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_b8

    if-eq v2, v4, :cond_7b

    if-eq v2, v3, :cond_3a

    const/4 p1, 0x3

    if-eq v2, p1, :cond_24

    goto/16 :goto_11a

    .line 918
    :cond_24
    iget-boolean p1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mIsDragging:Z

    if-eqz p1, :cond_2e

    .line 919
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->onStopTrackingTouch()V

    .line 920
    invoke-virtual {p0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 922
    :cond_2e
    iget-boolean p1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->isDrag:Z

    if-eqz p1, :cond_35

    .line 923
    invoke-direct {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->prepareStartAuraHide()V

    .line 925
    :cond_35
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto/16 :goto_11a

    .line 868
    :cond_3a
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mObjectAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_45

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_45

    return v4

    .line 872
    :cond_45
    iget-boolean v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mIsDragging:Z

    if-eqz v0, :cond_51

    .line 873
    iput-boolean v1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mIsInItemPositon:Z

    .line 874
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/EnhanceSeekBar;->flingThumb(Landroid/view/MotionEvent;)V

    .line 875
    invoke-direct {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->attemptClaimDrag()V

    .line 877
    :cond_51
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mInitialTouchX:F

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mScaledTouchSlop:I

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_77

    .line 878
    iput-boolean v4, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->hasMoved:Z

    .line 879
    iput-boolean v4, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->isDrag:Z

    .line 880
    iget-object p1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mAuraDrawble:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_11a

    .line 881
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    .line 882
    invoke-direct {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->prepareStartAuraShow()V

    goto/16 :goto_11a

    .line 885
    :cond_77
    iput-boolean v1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->hasMoved:Z

    goto/16 :goto_11a

    .line 890
    :cond_7b
    iget-boolean v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->isDrag:Z

    if-eqz v0, :cond_82

    .line 891
    invoke-direct {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->prepareStartAuraHide()V

    .line 893
    :cond_82
    iget-boolean v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->hasMoved:Z

    if-nez v0, :cond_99

    .line 894
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/EnhanceSeekBar;->trackTapUpTouchEvent(Landroid/view/MotionEvent;)V

    .line 895
    invoke-virtual {p0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 897
    iget-object p1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_11a

    .line 898
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    goto/16 :goto_11a

    .line 903
    :cond_99
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mAuraDrawble:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_a4

    .line 904
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    .line 907
    :cond_a4
    iget-boolean v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mIsDragging:Z

    if-eqz v0, :cond_b2

    .line 908
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/EnhanceSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 909
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->onStopTrackingTouch()V

    .line 910
    invoke-virtual {p0, v1}, Landroid/view/View;->setPressed(Z)V

    goto :goto_11a

    .line 913
    :cond_b2
    iget p1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mTouchDownProgress:I

    invoke-virtual {p0, p1, v1}, Lcom/meizu/common/widget/EnhanceSeekBar;->setProgress(IZ)V

    goto :goto_11a

    .line 844
    :cond_b8
    iput v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mInitialTouchX:F

    .line 845
    iput-boolean v1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->isDrag:Z

    .line 846
    iget-object v2, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_c9

    .line 847
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iput v2, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mInitialThumbX:F

    .line 849
    :cond_c9
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    sub-int/2addr v2, v5

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    sub-int/2addr v2, v5

    iget v5, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->iconWidth:I

    mul-int/2addr v5, v3

    sub-int/2addr v2, v5

    .line 850
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    div-int/2addr v3, v2

    int-to-float v2, v3

    sub-float/2addr v0, v2

    invoke-direct {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getMax()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v0, v2

    .line 851
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mTouchDownProgress:I

    .line 852
    invoke-direct {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->stopAuraShowAnim()V

    .line 853
    invoke-direct {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->stopAuraHideAnim()V

    .line 855
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-direct {p0, v0, p1}, Lcom/meizu/common/widget/EnhanceSeekBar;->isPointInside(II)Z

    move-result p1

    if-eqz p1, :cond_115

    .line 856
    invoke-virtual {p0, v4}, Landroid/view/View;->setPressed(Z)V

    .line 857
    iget-object p1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_112

    .line 858
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    .line 860
    :cond_112
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->onStartTrackingTouch()V

    .line 863
    :cond_115
    invoke-direct {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->attemptClaimDrag()V

    .line 864
    iput-boolean v1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->hasMoved:Z

    :cond_11a
    :goto_11a
    return v4
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x40

    if-ne p1, v2, :cond_9

    .line 1235
    iput-boolean v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mAccessibilityFocused:Z

    goto :goto_f

    :cond_9
    const/16 v2, 0x80

    if-ne p1, v2, :cond_f

    .line 1237
    iput-boolean v1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mAccessibilityFocused:Z

    .line 1240
    :cond_f
    :goto_f
    invoke-super {p0, p1, p2}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result p2

    if-eqz p2, :cond_16

    return v0

    .line 1243
    :cond_16
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result p2

    if-nez p2, :cond_1d

    return v1

    .line 1247
    :cond_1d
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getProgress()I

    move-result p2

    .line 1248
    invoke-direct {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getMax()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40a00000  # 5.0f

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/16 v3, 0x1000

    if-eq p1, v3, :cond_42

    const/16 v3, 0x2000

    if-eq p1, v3, :cond_3a

    return v1

    :cond_3a
    if-gtz p2, :cond_3d

    return v1

    :cond_3d
    sub-int/2addr p2, v2

    .line 1254
    invoke-virtual {p0, p2, v1}, Lcom/meizu/common/widget/EnhanceSeekBar;->setProgress(IZ)V

    return v0

    .line 1258
    :cond_42
    invoke-direct {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getMax()I

    move-result p1

    if-lt p2, p1, :cond_49

    return v1

    :cond_49
    add-int/2addr p2, v2

    .line 1261
    invoke-virtual {p0, p2, v1}, Lcom/meizu/common/widget/EnhanceSeekBar;->setProgress(IZ)V

    return v0
.end method

.method public setDistance(I)V
    .registers 2

    .line 515
    iput p1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mDistance:I

    return-void
.end method

.method public setEnableEngine(Z)V
    .registers 2

    .line 533
    iput-boolean p1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mEnableEngine:Z

    return-void
.end method

.method public setEnabled(Z)V
    .registers 2

    .line 250
    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 251
    invoke-direct {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->refreshRes()V

    .line 252
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setItems([Ljava/lang/CharSequence;)V
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_17

    .line 282
    array-length v1, p1

    if-nez v1, :cond_7

    goto :goto_17

    .line 289
    :cond_7
    array-length v1, p1

    .line 290
    new-array v2, v1, [Ljava/lang/CharSequence;

    iput-object v2, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mItems:[Ljava/lang/CharSequence;

    .line 291
    iget-object v2, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mItems:[Ljava/lang/CharSequence;

    invoke-static {p1, v0, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v1, v1, -0x1

    .line 292
    invoke-direct {p0, v1}, Lcom/meizu/common/widget/EnhanceSeekBar;->setMax(I)V

    return-void

    :cond_17
    :goto_17
    const/4 p1, 0x0

    .line 284
    iput-object p1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mItems:[Ljava/lang/CharSequence;

    .line 285
    invoke-direct {p0, v0}, Lcom/meizu/common/widget/EnhanceSeekBar;->setMax(I)V

    return-void
.end method

.method public setItemsCount(I)V
    .registers 5

    .line 302
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mItems:[Ljava/lang/CharSequence;

    const/4 v1, 0x1

    if-eqz v0, :cond_e

    array-length v2, v0

    if-ge v2, p1, :cond_e

    .line 303
    array-length p1, v0

    sub-int/2addr p1, v1

    invoke-direct {p0, p1}, Lcom/meizu/common/widget/EnhanceSeekBar;->setMax(I)V

    goto :goto_19

    :cond_e
    if-ge p1, v1, :cond_15

    const/4 p1, 0x0

    .line 306
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/EnhanceSeekBar;->setMax(I)V

    goto :goto_19

    :cond_15
    sub-int/2addr p1, v1

    .line 308
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/EnhanceSeekBar;->setMax(I)V

    :goto_19
    return-void
.end method

.method public setOnEnhanceSeekBarChangeListener(Lcom/meizu/common/widget/EnhanceSeekBar$OnEnhanceSeekBarChangeListener;)V
    .registers 2

    .line 273
    iput-object p1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mOnEnhanceSeekBarChangeListener:Lcom/meizu/common/widget/EnhanceSeekBar$OnEnhanceSeekBarChangeListener;

    return-void
.end method

.method public setPaintColor(I)V
    .registers 2

    .line 1353
    iput p1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mPaintColor:I

    return-void
.end method

.method public declared-synchronized setProgress(I)V
    .registers 3

    monitor-enter p0

    const/4 v0, 0x0

    .line 408
    :try_start_2
    invoke-virtual {p0, p1, v0}, Lcom/meizu/common/widget/EnhanceSeekBar;->setProgress(IZ)V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_7

    .line 409
    monitor-exit p0

    return-void

    :catchall_7
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized setProgress(IZ)V
    .registers 4

    monitor-enter p0

    if-gez p1, :cond_4

    const/4 p1, 0x0

    .line 420
    :cond_4
    :try_start_4
    iget v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mMax:I

    if-le p1, v0, :cond_a

    .line 421
    iget p1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mMax:I

    .line 424
    :cond_a
    iget v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mProgress:I

    if-ne p1, v0, :cond_12

    iget-boolean v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mIsInItemPositon:Z

    if-nez v0, :cond_53

    .line 426
    :cond_12
    iput p1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mProgress:I

    if-nez p2, :cond_27

    .line 428
    iget p1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mMax:I

    if-lez p1, :cond_22

    iget p1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mProgress:I

    int-to-float p1, p1

    iget p2, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mMax:I

    int-to-float p2, p2

    div-float/2addr p1, p2

    goto :goto_23

    :cond_22
    const/4 p1, 0x0

    .line 429
    :goto_23
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/EnhanceSeekBar;->onProgressRefresh(F)V

    goto :goto_38

    .line 431
    :cond_27
    iget-object p1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mOnEnhanceSeekBarChangeListener:Lcom/meizu/common/widget/EnhanceSeekBar$OnEnhanceSeekBarChangeListener;

    if-eqz p1, :cond_38

    iget-boolean p1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mIsDragging:Z

    if-eqz p1, :cond_38

    .line 432
    iget-object p1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mOnEnhanceSeekBarChangeListener:Lcom/meizu/common/widget/EnhanceSeekBar$OnEnhanceSeekBarChangeListener;

    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getProgress()I

    move-result p2

    invoke-interface {p1, p0, p2}, Lcom/meizu/common/widget/EnhanceSeekBar$OnEnhanceSeekBarChangeListener;->onProgressDragging(Lcom/meizu/common/widget/EnhanceSeekBar;I)V

    .line 435
    :cond_38
    :goto_38
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "accessibility"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    if-eqz p1, :cond_53

    .line 436
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result p1

    if-eqz p1, :cond_53

    iget-boolean p1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mAccessibilityFocused:Z

    if-eqz p1, :cond_53

    .line 437
    invoke-direct {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->scheduleAccessibilityEventSender()V
    :try_end_53
    .catchall {:try_start_4 .. :try_end_53} :catchall_55

    .line 440
    :cond_53
    monitor-exit p0

    return-void

    :catchall_55
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setStrokeColor(I)V
    .registers 2

    .line 461
    iput p1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mStrokeColor:I

    return-void
.end method

.method public setStrokeWidth(I)V
    .registers 2

    .line 497
    iput p1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mStrokeWidth:I

    return-void
.end method

.method public setTextSize(I)V
    .registers 2

    .line 479
    iput p1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mTextSize:I

    return-void
.end method

.method public setThumb(Landroid/graphics/drawable/Drawable;)V
    .registers 5

    if-nez p1, :cond_c

    .line 341
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/meizu/common/R$drawable;->mz_scrubber_control_selector:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 344
    :cond_c
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1d

    if-eq p1, v0, :cond_1d

    const/4 v1, 0x0

    .line 345
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 346
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    const/4 v0, 0x1

    goto :goto_1e

    :cond_1d
    const/4 v0, 0x0

    :goto_1e
    if-eqz p1, :cond_58

    .line 363
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 365
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mThumbOffset:I

    if-eqz v0, :cond_48

    .line 368
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    if-ne v1, v2, :cond_45

    .line 369
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iget-object v2, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    if-eq v1, v2, :cond_48

    .line 370
    :cond_45
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 373
    :cond_48
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mHalfThumbWidth:I

    .line 374
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mHalfThumbHeight:I

    .line 377
    :cond_58
    iput-object p1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 378
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    if-eqz v0, :cond_79

    .line 380
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/meizu/common/widget/EnhanceSeekBar;->updateThumbPos(II)V

    if-eqz p1, :cond_79

    .line 381
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_79

    .line 382
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object p0

    .line 383
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_79
    return-void
.end method
