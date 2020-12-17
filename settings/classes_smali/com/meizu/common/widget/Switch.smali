.class public Lcom/meizu/common/widget/Switch;
.super Landroid/widget/CompoundButton;
.source "Switch.java"


# static fields
.field private static final CHECKED_STATE_SET:[I

.field private static mShellHapticFeedBackMotor:Ljava/lang/reflect/Field;

.field private static sSwitchStyleableId:[I


# instance fields
.field private isChanged:Z

.field private mAnimatorSet:Landroid/animation/AnimatorSet;

.field private mAttributeSet:Landroid/util/AttributeSet;

.field private mBounceAnimator:Landroid/animation/ValueAnimator;

.field private mBounceInterpolator:Landroid/view/animation/Interpolator;

.field private mDarkThumbOffColor:I

.field private mDarkThumbOnColor:I

.field private mIgnoreSystemNightMode:Z

.field private mIsStyleWhiteMode:Z

.field private mMinFlingVelocity:I

.field private mParams:Lcom/meizu/common/widget/MorphingParams;

.field private mPositionAnimator:Landroid/animation/ValueAnimator;

.field private mPositionInterpolator:Landroid/view/animation/Interpolator;

.field private mSplitTrack:Z

.field private mSwitchBottom:I

.field private mSwitchHeight:I

.field private mSwitchLeft:I

.field private mSwitchMinWidth:I

.field private mSwitchPadding:I

.field private mSwitchRight:I

.field private mSwitchTop:I

.field private mSwitchWidth:I

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTextPaint:Landroid/text/TextPaint;

.field private mThumbDrawable:Lcom/meizu/common/widget/StrokeGradientDrawable;

.field private mThumbOffColor:I

.field private mThumbOnColor:I

.field private mThumbPosition:F

.field private mThumbWidth:I

.field private mTouchMode:I

.field private mTouchSlop:I

.field private mTouchX:F

.field private mTouchY:F

.field private mTrackDrawable:Landroid/graphics/drawable/Drawable;

.field private mUiNightMode:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mWhiteTrackDrawable:Landroid/graphics/drawable/Drawable;

.field public switchOff:Ljava/lang/CharSequence;

.field public switchOn:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    .line 178
    sput-object v0, Lcom/meizu/common/widget/Switch;->CHECKED_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 203
    invoke-direct {p0, p1, v0}, Lcom/meizu/common/widget/Switch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 214
    sget v0, Lcom/meizu/common/R$attr;->MeizuCommon_Switch:I

    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/common/widget/Switch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 10

    .line 228
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/CompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    .line 101
    iput-boolean v0, p0, Lcom/meizu/common/widget/Switch;->isChanged:Z

    .line 115
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/common/widget/Switch;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 175
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/meizu/common/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    .line 182
    iput-boolean v0, p0, Lcom/meizu/common/widget/Switch;->mIsStyleWhiteMode:Z

    .line 184
    iput-boolean v0, p0, Lcom/meizu/common/widget/Switch;->mIgnoreSystemNightMode:Z

    .line 230
    iput-object p2, p0, Lcom/meizu/common/widget/Switch;->mAttributeSet:Landroid/util/AttributeSet;

    .line 231
    new-instance v1, Landroid/text/TextPaint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v1, p0, Lcom/meizu/common/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    .line 233
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 234
    sget-object v3, Lcom/meizu/common/R$styleable;->Switch:[I

    invoke-virtual {p1, p2, v3, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p3

    .line 237
    sget v3, Lcom/meizu/common/R$styleable;->Switch_mcIgnoreSysNightMode:I

    invoke-virtual {p3, v3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/meizu/common/widget/Switch;->mIgnoreSystemNightMode:Z

    .line 239
    iget-object v3, p0, Lcom/meizu/common/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    iput v4, v3, Landroid/text/TextPaint;->density:F

    .line 241
    invoke-direct {p0}, Lcom/meizu/common/widget/Switch;->isSystemNightMode()Z

    move-result v3

    if-eqz v3, :cond_6e

    iget-boolean v3, p0, Lcom/meizu/common/widget/Switch;->mIgnoreSystemNightMode:Z

    if-nez v3, :cond_6e

    .line 242
    sget v3, Lcom/meizu/common/R$styleable;->Switch_mcTrackSysNightMode:I

    invoke-virtual {p3, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/meizu/common/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 243
    iget-object v3, p0, Lcom/meizu/common/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_5b

    .line 244
    sget v3, Lcom/meizu/common/R$drawable;->mc_switch_anim_track_sys_nightmode:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/meizu/common/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 246
    :cond_5b
    sget v3, Lcom/meizu/common/R$styleable;->Switch_mcThumbOffColorSysNightMode:I

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/meizu/common/R$color;->mc_switch_thumb_off_sys_nightmode_color:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {p3, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, p0, Lcom/meizu/common/widget/Switch;->mThumbOffColor:I

    goto :goto_94

    .line 248
    :cond_6e
    sget v3, Lcom/meizu/common/R$styleable;->Switch_mcTrack:I

    invoke-virtual {p3, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/meizu/common/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 249
    iget-object v3, p0, Lcom/meizu/common/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_82

    .line 250
    sget v3, Lcom/meizu/common/R$drawable;->mc_switch_anim_track:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/meizu/common/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 252
    :cond_82
    sget v3, Lcom/meizu/common/R$styleable;->Switch_mcThumbOffColor:I

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/meizu/common/R$color;->mc_switch_thumb_off_color:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {p3, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, p0, Lcom/meizu/common/widget/Switch;->mThumbOffColor:I

    .line 255
    :goto_94
    iget-object v3, p0, Lcom/meizu/common/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_9b

    .line 256
    invoke-virtual {v3, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 258
    :cond_9b
    sget v3, Lcom/meizu/common/R$styleable;->Switch_mcDarkTrack:I

    invoke-virtual {p3, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/meizu/common/widget/Switch;->mWhiteTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 260
    iget-object v3, p0, Lcom/meizu/common/widget/Switch;->mWhiteTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_af

    .line 261
    sget v3, Lcom/meizu/common/R$drawable;->mc_switch_anim_track_dark:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/common/widget/Switch;->mWhiteTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 263
    :cond_af
    sget v1, Lcom/meizu/common/R$styleable;->Switch_mcSwitchMinWidth:I

    invoke-virtual {p3, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/meizu/common/widget/Switch;->mSwitchMinWidth:I

    .line 265
    sget v1, Lcom/meizu/common/R$styleable;->Switch_mcSwitchPadding:I

    const/16 v3, 0x30

    invoke-virtual {p3, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/meizu/common/widget/Switch;->mSwitchPadding:I

    .line 267
    iput-boolean v0, p0, Lcom/meizu/common/widget/Switch;->mSplitTrack:Z

    .line 269
    sget v1, Lcom/meizu/common/R$styleable;->Switch_mcUseWhiteStyle:I

    invoke-virtual {p3, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 270
    sget v3, Lcom/meizu/common/R$styleable;->Switch_mcThumbOnColor:I

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/meizu/common/R$color;->mz_theme_color_blue:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {p3, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, p0, Lcom/meizu/common/widget/Switch;->mThumbOnColor:I

    .line 272
    sget v3, Lcom/meizu/common/R$styleable;->Switch_mcDarkThumbOnColor:I

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/meizu/common/R$color;->mz_theme_color_blue:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {p3, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, p0, Lcom/meizu/common/widget/Switch;->mDarkThumbOnColor:I

    .line 273
    sget v3, Lcom/meizu/common/R$styleable;->Switch_mcDarkThumbOffColor:I

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/meizu/common/R$color;->mc_switch_dark_thumb_off_color:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {p3, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, p0, Lcom/meizu/common/widget/Switch;->mDarkThumbOffColor:I

    .line 275
    invoke-virtual {p3}, Landroid/content/res/TypedArray;->recycle()V

    const/4 p3, 0x2

    new-array p3, p3, [I

    .line 277
    fill-array-data p3, :array_1ca

    sput-object p3, Lcom/meizu/common/widget/Switch;->sSwitchStyleableId:[I

    .line 278
    sget-object p3, Lcom/meizu/common/widget/Switch;->sSwitchStyleableId:[I

    const v3, 0x101043f

    invoke-virtual {p1, p2, p3, v3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 279
    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p3

    iput-object p3, p0, Lcom/meizu/common/widget/Switch;->switchOn:Ljava/lang/CharSequence;

    .line 280
    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p3

    iput-object p3, p0, Lcom/meizu/common/widget/Switch;->switchOff:Ljava/lang/CharSequence;

    .line 281
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 283
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    .line 284
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p2

    iput p2, p0, Lcom/meizu/common/widget/Switch;->mTouchSlop:I

    .line 285
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result p1

    iput p1, p0, Lcom/meizu/common/widget/Switch;->mMinFlingVelocity:I

    .line 287
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/meizu/common/R$dimen;->mz_switch_thumb_padding_left:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    .line 288
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/meizu/common/R$dimen;->mz_switch_thumb_padding_right:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    .line 287
    invoke-direct {p0, p1, p2}, Lcom/meizu/common/widget/Switch;->createDrawable(II)Lcom/meizu/common/widget/StrokeGradientDrawable;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/common/widget/Switch;->mThumbDrawable:Lcom/meizu/common/widget/StrokeGradientDrawable;

    .line 289
    iget-object p1, p0, Lcom/meizu/common/widget/Switch;->mThumbDrawable:Lcom/meizu/common/widget/StrokeGradientDrawable;

    invoke-static {p1}, Lcom/meizu/common/widget/MorphingParams;->create(Lcom/meizu/common/widget/StrokeGradientDrawable;)Lcom/meizu/common/widget/MorphingParams;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/common/widget/Switch;->mParams:Lcom/meizu/common/widget/MorphingParams;

    .line 290
    iget-object p1, p0, Lcom/meizu/common/widget/Switch;->mParams:Lcom/meizu/common/widget/MorphingParams;

    iget p2, p0, Lcom/meizu/common/widget/Switch;->mThumbOffColor:I

    iget p3, p0, Lcom/meizu/common/widget/Switch;->mThumbOnColor:I

    invoke-virtual {p1, p2, p3}, Lcom/meizu/common/widget/MorphingParams;->color(II)Lcom/meizu/common/widget/MorphingParams;

    iget p2, p0, Lcom/meizu/common/widget/Switch;->mDarkThumbOffColor:I

    iget p3, p0, Lcom/meizu/common/widget/Switch;->mDarkThumbOnColor:I

    .line 291
    invoke-virtual {p1, p2, p3}, Lcom/meizu/common/widget/MorphingParams;->darkColor(II)Lcom/meizu/common/widget/MorphingParams;

    .line 292
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/meizu/common/R$dimen;->mz_switch_thumb_from_height:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lcom/meizu/common/R$dimen;->mz_switch_thumb_to_height:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p3

    invoke-virtual {p1, p2, p3}, Lcom/meizu/common/widget/MorphingParams;->height(II)Lcom/meizu/common/widget/MorphingParams;

    .line 293
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/meizu/common/R$dimen;->mz_switch_thumb_from_width:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lcom/meizu/common/R$dimen;->mz_switch_thumb_to_width:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p3

    invoke-virtual {p1, p2, p3}, Lcom/meizu/common/widget/MorphingParams;->width(II)Lcom/meizu/common/widget/MorphingParams;

    .line 294
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/meizu/common/R$dimen;->mz_switch_thumb_from_corner_radius:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lcom/meizu/common/R$dimen;->mz_switch_thumb_to_corner_radius:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p3

    invoke-virtual {p1, p2, p3}, Lcom/meizu/common/widget/MorphingParams;->cornerRadius(II)Lcom/meizu/common/widget/MorphingParams;

    const/high16 p2, 0x3f800000  # 1.0f

    const/high16 p3, 0x3e800000  # 0.25f

    .line 295
    invoke-virtual {p1, p2, p3}, Lcom/meizu/common/widget/MorphingParams;->alpha(FF)Lcom/meizu/common/widget/MorphingParams;

    .line 296
    iget-object p1, p0, Lcom/meizu/common/widget/Switch;->mThumbDrawable:Lcom/meizu/common/widget/StrokeGradientDrawable;

    invoke-virtual {p1}, Lcom/meizu/common/widget/StrokeGradientDrawable;->getGradientDrawable()Landroid/graphics/drawable/GradientDrawable;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/GradientDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    if-eqz v1, :cond_1be

    .line 299
    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->setStyleWhite()V

    .line 303
    :cond_1be
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->refreshDrawableState()V

    .line 304
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/Switch;->setChecked(Z)V

    return-void

    nop

    :array_1ca
    .array-data 4
        0x1010124
        0x1010125
    .end array-data
.end method

.method static synthetic access$000(Lcom/meizu/common/widget/Switch;F)V
    .registers 2

    .line 82
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/Switch;->setThumbPosition(F)V

    return-void
.end method

.method static synthetic access$100(Lcom/meizu/common/widget/Switch;)Landroid/animation/ValueAnimator;
    .registers 1

    .line 82
    iget-object p0, p0, Lcom/meizu/common/widget/Switch;->mPositionAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$200(Lcom/meizu/common/widget/Switch;)Landroid/animation/ValueAnimator;
    .registers 1

    .line 82
    iget-object p0, p0, Lcom/meizu/common/widget/Switch;->mBounceAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method private animateThumbToCheckedState(Z)V
    .registers 13

    if-eqz p1, :cond_6

    const v0, 0x3f851eb8  # 1.04f

    goto :goto_9

    :cond_6
    const v0, -0x42dc28f6  # -0.04f

    :goto_9
    const/4 v1, 0x0

    const/high16 v2, 0x3f800000  # 1.0f

    if-eqz p1, :cond_10

    move p1, v2

    goto :goto_11

    :cond_10
    move p1, v1

    .line 631
    :goto_11
    iget-object v3, p0, Lcom/meizu/common/widget/Switch;->mAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v3, :cond_25

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_25

    .line 632
    iget-object v3, p0, Lcom/meizu/common/widget/Switch;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    .line 633
    iget-object v3, p0, Lcom/meizu/common/widget/Switch;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->cancel()V

    .line 636
    :cond_25
    iget-object v3, p0, Lcom/meizu/common/widget/Switch;->mPositionAnimator:Landroid/animation/ValueAnimator;

    if-eqz v3, :cond_39

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_39

    .line 637
    iget-object v3, p0, Lcom/meizu/common/widget/Switch;->mPositionAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 638
    iget-object v3, p0, Lcom/meizu/common/widget/Switch;->mPositionAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_39
    const/4 v3, 0x2

    new-array v4, v3, [F

    .line 640
    iget v5, p0, Lcom/meizu/common/widget/Switch;->mThumbPosition:F

    const/4 v6, 0x0

    aput v5, v4, v6

    const/4 v5, 0x1

    aput v0, v4, v5

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    iput-object v4, p0, Lcom/meizu/common/widget/Switch;->mPositionAnimator:Landroid/animation/ValueAnimator;

    .line 641
    iget-object v4, p0, Lcom/meizu/common/widget/Switch;->mPositionInterpolator:Landroid/view/animation/Interpolator;

    const/16 v7, 0x15

    const v8, 0x3e4ccccd  # 0.2f

    if-nez v4, :cond_6c

    .line 642
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const v9, 0x3f0f5c29  # 0.56f

    const v10, 0x3eb33333  # 0.35f

    if-lt v4, v7, :cond_65

    .line 643
    new-instance v4, Landroid/view/animation/PathInterpolator;

    invoke-direct {v4, v10, v9, v8, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v4, p0, Lcom/meizu/common/widget/Switch;->mPositionInterpolator:Landroid/view/animation/Interpolator;

    goto :goto_6c

    .line 645
    :cond_65
    new-instance v4, Lcom/meizu/common/interpolator/PathInterpolatorCompat;

    invoke-direct {v4, v10, v9, v8, v2}, Lcom/meizu/common/interpolator/PathInterpolatorCompat;-><init>(FFFF)V

    iput-object v4, p0, Lcom/meizu/common/widget/Switch;->mPositionInterpolator:Landroid/view/animation/Interpolator;

    .line 648
    :cond_6c
    :goto_6c
    iget-object v4, p0, Lcom/meizu/common/widget/Switch;->mPositionAnimator:Landroid/animation/ValueAnimator;

    iget-object v9, p0, Lcom/meizu/common/widget/Switch;->mPositionInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v9}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 649
    iget-object v4, p0, Lcom/meizu/common/widget/Switch;->mPositionAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v9, 0xdc

    invoke-virtual {v4, v9, v10}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 650
    iget-object v4, p0, Lcom/meizu/common/widget/Switch;->mPositionAnimator:Landroid/animation/ValueAnimator;

    new-instance v9, Lcom/meizu/common/widget/Switch$1;

    invoke-direct {v9, p0}, Lcom/meizu/common/widget/Switch$1;-><init>(Lcom/meizu/common/widget/Switch;)V

    invoke-virtual {v4, v9}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 657
    iget-object v4, p0, Lcom/meizu/common/widget/Switch;->mPositionAnimator:Landroid/animation/ValueAnimator;

    new-instance v9, Lcom/meizu/common/widget/Switch$2;

    invoke-direct {v9, p0}, Lcom/meizu/common/widget/Switch$2;-><init>(Lcom/meizu/common/widget/Switch;)V

    invoke-virtual {v4, v9}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 666
    iget-object v4, p0, Lcom/meizu/common/widget/Switch;->mBounceAnimator:Landroid/animation/ValueAnimator;

    if-eqz v4, :cond_a2

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_a2

    .line 667
    iget-object v4, p0, Lcom/meizu/common/widget/Switch;->mBounceAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 668
    iget-object v4, p0, Lcom/meizu/common/widget/Switch;->mBounceAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_a2
    new-array v3, v3, [F

    aput v0, v3, v6

    aput p1, v3, v5

    .line 670
    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/common/widget/Switch;->mBounceAnimator:Landroid/animation/ValueAnimator;

    .line 671
    iget-object p1, p0, Lcom/meizu/common/widget/Switch;->mBounceInterpolator:Landroid/view/animation/Interpolator;

    if-nez p1, :cond_c8

    .line 672
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const v0, 0x3ea8f5c3  # 0.33f

    if-lt p1, v7, :cond_c1

    .line 673
    new-instance p1, Landroid/view/animation/PathInterpolator;

    invoke-direct {p1, v0, v1, v8, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p1, p0, Lcom/meizu/common/widget/Switch;->mBounceInterpolator:Landroid/view/animation/Interpolator;

    goto :goto_c8

    .line 675
    :cond_c1
    new-instance p1, Lcom/meizu/common/interpolator/PathInterpolatorCompat;

    invoke-direct {p1, v0, v1, v8, v2}, Lcom/meizu/common/interpolator/PathInterpolatorCompat;-><init>(FFFF)V

    iput-object p1, p0, Lcom/meizu/common/widget/Switch;->mBounceInterpolator:Landroid/view/animation/Interpolator;

    .line 678
    :cond_c8
    :goto_c8
    iget-object p1, p0, Lcom/meizu/common/widget/Switch;->mBounceAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/meizu/common/widget/Switch;->mBounceInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 679
    iget-object p1, p0, Lcom/meizu/common/widget/Switch;->mBounceAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x118

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 680
    iget-object p1, p0, Lcom/meizu/common/widget/Switch;->mBounceAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/meizu/common/widget/Switch$3;

    invoke-direct {v0, p0}, Lcom/meizu/common/widget/Switch$3;-><init>(Lcom/meizu/common/widget/Switch;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 687
    iget-object p1, p0, Lcom/meizu/common/widget/Switch;->mBounceAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/meizu/common/widget/Switch$4;

    invoke-direct {v0, p0}, Lcom/meizu/common/widget/Switch$4;-><init>(Lcom/meizu/common/widget/Switch;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 695
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p1, p0, Lcom/meizu/common/widget/Switch;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 696
    iget-object p1, p0, Lcom/meizu/common/widget/Switch;->mAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lcom/meizu/common/widget/Switch;->mBounceAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/meizu/common/widget/Switch;->mPositionAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 697
    iget-object p0, p0, Lcom/meizu/common/widget/Switch;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private cancelPositionAnimator()V
    .registers 1

    .line 727
    iget-object p0, p0, Lcom/meizu/common/widget/Switch;->mAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz p0, :cond_7

    .line 728
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_7
    return-void
.end method

.method private cancelSuperTouch(Landroid/view/MotionEvent;)V
    .registers 3

    .line 594
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    const/4 v0, 0x3

    .line 595
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 596
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 597
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    return-void
.end method

.method private createDrawable(II)Lcom/meizu/common/widget/StrokeGradientDrawable;
    .registers 5

    .line 1118
    new-instance p0, Lcom/meizu/common/widget/StrokeGradientDrawable;

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-direct {p0, v0}, Lcom/meizu/common/widget/StrokeGradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable;)V

    .line 1119
    invoke-virtual {p0}, Lcom/meizu/common/widget/StrokeGradientDrawable;->getGradientDrawable()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 1120
    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/StrokeGradientDrawable;->setPaddingLeft(I)V

    .line 1121
    invoke-virtual {p0, p2}, Lcom/meizu/common/widget/StrokeGradientDrawable;->setPaddingRight(I)V

    return-object p0
.end method

.method private getTargetCheckedState()Z
    .registers 2

    .line 733
    iget p0, p0, Lcom/meizu/common/widget/Switch;->mThumbPosition:F

    const/high16 v0, 0x3f000000  # 0.5f

    cmpl-float p0, p0, v0

    if-lez p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method private getThumbOffset()I
    .registers 2

    .line 1067
    invoke-direct {p0}, Lcom/meizu/common/widget/Switch;->getThumbValue()F

    move-result v0

    invoke-direct {p0}, Lcom/meizu/common/widget/Switch;->getThumbScrollRange()I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr v0, p0

    const/high16 p0, 0x3f000000  # 0.5f

    add-float/2addr v0, p0

    float-to-int p0, v0

    return p0
.end method

.method private getThumbScrollRange()I
    .registers 5

    .line 1099
    iget-object v0, p0, Lcom/meizu/common/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_36

    .line 1100
    iget-object v2, p0, Lcom/meizu/common/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    .line 1101
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1104
    iget-object v0, p0, Lcom/meizu/common/widget/Switch;->mThumbDrawable:Lcom/meizu/common/widget/StrokeGradientDrawable;

    invoke-virtual {v0}, Lcom/meizu/common/widget/StrokeGradientDrawable;->getGradientDrawable()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 1105
    iget-object v0, p0, Lcom/meizu/common/widget/Switch;->mThumbDrawable:Lcom/meizu/common/widget/StrokeGradientDrawable;

    invoke-virtual {v0}, Lcom/meizu/common/widget/StrokeGradientDrawable;->getPaddingLeft()I

    move-result v0

    iget-object v3, p0, Lcom/meizu/common/widget/Switch;->mThumbDrawable:Lcom/meizu/common/widget/StrokeGradientDrawable;

    invoke-virtual {v3}, Lcom/meizu/common/widget/StrokeGradientDrawable;->getPaddingRight()I

    move-result v3

    invoke-static {v0, v1, v3, v1}, Lcom/meizu/common/widget/Insets;->of(IIII)Lcom/meizu/common/widget/Insets;

    move-result-object v0

    goto :goto_25

    .line 1107
    :cond_23
    sget-object v0, Lcom/meizu/common/widget/Insets;->NONE:Lcom/meizu/common/widget/Insets;

    .line 1110
    :goto_25
    iget v1, p0, Lcom/meizu/common/widget/Switch;->mSwitchWidth:I

    iget p0, p0, Lcom/meizu/common/widget/Switch;->mThumbWidth:I

    sub-int/2addr v1, p0

    iget p0, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, p0

    iget p0, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, p0

    iget p0, v0, Lcom/meizu/common/widget/Insets;->left:I

    sub-int/2addr v1, p0

    iget p0, v0, Lcom/meizu/common/widget/Insets;->right:I

    sub-int/2addr v1, p0

    :cond_36
    return v1
.end method

.method private getThumbValue()F
    .registers 1

    .line 1076
    iget p0, p0, Lcom/meizu/common/widget/Switch;->mThumbPosition:F

    return p0
.end method

.method private hasFlymeFeature()Z
    .registers 2

    .line 716
    :try_start_0
    sget-object p0, Lcom/meizu/common/widget/Switch;->mShellHapticFeedBackMotor:Ljava/lang/reflect/Field;

    if-nez p0, :cond_12

    const-string p0, "flyme.config.FlymeFeature"

    .line 717
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const-string v0, "SHELL_HAPTICFEEDBACK_MOTOR"

    .line 718
    invoke-virtual {p0, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    sput-object p0, Lcom/meizu/common/widget/Switch;->mShellHapticFeedBackMotor:Ljava/lang/reflect/Field;

    .line 720
    :cond_12
    sget-object p0, Lcom/meizu/common/widget/Switch;->mShellHapticFeedBackMotor:Ljava/lang/reflect/Field;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result p0
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_19} :catch_1a

    goto :goto_1b

    :catch_1a
    const/4 p0, 0x0

    :goto_1b
    return p0
.end method

.method private hitThumb(FF)Z
    .registers 4

    .line 505
    iget v0, p0, Lcom/meizu/common/widget/Switch;->mSwitchLeft:I

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1e

    iget v0, p0, Lcom/meizu/common/widget/Switch;->mSwitchRight:I

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_1e

    iget p1, p0, Lcom/meizu/common/widget/Switch;->mSwitchTop:I

    int-to-float p1, p1

    cmpl-float p1, p2, p1

    if-lez p1, :cond_1e

    iget p0, p0, Lcom/meizu/common/widget/Switch;->mSwitchBottom:I

    int-to-float p0, p0

    cmpg-float p0, p2, p0

    if-gez p0, :cond_1e

    const/4 p0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 p0, 0x0

    :goto_1f
    return p0
.end method

.method private isSystemNightMode()Z
    .registers 2

    .line 308
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 309
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 310
    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x30

    iput v0, p0, Lcom/meizu/common/widget/Switch;->mUiNightMode:I

    const/16 p0, 0x20

    if-ne v0, p0, :cond_14

    const/4 p0, 0x1

    goto :goto_15

    :cond_14
    const/4 p0, 0x0

    :goto_15
    return p0
.end method

.method private refreshAndGetTrackRes()V
    .registers 6

    .line 318
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/common/widget/Switch;->mAttributeSet:Landroid/util/AttributeSet;

    sget-object v2, Lcom/meizu/common/R$styleable;->Switch:[I

    sget v3, Lcom/meizu/common/R$attr;->MeizuCommon_Switch:I

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 320
    invoke-direct {p0}, Lcom/meizu/common/widget/Switch;->isSystemNightMode()Z

    move-result v1

    if-eqz v1, :cond_44

    iget-boolean v1, p0, Lcom/meizu/common/widget/Switch;->mIgnoreSystemNightMode:Z

    if-nez v1, :cond_44

    .line 321
    sget v1, Lcom/meizu/common/R$styleable;->Switch_mcTrackSysNightMode:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/common/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 322
    iget-object v1, p0, Lcom/meizu/common/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_31

    .line 323
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/meizu/common/R$drawable;->mc_switch_anim_track_sys_nightmode:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/common/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 325
    :cond_31
    sget v1, Lcom/meizu/common/R$styleable;->Switch_mcThumbOffColorSysNightMode:I

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/meizu/common/R$color;->mc_switch_thumb_off_sys_nightmode_color:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/meizu/common/widget/Switch;->mThumbOffColor:I

    goto :goto_6e

    .line 327
    :cond_44
    sget v1, Lcom/meizu/common/R$styleable;->Switch_mcTrack:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/common/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 328
    iget-object v1, p0, Lcom/meizu/common/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_5c

    .line 329
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/meizu/common/R$drawable;->mc_switch_anim_track:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/common/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 331
    :cond_5c
    sget v1, Lcom/meizu/common/R$styleable;->Switch_mcThumbOffColor:I

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/meizu/common/R$color;->mc_switch_thumb_off_color:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/meizu/common/widget/Switch;->mThumbOffColor:I

    .line 333
    :goto_6e
    iget-object v1, p0, Lcom/meizu/common/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_75

    .line 334
    invoke-virtual {v1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 337
    :cond_75
    iget-object v1, p0, Lcom/meizu/common/widget/Switch;->mParams:Lcom/meizu/common/widget/MorphingParams;

    if-eqz v1, :cond_85

    .line 338
    iget v2, p0, Lcom/meizu/common/widget/Switch;->mThumbOffColor:I

    iget v3, p0, Lcom/meizu/common/widget/Switch;->mThumbOnColor:I

    invoke-virtual {v1, v2, v3}, Lcom/meizu/common/widget/MorphingParams;->color(II)Lcom/meizu/common/widget/MorphingParams;

    .line 339
    iget v1, p0, Lcom/meizu/common/widget/Switch;->mThumbPosition:F

    invoke-direct {p0, v1}, Lcom/meizu/common/widget/Switch;->setThumbPosition(F)V

    .line 341
    :cond_85
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 342
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->refreshDrawableState()V

    return-void
.end method

.method private setThumbPosition(F)V
    .registers 6

    .line 743
    iput p1, p0, Lcom/meizu/common/widget/Switch;->mThumbPosition:F

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_c

    .line 744
    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    goto :goto_12

    :cond_c
    const/high16 v0, 0x3f800000  # 1.0f

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 746
    :goto_12
    iget-object v1, p0, Lcom/meizu/common/widget/Switch;->mParams:Lcom/meizu/common/widget/MorphingParams;

    if-eqz v1, :cond_72

    .line 747
    iget v2, v1, Lcom/meizu/common/widget/MorphingParams;->fromWidth:I

    iget v1, v1, Lcom/meizu/common/widget/MorphingParams;->toWidth:I

    invoke-virtual {p0, v2, v1, p1}, Lcom/meizu/common/widget/Switch;->getWidthValue(IIF)I

    move-result v1

    .line 748
    iget-object v2, p0, Lcom/meizu/common/widget/Switch;->mThumbDrawable:Lcom/meizu/common/widget/StrokeGradientDrawable;

    invoke-virtual {v2, v1}, Lcom/meizu/common/widget/StrokeGradientDrawable;->setWidth(I)V

    .line 749
    iget-object v1, p0, Lcom/meizu/common/widget/Switch;->mParams:Lcom/meizu/common/widget/MorphingParams;

    iget v2, v1, Lcom/meizu/common/widget/MorphingParams;->fromHeight:I

    iget v1, v1, Lcom/meizu/common/widget/MorphingParams;->toHeight:I

    invoke-virtual {p0, v2, v1, p1}, Lcom/meizu/common/widget/Switch;->getHeightValue(IIF)I

    move-result p1

    .line 750
    iget-object v1, p0, Lcom/meizu/common/widget/Switch;->mThumbDrawable:Lcom/meizu/common/widget/StrokeGradientDrawable;

    invoke-virtual {v1, p1}, Lcom/meizu/common/widget/StrokeGradientDrawable;->setHeight(I)V

    .line 751
    iget-object p1, p0, Lcom/meizu/common/widget/Switch;->mParams:Lcom/meizu/common/widget/MorphingParams;

    iget v1, p1, Lcom/meizu/common/widget/MorphingParams;->fromCornerRadius:F

    iget p1, p1, Lcom/meizu/common/widget/MorphingParams;->toCornerRadius:F

    invoke-virtual {p0, v1, p1, v0}, Lcom/meizu/common/widget/Switch;->getCornerRadiusValue(FFF)F

    move-result p1

    .line 752
    iget-object v1, p0, Lcom/meizu/common/widget/Switch;->mThumbDrawable:Lcom/meizu/common/widget/StrokeGradientDrawable;

    invoke-virtual {v1, p1}, Lcom/meizu/common/widget/StrokeGradientDrawable;->setCornerRadius(F)V

    .line 754
    iget-boolean p1, p0, Lcom/meizu/common/widget/Switch;->mIsStyleWhiteMode:Z

    if-eqz p1, :cond_50

    .line 755
    iget-object p1, p0, Lcom/meizu/common/widget/Switch;->mParams:Lcom/meizu/common/widget/MorphingParams;

    iget v1, p1, Lcom/meizu/common/widget/MorphingParams;->fromDarkColor:I

    iget p1, p1, Lcom/meizu/common/widget/MorphingParams;->toDarkColor:I

    invoke-virtual {p0, v1, p1, v0}, Lcom/meizu/common/widget/Switch;->getThumbColorValue(IIF)I

    move-result p1

    goto :goto_5a

    .line 757
    :cond_50
    iget-object p1, p0, Lcom/meizu/common/widget/Switch;->mParams:Lcom/meizu/common/widget/MorphingParams;

    iget v1, p1, Lcom/meizu/common/widget/MorphingParams;->fromColor:I

    iget p1, p1, Lcom/meizu/common/widget/MorphingParams;->toColor:I

    invoke-virtual {p0, v1, p1, v0}, Lcom/meizu/common/widget/Switch;->getThumbColorValue(IIF)I

    move-result p1

    .line 759
    :goto_5a
    iget-object v0, p0, Lcom/meizu/common/widget/Switch;->mThumbDrawable:Lcom/meizu/common/widget/StrokeGradientDrawable;

    iget-object v1, p0, Lcom/meizu/common/widget/Switch;->mParams:Lcom/meizu/common/widget/MorphingParams;

    iget v2, v1, Lcom/meizu/common/widget/MorphingParams;->fromAlpha:F

    iget v1, v1, Lcom/meizu/common/widget/MorphingParams;->toAlpha:F

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isEnabled()Z

    move-result v3

    invoke-virtual {p0, v2, v1, v3}, Lcom/meizu/common/widget/Switch;->getThumbAlphaValue(FFZ)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/StrokeGradientDrawable;->setAlpha(I)V

    .line 760
    iget-object v0, p0, Lcom/meizu/common/widget/Switch;->mThumbDrawable:Lcom/meizu/common/widget/StrokeGradientDrawable;

    invoke-virtual {v0, p1}, Lcom/meizu/common/widget/StrokeGradientDrawable;->setColor(I)V

    .line 762
    :cond_72
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->invalidate()V

    return-void
.end method

.method private stopDrag(Landroid/view/MotionEvent;)V
    .registers 7

    const/4 v0, 0x0

    .line 606
    iput v0, p0, Lcom/meizu/common/widget/Switch;->mTouchMode:I

    .line 610
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_12

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_12

    move v1, v2

    goto :goto_13

    :cond_12
    move v1, v0

    :goto_13
    if-eqz v1, :cond_45

    .line 613
    iget-object v1, p0, Lcom/meizu/common/widget/Switch;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v3, 0x3e8

    invoke-virtual {v1, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 614
    iget-object v1, p0, Lcom/meizu/common/widget/Switch;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v1

    .line 615
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Lcom/meizu/common/widget/Switch;->mMinFlingVelocity:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_40

    .line 616
    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->isLayoutRtl()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_39

    cmpg-float v1, v1, v4

    if-gez v1, :cond_3e

    goto :goto_49

    :cond_39
    cmpl-float v1, v1, v4

    if-lez v1, :cond_3e

    goto :goto_49

    :cond_3e
    move v2, v0

    goto :goto_49

    .line 618
    :cond_40
    invoke-direct {p0}, Lcom/meizu/common/widget/Switch;->getTargetCheckedState()Z

    move-result v2

    goto :goto_49

    .line 621
    :cond_45
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    .line 624
    :goto_49
    invoke-virtual {p0, v2, v0}, Lcom/meizu/common/widget/Switch;->setCheckedWithHapticFeedback(ZZ)V

    .line 625
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/Switch;->cancelSuperTouch(Landroid/view/MotionEvent;)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 12

    .line 885
    iget-object v0, p0, Lcom/meizu/common/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    .line 886
    iget v1, p0, Lcom/meizu/common/widget/Switch;->mSwitchLeft:I

    .line 887
    iget v2, p0, Lcom/meizu/common/widget/Switch;->mSwitchTop:I

    .line 888
    iget v3, p0, Lcom/meizu/common/widget/Switch;->mSwitchRight:I

    .line 889
    iget v4, p0, Lcom/meizu/common/widget/Switch;->mSwitchBottom:I

    .line 892
    invoke-direct {p0}, Lcom/meizu/common/widget/Switch;->getThumbOffset()I

    move-result v5

    add-int/2addr v5, v1

    .line 895
    iget-object v6, p0, Lcom/meizu/common/widget/Switch;->mThumbDrawable:Lcom/meizu/common/widget/StrokeGradientDrawable;

    if-eqz v6, :cond_16

    .line 896
    sget-object v6, Lcom/meizu/common/widget/Insets;->NONE:Lcom/meizu/common/widget/Insets;

    goto :goto_18

    .line 898
    :cond_16
    sget-object v6, Lcom/meizu/common/widget/Insets;->NONE:Lcom/meizu/common/widget/Insets;

    .line 902
    :goto_18
    iget-object v7, p0, Lcom/meizu/common/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_51

    .line 903
    invoke-virtual {v7, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 906
    iget v7, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v7

    .line 913
    sget-object v8, Lcom/meizu/common/widget/Insets;->NONE:Lcom/meizu/common/widget/Insets;

    if-eq v6, v8, :cond_4a

    .line 914
    iget v8, v6, Lcom/meizu/common/widget/Insets;->left:I

    if-le v8, v7, :cond_2c

    sub-int/2addr v8, v7

    add-int/2addr v1, v8

    .line 917
    :cond_2c
    iget v7, v6, Lcom/meizu/common/widget/Insets;->top:I

    iget v8, v0, Landroid/graphics/Rect;->top:I

    if-le v7, v8, :cond_35

    sub-int/2addr v7, v8

    add-int/2addr v7, v2

    goto :goto_36

    :cond_35
    move v7, v2

    .line 920
    :goto_36
    iget v8, v6, Lcom/meizu/common/widget/Insets;->right:I

    iget v9, v0, Landroid/graphics/Rect;->right:I

    if-le v8, v9, :cond_40

    sub-int/2addr v8, v9

    sub-int v8, v3, v8

    goto :goto_41

    :cond_40
    move v8, v3

    .line 923
    :goto_41
    iget v6, v6, Lcom/meizu/common/widget/Insets;->bottom:I

    iget v9, v0, Landroid/graphics/Rect;->bottom:I

    if-le v6, v9, :cond_4c

    sub-int/2addr v6, v9

    sub-int/2addr v4, v6

    goto :goto_4c

    :cond_4a
    move v7, v2

    move v8, v3

    .line 927
    :cond_4c
    :goto_4c
    iget-object v6, p0, Lcom/meizu/common/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v1, v7, v8, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 936
    :cond_51
    iget-object v1, p0, Lcom/meizu/common/widget/Switch;->mThumbDrawable:Lcom/meizu/common/widget/StrokeGradientDrawable;

    if-eqz v1, :cond_c5

    .line 937
    invoke-virtual {v1}, Lcom/meizu/common/widget/StrokeGradientDrawable;->getGradientDrawable()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 938
    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_89

    .line 939
    invoke-direct {p0}, Lcom/meizu/common/widget/Switch;->getThumbOffset()I

    move-result v0

    sub-int/2addr v3, v0

    iget-object v0, p0, Lcom/meizu/common/widget/Switch;->mThumbDrawable:Lcom/meizu/common/widget/StrokeGradientDrawable;

    invoke-virtual {v0}, Lcom/meizu/common/widget/StrokeGradientDrawable;->getPaddingLeft()I

    move-result v0

    sub-int/2addr v3, v0

    .line 940
    iget-object v0, p0, Lcom/meizu/common/widget/Switch;->mThumbDrawable:Lcom/meizu/common/widget/StrokeGradientDrawable;

    invoke-virtual {v0}, Lcom/meizu/common/widget/StrokeGradientDrawable;->getWidth()I

    move-result v0

    sub-int v0, v3, v0

    .line 941
    iget v1, p0, Lcom/meizu/common/widget/Switch;->mSwitchHeight:I

    iget-object v4, p0, Lcom/meizu/common/widget/Switch;->mThumbDrawable:Lcom/meizu/common/widget/StrokeGradientDrawable;

    invoke-virtual {v4}, Lcom/meizu/common/widget/StrokeGradientDrawable;->getHeight()I

    move-result v4

    sub-int/2addr v1, v4

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v2, v1

    .line 942
    iget-object v1, p0, Lcom/meizu/common/widget/Switch;->mThumbDrawable:Lcom/meizu/common/widget/StrokeGradientDrawable;

    invoke-virtual {v1}, Lcom/meizu/common/widget/StrokeGradientDrawable;->getHeight()I

    move-result v1

    goto :goto_aa

    .line 944
    :cond_89
    iget-object v0, p0, Lcom/meizu/common/widget/Switch;->mThumbDrawable:Lcom/meizu/common/widget/StrokeGradientDrawable;

    invoke-virtual {v0}, Lcom/meizu/common/widget/StrokeGradientDrawable;->getPaddingLeft()I

    move-result v0

    add-int/2addr v0, v5

    .line 945
    iget-object v1, p0, Lcom/meizu/common/widget/Switch;->mThumbDrawable:Lcom/meizu/common/widget/StrokeGradientDrawable;

    invoke-virtual {v1}, Lcom/meizu/common/widget/StrokeGradientDrawable;->getWidth()I

    move-result v1

    add-int v3, v0, v1

    .line 946
    iget v1, p0, Lcom/meizu/common/widget/Switch;->mSwitchHeight:I

    iget-object v4, p0, Lcom/meizu/common/widget/Switch;->mThumbDrawable:Lcom/meizu/common/widget/StrokeGradientDrawable;

    invoke-virtual {v4}, Lcom/meizu/common/widget/StrokeGradientDrawable;->getHeight()I

    move-result v4

    sub-int/2addr v1, v4

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v2, v1

    .line 947
    iget-object v1, p0, Lcom/meizu/common/widget/Switch;->mThumbDrawable:Lcom/meizu/common/widget/StrokeGradientDrawable;

    invoke-virtual {v1}, Lcom/meizu/common/widget/StrokeGradientDrawable;->getHeight()I

    move-result v1

    :goto_aa
    add-int/2addr v1, v2

    .line 949
    iget-object v4, p0, Lcom/meizu/common/widget/Switch;->mThumbDrawable:Lcom/meizu/common/widget/StrokeGradientDrawable;

    invoke-virtual {v4}, Lcom/meizu/common/widget/StrokeGradientDrawable;->getGradientDrawable()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v4

    invoke-virtual {v4, v0, v2, v3, v1}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    .line 950
    iget-object v0, p0, Lcom/meizu/common/widget/Switch;->mThumbDrawable:Lcom/meizu/common/widget/StrokeGradientDrawable;

    invoke-virtual {v0}, Lcom/meizu/common/widget/StrokeGradientDrawable;->getGradientDrawable()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/common/widget/Switch;->mThumbDrawable:Lcom/meizu/common/widget/StrokeGradientDrawable;

    invoke-virtual {v1}, Lcom/meizu/common/widget/StrokeGradientDrawable;->getColor()I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 959
    :cond_c5
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected drawableStateChanged()V
    .registers 3

    .line 1137
    invoke-super {p0}, Landroid/widget/CompoundButton;->drawableStateChanged()V

    .line 1139
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getDrawableState()[I

    move-result-object v0

    .line 1141
    iget-object v1, p0, Lcom/meizu/common/widget/Switch;->mThumbDrawable:Lcom/meizu/common/widget/StrokeGradientDrawable;

    if-eqz v1, :cond_1a

    invoke-virtual {v1}, Lcom/meizu/common/widget/StrokeGradientDrawable;->getGradientDrawable()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    if-eqz v1, :cond_1a

    .line 1142
    iget-object v1, p0, Lcom/meizu/common/widget/Switch;->mThumbDrawable:Lcom/meizu/common/widget/StrokeGradientDrawable;

    invoke-virtual {v1}, Lcom/meizu/common/widget/StrokeGradientDrawable;->getGradientDrawable()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setState([I)Z

    .line 1145
    :cond_1a
    iget-object v1, p0, Lcom/meizu/common/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_21

    .line 1146
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1149
    :cond_21
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->invalidate()V

    return-void
.end method

.method public evaluate(FII)I
    .registers 9

    const/high16 p0, 0x3f800000  # 1.0f

    cmpl-float v0, p1, p0

    if-lez v0, :cond_7

    goto :goto_8

    :cond_7
    move p0, p1

    :goto_8
    const/4 p1, 0x0

    cmpg-float v0, p0, p1

    if-gez v0, :cond_e

    move p0, p1

    :cond_e
    shr-int/lit8 p1, p2, 0x18

    and-int/lit16 p1, p1, 0xff

    shr-int/lit8 v0, p2, 0x10

    and-int/lit16 v0, v0, 0xff

    shr-int/lit8 v1, p2, 0x8

    and-int/lit16 v1, v1, 0xff

    and-int/lit16 p2, p2, 0xff

    shr-int/lit8 v2, p3, 0x18

    and-int/lit16 v2, v2, 0xff

    shr-int/lit8 v3, p3, 0x10

    and-int/lit16 v3, v3, 0xff

    shr-int/lit8 v4, p3, 0x8

    and-int/lit16 v4, v4, 0xff

    and-int/lit16 p3, p3, 0xff

    sub-int/2addr v2, p1

    int-to-float v2, v2

    mul-float/2addr v2, p0

    float-to-int v2, v2

    add-int/2addr p1, v2

    shl-int/lit8 p1, p1, 0x18

    sub-int/2addr v3, v0

    int-to-float v2, v3

    mul-float/2addr v2, p0

    float-to-int v2, v2

    add-int/2addr v0, v2

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr p1, v0

    sub-int/2addr v4, v1

    int-to-float v0, v4

    mul-float/2addr v0, p0

    float-to-int v0, v0

    add-int/2addr v1, v0

    shl-int/lit8 v0, v1, 0x8

    or-int/2addr p1, v0

    sub-int/2addr p3, p2

    int-to-float p3, p3

    mul-float/2addr p0, p3

    float-to-int p0, p0

    add-int/2addr p2, p0

    or-int p0, p1, p2

    return p0
.end method

.method public getCompoundPaddingLeft()I
    .registers 3

    .line 1026
    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->isLayoutRtl()Z

    move-result v0

    if-nez v0, :cond_b

    .line 1027
    invoke-super {p0}, Landroid/widget/CompoundButton;->getCompoundPaddingLeft()I

    move-result p0

    return p0

    .line 1029
    :cond_b
    invoke-super {p0}, Landroid/widget/CompoundButton;->getCompoundPaddingLeft()I

    move-result v0

    iget v1, p0, Lcom/meizu/common/widget/Switch;->mSwitchWidth:I

    add-int/2addr v0, v1

    .line 1030
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1f

    .line 1031
    iget p0, p0, Lcom/meizu/common/widget/Switch;->mSwitchPadding:I

    add-int/2addr v0, p0

    :cond_1f
    return v0
.end method

.method public getCompoundPaddingRight()I
    .registers 3

    .line 1038
    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1039
    invoke-super {p0}, Landroid/widget/CompoundButton;->getCompoundPaddingRight()I

    move-result p0

    return p0

    .line 1041
    :cond_b
    invoke-super {p0}, Landroid/widget/CompoundButton;->getCompoundPaddingRight()I

    move-result v0

    iget v1, p0, Lcom/meizu/common/widget/Switch;->mSwitchWidth:I

    add-int/2addr v0, v1

    .line 1042
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1f

    .line 1043
    iget p0, p0, Lcom/meizu/common/widget/Switch;->mSwitchPadding:I

    add-int/2addr v0, p0

    :cond_1f
    return v0
.end method

.method public getCornerRadiusValue(FFF)F
    .registers 4

    cmpg-float p0, p1, p2

    if-gez p0, :cond_8

    sub-float/2addr p2, p1

    mul-float/2addr p2, p3

    add-float/2addr p1, p2

    return p1

    :cond_8
    sub-float p0, p1, p2

    mul-float/2addr p0, p3

    sub-float/2addr p1, p0

    return p1
.end method

.method public getHeightValue(IIF)I
    .registers 4

    if-ge p1, p2, :cond_b

    sub-int/2addr p2, p1

    int-to-float p0, p2

    mul-float/2addr p0, p3

    .line 1338
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    add-int/2addr p1, p0

    return p1

    :cond_b
    sub-int p0, p1, p2

    int-to-float p0, p0

    mul-float/2addr p0, p3

    .line 1340
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    sub-int/2addr p1, p0

    return p1
.end method

.method public getSwitchMinWidth()I
    .registers 1

    .line 387
    iget p0, p0, Lcom/meizu/common/widget/Switch;->mSwitchMinWidth:I

    return p0
.end method

.method public getSwitchPadding()I
    .registers 1

    .line 364
    iget p0, p0, Lcom/meizu/common/widget/Switch;->mSwitchPadding:I

    return p0
.end method

.method public getThumbAlphaValue(FFZ)I
    .registers 4

    const/high16 p0, 0x437f0000  # 255.0f

    if-eqz p3, :cond_7

    mul-float/2addr p1, p0

    float-to-int p0, p1

    goto :goto_9

    :cond_7
    mul-float/2addr p2, p0

    float-to-int p0, p2

    :goto_9
    return p0
.end method

.method public getThumbColorValue(IIF)I
    .registers 4

    .line 1329
    invoke-virtual {p0, p3, p1, p2}, Lcom/meizu/common/widget/Switch;->evaluate(FII)I

    move-result p0

    return p0
.end method

.method public getTrackDrawable()Landroid/graphics/drawable/Drawable;
    .registers 1

    .line 425
    iget-object p0, p0, Lcom/meizu/common/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getWidthValue(IIF)I
    .registers 4

    if-ge p1, p2, :cond_b

    sub-int/2addr p2, p1

    int-to-float p0, p2

    mul-float/2addr p0, p3

    .line 1346
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    add-int/2addr p1, p0

    return p1

    :cond_b
    sub-int p0, p1, p2

    int-to-float p0, p0

    mul-float/2addr p0, p3

    .line 1348
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    sub-int/2addr p1, p0

    return p1
.end method

.method public isLaidOut()Z
    .registers 2

    .line 815
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getWidth()I

    move-result v0

    if-lez v0, :cond_e

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getHeight()I

    move-result p0

    if-lez p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public isLayoutRtl()Z
    .registers 4

    .line 1054
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x11

    if-lt v0, v2, :cond_11

    .line 1055
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getLayoutDirection()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_f

    goto :goto_10

    :cond_f
    move v0, v1

    :goto_10
    return v0

    :cond_11
    return v1
.end method

.method public jumpDrawablesToCurrentState()V
    .registers 2

    .line 1161
    invoke-super {p0}, Landroid/widget/CompoundButton;->jumpDrawablesToCurrentState()V

    .line 1163
    iget-object v0, p0, Lcom/meizu/common/widget/Switch;->mThumbDrawable:Lcom/meizu/common/widget/StrokeGradientDrawable;

    invoke-virtual {v0}, Lcom/meizu/common/widget/StrokeGradientDrawable;->getGradientDrawable()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 1164
    iget-object v0, p0, Lcom/meizu/common/widget/Switch;->mThumbDrawable:Lcom/meizu/common/widget/StrokeGradientDrawable;

    invoke-virtual {v0}, Lcom/meizu/common/widget/StrokeGradientDrawable;->getGradientDrawable()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/GradientDrawable;->jumpToCurrentState()V

    .line 1167
    :cond_14
    iget-object v0, p0, Lcom/meizu/common/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1b

    .line 1168
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 1171
    :cond_1b
    iget-object v0, p0, Lcom/meizu/common/widget/Switch;->mAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_2d

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 1172
    iget-object v0, p0, Lcom/meizu/common/widget/Switch;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    const/4 v0, 0x0

    .line 1173
    iput-object v0, p0, Lcom/meizu/common/widget/Switch;->mAnimatorSet:Landroid/animation/AnimatorSet;

    :cond_2d
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    .line 1365
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1366
    iget p1, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p1, p1, 0x30

    .line 1367
    iget v0, p0, Lcom/meizu/common/widget/Switch;->mUiNightMode:I

    if-eq p1, v0, :cond_13

    .line 1368
    iput p1, p0, Lcom/meizu/common/widget/Switch;->mUiNightMode:I

    .line 1369
    invoke-direct {p0}, Lcom/meizu/common/widget/Switch;->refreshAndGetTrackRes()V

    .line 1370
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->invalidate()V

    :cond_13
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .registers 2

    add-int/lit8 p1, p1, 0x1

    .line 1128
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onCreateDrawableState(I)[I

    move-result-object p1

    .line 1129
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p0

    if-eqz p0, :cond_11

    .line 1130
    sget-object p0, Lcom/meizu/common/widget/Switch;->CHECKED_STATE_SET:[I

    invoke-static {p1, p0}, Landroid/widget/CompoundButton;->mergeDrawableStates([I[I)[I

    :cond_11
    return-object p1
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .line 1354
    invoke-super {p0}, Landroid/widget/CompoundButton;->onDetachedFromWindow()V

    .line 1355
    iget-object v0, p0, Lcom/meizu/common/widget/Switch;->mBounceAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_a

    .line 1356
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 1358
    :cond_a
    iget-object v0, p0, Lcom/meizu/common/widget/Switch;->mPositionAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_13

    .line 1359
    iget-object p0, p0, Lcom/meizu/common/widget/Switch;->mBounceAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    :cond_13
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 7

    .line 987
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onDraw(Landroid/graphics/Canvas;)V

    .line 988
    iget-object v0, p0, Lcom/meizu/common/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    .line 989
    iget-object v1, p0, Lcom/meizu/common/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_d

    .line 991
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    goto :goto_10

    .line 993
    :cond_d
    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 997
    :goto_10
    iget-object v2, p0, Lcom/meizu/common/widget/Switch;->mThumbDrawable:Lcom/meizu/common/widget/StrokeGradientDrawable;

    invoke-virtual {v2}, Lcom/meizu/common/widget/StrokeGradientDrawable;->getGradientDrawable()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    if-eqz v1, :cond_44

    .line 1000
    iget-boolean p0, p0, Lcom/meizu/common/widget/Switch;->mSplitTrack:Z

    if-eqz p0, :cond_41

    if-eqz v2, :cond_41

    .line 1001
    sget-object p0, Lcom/meizu/common/widget/Insets;->NONE:Lcom/meizu/common/widget/Insets;

    .line 1002
    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 1003
    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget v4, p0, Lcom/meizu/common/widget/Insets;->left:I

    add-int/2addr v3, v4

    iput v3, v0, Landroid/graphics/Rect;->left:I

    .line 1004
    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget p0, p0, Lcom/meizu/common/widget/Insets;->right:I

    sub-int/2addr v3, p0

    iput v3, v0, Landroid/graphics/Rect;->right:I

    .line 1006
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result p0

    .line 1007
    sget-object v3, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 1008
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1009
    invoke-virtual {p1, p0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_44

    .line 1011
    :cond_41
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1015
    :cond_44
    :goto_44
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result p0

    if-eqz v2, :cond_4d

    .line 1018
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 1021
    :cond_4d
    invoke-virtual {p1, p0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 2

    .line 1179
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1180
    const-class p0, Lcom/meizu/common/widget/Switch;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 4

    .line 1185
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1186
    const-class v0, Lcom/meizu/common/widget/Switch;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 1189
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object p0, p0, Lcom/meizu/common/widget/Switch;->switchOn:Ljava/lang/CharSequence;

    goto :goto_17

    :cond_15
    iget-object p0, p0, Lcom/meizu/common/widget/Switch;->switchOff:Ljava/lang/CharSequence;

    .line 1190
    :goto_17
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3e

    .line 1191
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1192
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 1193
    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3e

    .line 1195
    :cond_2b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1196
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const/16 v0, 0x20

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1197
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    :cond_3e
    :goto_3e
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 6

    .line 828
    invoke-super/range {p0 .. p5}, Landroid/widget/CompoundButton;->onLayout(ZIIII)V

    .line 833
    iget-object p1, p0, Lcom/meizu/common/widget/Switch;->mThumbDrawable:Lcom/meizu/common/widget/StrokeGradientDrawable;

    const/4 p2, 0x0

    if-eqz p1, :cond_2a

    .line 834
    iget-object p1, p0, Lcom/meizu/common/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    .line 835
    iget-object p3, p0, Lcom/meizu/common/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p3, :cond_12

    .line 836
    invoke-virtual {p3, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    goto :goto_15

    .line 838
    :cond_12
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    .line 841
    :goto_15
    sget-object p3, Lcom/meizu/common/widget/Insets;->NONE:Lcom/meizu/common/widget/Insets;

    .line 842
    iget p4, p3, Lcom/meizu/common/widget/Insets;->left:I

    iget p5, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr p4, p5

    invoke-static {p2, p4}, Ljava/lang/Math;->max(II)I

    move-result p4

    .line 843
    iget p3, p3, Lcom/meizu/common/widget/Insets;->right:I

    iget p1, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr p3, p1

    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result p2

    goto :goto_2b

    :cond_2a
    move p4, p2

    .line 848
    :goto_2b
    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->isLayoutRtl()Z

    move-result p1

    if-eqz p1, :cond_3c

    .line 849
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getPaddingLeft()I

    move-result p1

    add-int/2addr p1, p4

    .line 850
    iget p3, p0, Lcom/meizu/common/widget/Switch;->mSwitchWidth:I

    add-int/2addr p3, p1

    sub-int/2addr p3, p4

    sub-int/2addr p3, p2

    goto :goto_4d

    .line 852
    :cond_3c
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getPaddingRight()I

    move-result p3

    sub-int/2addr p1, p3

    sub-int p3, p1, p2

    .line 853
    iget p1, p0, Lcom/meizu/common/widget/Switch;->mSwitchWidth:I

    sub-int p1, p3, p1

    add-int/2addr p1, p4

    add-int/2addr p1, p2

    .line 858
    :goto_4d
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getGravity()I

    move-result p2

    and-int/lit8 p2, p2, 0x70

    const/16 p4, 0x10

    if-eq p2, p4, :cond_72

    const/16 p4, 0x50

    if-eq p2, p4, :cond_63

    .line 861
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getPaddingTop()I

    move-result p2

    .line 862
    iget p4, p0, Lcom/meizu/common/widget/Switch;->mSwitchHeight:I

    :goto_61
    add-int/2addr p4, p2

    goto :goto_88

    .line 872
    :cond_63
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getHeight()I

    move-result p2

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getPaddingBottom()I

    move-result p4

    sub-int p4, p2, p4

    .line 873
    iget p2, p0, Lcom/meizu/common/widget/Switch;->mSwitchHeight:I

    sub-int p2, p4, p2

    goto :goto_88

    .line 866
    :cond_72
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getPaddingTop()I

    move-result p2

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getHeight()I

    move-result p4

    add-int/2addr p2, p4

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getPaddingBottom()I

    move-result p4

    sub-int/2addr p2, p4

    div-int/lit8 p2, p2, 0x2

    iget p4, p0, Lcom/meizu/common/widget/Switch;->mSwitchHeight:I

    div-int/lit8 p5, p4, 0x2

    sub-int/2addr p2, p5

    goto :goto_61

    .line 877
    :goto_88
    iput p1, p0, Lcom/meizu/common/widget/Switch;->mSwitchLeft:I

    .line 878
    iput p2, p0, Lcom/meizu/common/widget/Switch;->mSwitchTop:I

    .line 879
    iput p4, p0, Lcom/meizu/common/widget/Switch;->mSwitchBottom:I

    .line 880
    iput p3, p0, Lcom/meizu/common/widget/Switch;->mSwitchRight:I

    return-void
.end method

.method public onMeasure(II)V
    .registers 10

    .line 431
    iget-object v0, p0, Lcom/meizu/common/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    .line 435
    iget-object v1, p0, Lcom/meizu/common/widget/Switch;->mThumbDrawable:Lcom/meizu/common/widget/StrokeGradientDrawable;

    const/4 v2, 0x0

    if-eqz v1, :cond_37

    .line 437
    invoke-virtual {v1}, Lcom/meizu/common/widget/StrokeGradientDrawable;->getGradientDrawable()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 438
    iget-object v1, p0, Lcom/meizu/common/widget/Switch;->mThumbDrawable:Lcom/meizu/common/widget/StrokeGradientDrawable;

    invoke-virtual {v1}, Lcom/meizu/common/widget/StrokeGradientDrawable;->getGradientDrawable()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/GradientDrawable;->getIntrinsicWidth()I

    move-result v1

    iget v3, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v3

    iget v3, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v3

    .line 439
    iget-object v3, p0, Lcom/meizu/common/widget/Switch;->mParams:Lcom/meizu/common/widget/MorphingParams;

    iget v4, v3, Lcom/meizu/common/widget/MorphingParams;->fromWidth:I

    iget v3, v3, Lcom/meizu/common/widget/MorphingParams;->toWidth:I

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 440
    iget-object v3, p0, Lcom/meizu/common/widget/Switch;->mThumbDrawable:Lcom/meizu/common/widget/StrokeGradientDrawable;

    invoke-virtual {v3}, Lcom/meizu/common/widget/StrokeGradientDrawable;->getGradientDrawable()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/GradientDrawable;->getIntrinsicHeight()I

    move-result v3

    goto :goto_39

    :cond_37
    move v1, v2

    move v3, v1

    .line 446
    :goto_39
    iput v1, p0, Lcom/meizu/common/widget/Switch;->mThumbWidth:I

    .line 449
    iget-object v1, p0, Lcom/meizu/common/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_49

    .line 450
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 451
    iget-object v1, p0, Lcom/meizu/common/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    goto :goto_4d

    .line 453
    :cond_49
    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    move v1, v2

    .line 459
    :goto_4d
    iget v4, v0, Landroid/graphics/Rect;->left:I

    .line 460
    iget v0, v0, Landroid/graphics/Rect;->right:I

    .line 462
    sget-object v5, Lcom/meizu/common/widget/Insets;->NONE:Lcom/meizu/common/widget/Insets;

    .line 464
    iget-object v6, p0, Lcom/meizu/common/widget/Switch;->mThumbDrawable:Lcom/meizu/common/widget/StrokeGradientDrawable;

    if-eqz v6, :cond_6f

    .line 465
    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 466
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 467
    iget-object v5, p0, Lcom/meizu/common/widget/Switch;->mThumbDrawable:Lcom/meizu/common/widget/StrokeGradientDrawable;

    invoke-virtual {v5}, Lcom/meizu/common/widget/StrokeGradientDrawable;->getPaddingLeft()I

    move-result v5

    iget-object v6, p0, Lcom/meizu/common/widget/Switch;->mThumbDrawable:Lcom/meizu/common/widget/StrokeGradientDrawable;

    invoke-virtual {v6}, Lcom/meizu/common/widget/StrokeGradientDrawable;->getPaddingRight()I

    move-result v6

    invoke-static {v5, v2, v6, v2}, Lcom/meizu/common/widget/Insets;->of(IIII)Lcom/meizu/common/widget/Insets;

    move-result-object v5

    .line 470
    :cond_6f
    iget v2, p0, Lcom/meizu/common/widget/Switch;->mSwitchMinWidth:I

    iget v6, p0, Lcom/meizu/common/widget/Switch;->mThumbWidth:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v4

    add-int/2addr v6, v0

    iget v0, v5, Lcom/meizu/common/widget/Insets;->left:I

    add-int/2addr v6, v0

    iget v0, v5, Lcom/meizu/common/widget/Insets;->right:I

    add-int/2addr v6, v0

    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 472
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 473
    iput v0, p0, Lcom/meizu/common/widget/Switch;->mSwitchWidth:I

    .line 474
    iput v1, p0, Lcom/meizu/common/widget/Switch;->mSwitchHeight:I

    .line 476
    invoke-super {p0, p1, p2}, Landroid/widget/CompoundButton;->onMeasure(II)V

    .line 478
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getMeasuredHeight()I

    move-result p1

    if-ge p1, v1, :cond_99

    .line 480
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getMeasuredWidthAndState()I

    move-result p1

    invoke-virtual {p0, p1, v1}, Landroid/widget/CompoundButton;->setMeasuredDimension(II)V

    :cond_99
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 2

    .line 486
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8

    .line 516
    iget-object v0, p0, Lcom/meizu/common/widget/Switch;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 517
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_9f

    const/4 v2, 0x2

    if-eq v0, v1, :cond_8b

    if-eq v0, v2, :cond_16

    const/4 v3, 0x3

    if-eq v0, v3, :cond_8b

    goto/16 :goto_b9

    .line 531
    :cond_16
    iget v0, p0, Lcom/meizu/common/widget/Switch;->mTouchMode:I

    if-eqz v0, :cond_b9

    if-eq v0, v1, :cond_57

    if-eq v0, v2, :cond_20

    goto/16 :goto_b9

    .line 551
    :cond_20
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    .line 552
    invoke-direct {p0}, Lcom/meizu/common/widget/Switch;->getThumbScrollRange()I

    move-result v0

    .line 553
    iget v2, p0, Lcom/meizu/common/widget/Switch;->mTouchX:F

    sub-float v2, p1, v2

    const/high16 v3, 0x3f800000  # 1.0f

    const/4 v4, 0x0

    if-eqz v0, :cond_34

    int-to-float v0, v0

    div-float/2addr v2, v0

    goto :goto_3d

    :cond_34
    cmpl-float v0, v2, v4

    if-lez v0, :cond_3a

    move v2, v3

    goto :goto_3d

    :cond_3a
    const/high16 v0, -0x40800000  # -1.0f

    move v2, v0

    .line 562
    :goto_3d
    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_44

    neg-float v2, v2

    .line 565
    :cond_44
    iget v0, p0, Lcom/meizu/common/widget/Switch;->mThumbPosition:F

    add-float/2addr v0, v2

    invoke-static {v0, v4, v3}, Lcom/meizu/common/widget/MathUtils;->constrain(FFF)F

    move-result v0

    .line 566
    iget v2, p0, Lcom/meizu/common/widget/Switch;->mThumbPosition:F

    cmpl-float v2, v0, v2

    if-eqz v2, :cond_56

    .line 567
    iput p1, p0, Lcom/meizu/common/widget/Switch;->mTouchX:F

    .line 568
    invoke-direct {p0, v0}, Lcom/meizu/common/widget/Switch;->setThumbPosition(F)V

    :cond_56
    return v1

    .line 537
    :cond_57
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 538
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 539
    iget v4, p0, Lcom/meizu/common/widget/Switch;->mTouchX:F

    sub-float v4, v0, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/meizu/common/widget/Switch;->mTouchSlop:I

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-gtz v4, :cond_7d

    iget v4, p0, Lcom/meizu/common/widget/Switch;->mTouchY:F

    sub-float v4, v3, v4

    .line 540
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/meizu/common/widget/Switch;->mTouchSlop:I

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_b9

    .line 541
    :cond_7d
    iput v2, p0, Lcom/meizu/common/widget/Switch;->mTouchMode:I

    .line 542
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 543
    iput v0, p0, Lcom/meizu/common/widget/Switch;->mTouchX:F

    .line 544
    iput v3, p0, Lcom/meizu/common/widget/Switch;->mTouchY:F

    return v1

    .line 578
    :cond_8b
    iget v0, p0, Lcom/meizu/common/widget/Switch;->mTouchMode:I

    if-ne v0, v2, :cond_96

    .line 579
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/Switch;->stopDrag(Landroid/view/MotionEvent;)V

    .line 581
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    return v1

    :cond_96
    const/4 v0, 0x0

    .line 584
    iput v0, p0, Lcom/meizu/common/widget/Switch;->mTouchMode:I

    .line 585
    iget-object v0, p0, Lcom/meizu/common/widget/Switch;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_b9

    .line 520
    :cond_9f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 521
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 522
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_b9

    invoke-direct {p0, v0, v2}, Lcom/meizu/common/widget/Switch;->hitThumb(FF)Z

    move-result v3

    if-eqz v3, :cond_b9

    .line 523
    iput v1, p0, Lcom/meizu/common/widget/Switch;->mTouchMode:I

    .line 524
    iput v0, p0, Lcom/meizu/common/widget/Switch;->mTouchX:F

    .line 525
    iput v2, p0, Lcom/meizu/common/widget/Switch;->mTouchY:F

    .line 590
    :cond_b9
    :goto_b9
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public performHapticFeedback()V
    .registers 2

    .line 705
    :try_start_0
    invoke-direct {p0}, Lcom/meizu/common/widget/Switch;->hasFlymeFeature()Z

    move-result v0

    if-eqz v0, :cond_b

    const/16 v0, 0x792e

    .line 706
    invoke-virtual {p0, v0}, Landroid/widget/CompoundButton;->performHapticFeedback(I)Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_b

    :catch_b
    :cond_b
    return-void
.end method

.method public setChecked(Z)V
    .registers 3

    const/4 v0, 0x1

    .line 772
    invoke-virtual {p0, p1, v0}, Lcom/meizu/common/widget/Switch;->setChecked(ZZ)V

    return-void
.end method

.method public setChecked(ZZ)V
    .registers 6

    .line 791
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    const/high16 v1, 0x3f800000  # 1.0f

    const/4 v2, 0x0

    if-ne v0, p1, :cond_1b

    .line 792
    iget-object p2, p0, Lcom/meizu/common/widget/Switch;->mAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz p2, :cond_13

    invoke-virtual {p2}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result p2

    if-nez p2, :cond_1a

    :cond_13
    if-eqz p1, :cond_16

    goto :goto_17

    :cond_16
    move v1, v2

    .line 793
    :goto_17
    invoke-direct {p0, v1}, Lcom/meizu/common/widget/Switch;->setThumbPosition(F)V

    :cond_1a
    return-void

    .line 798
    :cond_1b
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 802
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    if-eqz p2, :cond_3a

    .line 804
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x13

    if-lt p2, v0, :cond_3a

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isAttachedToWindow()Z

    move-result p2

    if-eqz p2, :cond_3a

    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->isLaidOut()Z

    move-result p2

    if-eqz p2, :cond_3a

    .line 805
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/Switch;->animateThumbToCheckedState(Z)V

    goto :goto_44

    .line 808
    :cond_3a
    invoke-direct {p0}, Lcom/meizu/common/widget/Switch;->cancelPositionAnimator()V

    if-eqz p1, :cond_40

    goto :goto_41

    :cond_40
    move v1, v2

    .line 809
    :goto_41
    invoke-direct {p0, v1}, Lcom/meizu/common/widget/Switch;->setThumbPosition(F)V

    :goto_44
    return-void
.end method

.method public setCheckedWithHapticFeedback(Z)V
    .registers 3

    const/4 v0, 0x1

    .line 786
    invoke-virtual {p0, p1, v0}, Lcom/meizu/common/widget/Switch;->setCheckedWithHapticFeedback(ZZ)V

    return-void
.end method

.method public setCheckedWithHapticFeedback(ZZ)V
    .registers 4

    .line 776
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eq v0, p1, :cond_9

    .line 777
    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->performHapticFeedback()V

    .line 779
    :cond_9
    invoke-virtual {p0, p1, p2}, Lcom/meizu/common/widget/Switch;->setChecked(ZZ)V

    return-void
.end method

.method public setCompoundDrawablesWithIntrinsicBounds(IIII)V
    .registers 5

    .line 511
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/CompoundButton;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    return-void
.end method

.method public setDarkThumbOffColor(I)V
    .registers 4

    .line 1289
    iput p1, p0, Lcom/meizu/common/widget/Switch;->mDarkThumbOffColor:I

    .line 1290
    iget-object p1, p0, Lcom/meizu/common/widget/Switch;->mParams:Lcom/meizu/common/widget/MorphingParams;

    if-eqz p1, :cond_12

    .line 1291
    iget v0, p0, Lcom/meizu/common/widget/Switch;->mDarkThumbOffColor:I

    iget v1, p0, Lcom/meizu/common/widget/Switch;->mDarkThumbOnColor:I

    invoke-virtual {p1, v0, v1}, Lcom/meizu/common/widget/MorphingParams;->darkColor(II)Lcom/meizu/common/widget/MorphingParams;

    .line 1292
    iget p1, p0, Lcom/meizu/common/widget/Switch;->mThumbPosition:F

    invoke-direct {p0, p1}, Lcom/meizu/common/widget/Switch;->setThumbPosition(F)V

    .line 1294
    :cond_12
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->invalidate()V

    return-void
.end method

.method public setDarkThumbOnColor(I)V
    .registers 4

    .line 1276
    iput p1, p0, Lcom/meizu/common/widget/Switch;->mDarkThumbOnColor:I

    .line 1277
    iget-object p1, p0, Lcom/meizu/common/widget/Switch;->mParams:Lcom/meizu/common/widget/MorphingParams;

    if-eqz p1, :cond_12

    .line 1278
    iget v0, p0, Lcom/meizu/common/widget/Switch;->mDarkThumbOffColor:I

    iget v1, p0, Lcom/meizu/common/widget/Switch;->mDarkThumbOnColor:I

    invoke-virtual {p1, v0, v1}, Lcom/meizu/common/widget/MorphingParams;->darkColor(II)Lcom/meizu/common/widget/MorphingParams;

    .line 1279
    iget p1, p0, Lcom/meizu/common/widget/Switch;->mThumbPosition:F

    invoke-direct {p0, p1}, Lcom/meizu/common/widget/Switch;->setThumbPosition(F)V

    .line 1281
    :cond_12
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->invalidate()V

    return-void
.end method

.method public setEnabled(Z)V
    .registers 5

    .line 820
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 821
    iget-object v0, p0, Lcom/meizu/common/widget/Switch;->mParams:Lcom/meizu/common/widget/MorphingParams;

    if-eqz v0, :cond_16

    iget-object v1, p0, Lcom/meizu/common/widget/Switch;->mThumbDrawable:Lcom/meizu/common/widget/StrokeGradientDrawable;

    if-eqz v1, :cond_16

    .line 822
    iget v2, v0, Lcom/meizu/common/widget/MorphingParams;->fromAlpha:F

    iget v0, v0, Lcom/meizu/common/widget/MorphingParams;->toAlpha:F

    invoke-virtual {p0, v2, v0, p1}, Lcom/meizu/common/widget/Switch;->getThumbAlphaValue(FFZ)I

    move-result p0

    invoke-virtual {v1, p0}, Lcom/meizu/common/widget/StrokeGradientDrawable;->setAlpha(I)V

    :cond_16
    return-void
.end method

.method public setIgnoreSystemNightMode(Z)V
    .registers 2

    .line 1302
    iput-boolean p1, p0, Lcom/meizu/common/widget/Switch;->mIgnoreSystemNightMode:Z

    .line 1303
    invoke-direct {p0}, Lcom/meizu/common/widget/Switch;->refreshAndGetTrackRes()V

    .line 1304
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->invalidate()V

    return-void
.end method

.method public setStyleDefault()V
    .registers 2

    const/4 v0, 0x0

    .line 1232
    iput-boolean v0, p0, Lcom/meizu/common/widget/Switch;->mIsStyleWhiteMode:Z

    .line 1233
    invoke-direct {p0}, Lcom/meizu/common/widget/Switch;->refreshAndGetTrackRes()V

    .line 1234
    iget-object v0, p0, Lcom/meizu/common/widget/Switch;->mThumbDrawable:Lcom/meizu/common/widget/StrokeGradientDrawable;

    invoke-virtual {v0}, Lcom/meizu/common/widget/StrokeGradientDrawable;->getGradientDrawable()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/GradientDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1241
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->invalidate()V

    return-void
.end method

.method public setStyleWhite()V
    .registers 2

    .line 1207
    iget-boolean v0, p0, Lcom/meizu/common/widget/Switch;->mIsStyleWhiteMode:Z

    if-eqz v0, :cond_5

    return-void

    .line 1211
    :cond_5
    iget-object v0, p0, Lcom/meizu/common/widget/Switch;->mWhiteTrackDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/meizu/common/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 1212
    iget-object v0, p0, Lcom/meizu/common/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_11

    .line 1213
    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->setStyleDefault()V

    goto :goto_2e

    .line 1215
    :cond_11
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    const/4 v0, 0x1

    .line 1216
    iput-boolean v0, p0, Lcom/meizu/common/widget/Switch;->isChanged:Z

    .line 1217
    iput-boolean v0, p0, Lcom/meizu/common/widget/Switch;->mIsStyleWhiteMode:Z

    .line 1218
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->refreshDrawableState()V

    .line 1219
    iget-object v0, p0, Lcom/meizu/common/widget/Switch;->mAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_26

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-nez v0, :cond_2b

    .line 1220
    :cond_26
    iget v0, p0, Lcom/meizu/common/widget/Switch;->mThumbPosition:F

    invoke-direct {p0, v0}, Lcom/meizu/common/widget/Switch;->setThumbPosition(F)V

    .line 1222
    :cond_2b
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->invalidate()V

    :goto_2e
    return-void
.end method

.method public setSwitchMinWidth(I)V
    .registers 2

    .line 375
    iput p1, p0, Lcom/meizu/common/widget/Switch;->mSwitchMinWidth:I

    .line 376
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->requestLayout()V

    return-void
.end method

.method public setSwitchPadding(I)V
    .registers 2

    .line 353
    iput p1, p0, Lcom/meizu/common/widget/Switch;->mSwitchPadding:I

    .line 354
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->requestLayout()V

    return-void
.end method

.method public setThumbOffColor(I)V
    .registers 4

    .line 1263
    iput p1, p0, Lcom/meizu/common/widget/Switch;->mThumbOffColor:I

    .line 1264
    iget-object p1, p0, Lcom/meizu/common/widget/Switch;->mParams:Lcom/meizu/common/widget/MorphingParams;

    if-eqz p1, :cond_12

    .line 1265
    iget v0, p0, Lcom/meizu/common/widget/Switch;->mThumbOffColor:I

    iget v1, p0, Lcom/meizu/common/widget/Switch;->mThumbOnColor:I

    invoke-virtual {p1, v0, v1}, Lcom/meizu/common/widget/MorphingParams;->color(II)Lcom/meizu/common/widget/MorphingParams;

    .line 1266
    iget p1, p0, Lcom/meizu/common/widget/Switch;->mThumbPosition:F

    invoke-direct {p0, p1}, Lcom/meizu/common/widget/Switch;->setThumbPosition(F)V

    .line 1268
    :cond_12
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->invalidate()V

    return-void
.end method

.method public setThumbOnColor(I)V
    .registers 4

    .line 1250
    iput p1, p0, Lcom/meizu/common/widget/Switch;->mThumbOnColor:I

    .line 1251
    iget-object p1, p0, Lcom/meizu/common/widget/Switch;->mParams:Lcom/meizu/common/widget/MorphingParams;

    if-eqz p1, :cond_12

    .line 1252
    iget v0, p0, Lcom/meizu/common/widget/Switch;->mThumbOffColor:I

    iget v1, p0, Lcom/meizu/common/widget/Switch;->mThumbOnColor:I

    invoke-virtual {p1, v0, v1}, Lcom/meizu/common/widget/MorphingParams;->color(II)Lcom/meizu/common/widget/MorphingParams;

    .line 1253
    iget p1, p0, Lcom/meizu/common/widget/Switch;->mThumbPosition:F

    invoke-direct {p0, p1}, Lcom/meizu/common/widget/Switch;->setThumbPosition(F)V

    .line 1255
    :cond_12
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->invalidate()V

    return-void
.end method

.method public setTrackDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 4

    .line 397
    iget-object v0, p0, Lcom/meizu/common/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_8

    const/4 v1, 0x0

    .line 398
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 400
    :cond_8
    iput-object p1, p0, Lcom/meizu/common/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_12

    .line 402
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 403
    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->drawableStateChanged()V

    .line 405
    :cond_12
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->requestLayout()V

    return-void
.end method

.method public setTrackResource(I)V
    .registers 3

    .line 415
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/Switch;->setTrackDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public toggle()V
    .registers 2

    .line 767
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/Switch;->setCheckedWithHapticFeedback(Z)V

    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .registers 3

    .line 1154
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/meizu/common/widget/Switch;->mThumbDrawable:Lcom/meizu/common/widget/StrokeGradientDrawable;

    if-eqz v0, :cond_10

    .line 1155
    invoke-virtual {v0}, Lcom/meizu/common/widget/StrokeGradientDrawable;->getGradientDrawable()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    if-eq p1, v0, :cond_17

    :cond_10
    iget-object p0, p0, Lcom/meizu/common/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, p0, :cond_15

    goto :goto_17

    :cond_15
    const/4 p0, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 p0, 0x1

    :goto_18
    return p0
.end method
