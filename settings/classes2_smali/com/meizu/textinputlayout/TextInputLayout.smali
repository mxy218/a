.class public Lcom/meizu/textinputlayout/TextInputLayout;
.super Landroid/widget/LinearLayout;
.source "TextInputLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/textinputlayout/TextInputLayout$TextInputAccessibilityDelegate;,
        Lcom/meizu/textinputlayout/TextInputLayout$AnimInterpolator;
    }
.end annotation


# static fields
.field private static mCursorDrawableArray:Ljava/lang/reflect/Field;

.field private static mCursorDrawableRes:Ljava/lang/reflect/Field;

.field private static mTextViewEditor:Ljava/lang/reflect/Field;

.field private static mUpdateCursorPosition:Ljava/lang/reflect/Method;


# instance fields
.field private mAnimationDuration:I

.field private mAnimator:Lcom/meizu/textinputlayout/ValueAnimatorCompat;

.field private final mCollapsingTextHelper:Lcom/meizu/textinputlayout/CollapsingTextHelper;

.field private mDefaultCursorDrawableRes:I

.field private mDefaultTextColor:Landroid/content/res/ColorStateList;

.field private mEditText:Landroid/widget/EditText;

.field private mErrorEnabled:Z

.field private mErrorPaddingTop:I

.field private mErrorTextAppearance:I

.field private mErrorView:Landroid/widget/TextView;

.field private mFocusedTextColor:Landroid/content/res/ColorStateList;

.field private mHint:Ljava/lang/CharSequence;

.field private mHintAnimationEnabled:Z

.field private mLabelEnable:Z

.field private mLabelTextHeight:I

.field private mTmpPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 89
    invoke-direct {p0, p1, v0}, Lcom/meizu/textinputlayout/TextInputLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 93
    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/textinputlayout/TextInputLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 9

    .line 98
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 v0, 0x12c

    .line 66
    iput v0, p0, Lcom/meizu/textinputlayout/TextInputLayout;->mAnimationDuration:I

    .line 80
    new-instance v0, Lcom/meizu/textinputlayout/CollapsingTextHelper;

    invoke-direct {v0, p0}, Lcom/meizu/textinputlayout/CollapsingTextHelper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/meizu/textinputlayout/TextInputLayout;->mCollapsingTextHelper:Lcom/meizu/textinputlayout/CollapsingTextHelper;

    const/4 v0, 0x6

    .line 84
    iput v0, p0, Lcom/meizu/textinputlayout/TextInputLayout;->mErrorPaddingTop:I

    const/4 v0, 0x0

    .line 85
    iput v0, p0, Lcom/meizu/textinputlayout/TextInputLayout;->mLabelTextHeight:I

    const/4 v1, 0x1

    .line 86
    iput-boolean v1, p0, Lcom/meizu/textinputlayout/TextInputLayout;->mLabelEnable:Z

    const/4 v2, -0x1

    .line 715
    iput v2, p0, Lcom/meizu/textinputlayout/TextInputLayout;->mDefaultCursorDrawableRes:I

    .line 100
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 101
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setWillNotDraw(Z)V

    .line 102
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setAddStatesFromChildren(Z)V

    .line 104
    iget-object v3, p0, Lcom/meizu/textinputlayout/TextInputLayout;->mCollapsingTextHelper:Lcom/meizu/textinputlayout/CollapsingTextHelper;

    sget-object v4, Lcom/meizu/textinputlayout/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v4}, Lcom/meizu/textinputlayout/CollapsingTextHelper;->setTextSizeInterpolator(Landroid/view/animation/Interpolator;)V

    .line 105
    iget-object v3, p0, Lcom/meizu/textinputlayout/TextInputLayout;->mCollapsingTextHelper:Lcom/meizu/textinputlayout/CollapsingTextHelper;

    new-instance v4, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v3, v4}, Lcom/meizu/textinputlayout/CollapsingTextHelper;->setPositionInterpolator(Landroid/view/animation/Interpolator;)V

    .line 106
    iget-object v3, p0, Lcom/meizu/textinputlayout/TextInputLayout;->mCollapsingTextHelper:Lcom/meizu/textinputlayout/CollapsingTextHelper;

    const v4, 0x800033

    invoke-virtual {v3, v4}, Lcom/meizu/textinputlayout/CollapsingTextHelper;->setCollapsedTextGravity(I)V

    .line 108
    sget-object v3, Lcom/meizu/textinputlayout/R$styleable;->MzTextInputLayout:[I

    sget v4, Lcom/meizu/textinputlayout/R$style;->MzTextInputLayoutTextAppearance:I

    invoke-virtual {p1, p2, v3, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 110
    sget p3, Lcom/meizu/textinputlayout/R$styleable;->MzTextInputLayout_android_hint:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p3

    iput-object p3, p0, Lcom/meizu/textinputlayout/TextInputLayout;->mHint:Ljava/lang/CharSequence;

    .line 111
    sget p3, Lcom/meizu/textinputlayout/R$styleable;->MzTextInputLayout_hintAnimationEnabled:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/meizu/textinputlayout/TextInputLayout;->mHintAnimationEnabled:Z

    .line 114
    sget p3, Lcom/meizu/textinputlayout/R$styleable;->MzTextInputLayout_android_textColorHint:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_66

    .line 115
    sget p3, Lcom/meizu/textinputlayout/R$styleable;->MzTextInputLayout_android_textColorHint:I

    .line 116
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p3

    iput-object p3, p0, Lcom/meizu/textinputlayout/TextInputLayout;->mFocusedTextColor:Landroid/content/res/ColorStateList;

    iput-object p3, p0, Lcom/meizu/textinputlayout/TextInputLayout;->mDefaultTextColor:Landroid/content/res/ColorStateList;

    .line 119
    :cond_66
    sget p3, Lcom/meizu/textinputlayout/R$styleable;->MzTextInputLayout_hintTextAppearance:I

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    if-eq p3, v2, :cond_77

    .line 122
    sget p3, Lcom/meizu/textinputlayout/R$styleable;->MzTextInputLayout_hintTextAppearance:I

    .line 123
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    .line 122
    invoke-virtual {p0, p3}, Lcom/meizu/textinputlayout/TextInputLayout;->setHintTextAppearance(I)V

    .line 126
    :cond_77
    sget p3, Lcom/meizu/textinputlayout/R$styleable;->MzTextInputLayout_errorTextAppearance:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lcom/meizu/textinputlayout/TextInputLayout;->mErrorTextAppearance:I

    .line 127
    sget p3, Lcom/meizu/textinputlayout/R$styleable;->MzTextInputLayout_errorEnabled:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    .line 128
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 130
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/meizu/textinputlayout/R$dimen;->mz_text_input_layout_default_margin_top:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/meizu/textinputlayout/TextInputLayout;->mErrorPaddingTop:I

    .line 131
    invoke-virtual {p0, p3}, Lcom/meizu/textinputlayout/TextInputLayout;->setErrorEnabled(Z)V

    .line 133
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getImportantForAccessibility(Landroid/view/View;)I

    move-result p1

    if-nez p1, :cond_a0

    .line 136
    invoke-static {p0, v1}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 140
    :cond_a0
    new-instance p1, Lcom/meizu/textinputlayout/TextInputLayout$TextInputAccessibilityDelegate;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/meizu/textinputlayout/TextInputLayout$TextInputAccessibilityDelegate;-><init>(Lcom/meizu/textinputlayout/TextInputLayout;Lcom/meizu/textinputlayout/TextInputLayout$1;)V

    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    return-void
.end method

.method static synthetic access$200(Lcom/meizu/textinputlayout/TextInputLayout;Z)V
    .registers 2

    .line 64
    invoke-direct {p0, p1}, Lcom/meizu/textinputlayout/TextInputLayout;->updateLabelVisibility(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/meizu/textinputlayout/TextInputLayout;)Landroid/widget/EditText;
    .registers 1

    .line 64
    iget-object p0, p0, Lcom/meizu/textinputlayout/TextInputLayout;->mEditText:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$400(Lcom/meizu/textinputlayout/TextInputLayout;)Lcom/meizu/textinputlayout/CollapsingTextHelper;
    .registers 1

    .line 64
    iget-object p0, p0, Lcom/meizu/textinputlayout/TextInputLayout;->mCollapsingTextHelper:Lcom/meizu/textinputlayout/CollapsingTextHelper;

    return-object p0
.end method

.method static synthetic access$500(Lcom/meizu/textinputlayout/TextInputLayout;)Landroid/widget/TextView;
    .registers 1

    .line 64
    iget-object p0, p0, Lcom/meizu/textinputlayout/TextInputLayout;->mErrorView:Landroid/widget/TextView;

    return-object p0
.end method

.method private animateToExpansionFraction(F)V
    .registers 4

    .line 566
    iget-object v0, p0, Lcom/meizu/textinputlayout/TextInputLayout;->mCollapsingTextHelper:Lcom/meizu/textinputlayout/CollapsingTextHelper;

    invoke-virtual {v0}, Lcom/meizu/textinputlayout/CollapsingTextHelper;->getExpansionFraction()F

    move-result v0

    cmpl-float v0, v0, p1

    if-nez v0, :cond_b

    return-void

    .line 569
    :cond_b
    iget-object v0, p0, Lcom/meizu/textinputlayout/TextInputLayout;->mAnimator:Lcom/meizu/textinputlayout/ValueAnimatorCompat;

    if-nez v0, :cond_2f

    .line 570
    invoke-static {}, Lcom/meizu/textinputlayout/ViewUtils;->createAnimator()Lcom/meizu/textinputlayout/ValueAnimatorCompat;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/textinputlayout/TextInputLayout;->mAnimator:Lcom/meizu/textinputlayout/ValueAnimatorCompat;

    .line 571
    iget-object v0, p0, Lcom/meizu/textinputlayout/TextInputLayout;->mAnimator:Lcom/meizu/textinputlayout/ValueAnimatorCompat;

    invoke-direct {p0}, Lcom/meizu/textinputlayout/TextInputLayout;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/textinputlayout/ValueAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 572
    iget-object v0, p0, Lcom/meizu/textinputlayout/TextInputLayout;->mAnimator:Lcom/meizu/textinputlayout/ValueAnimatorCompat;

    iget v1, p0, Lcom/meizu/textinputlayout/TextInputLayout;->mAnimationDuration:I

    invoke-virtual {v0, v1}, Lcom/meizu/textinputlayout/ValueAnimatorCompat;->setDuration(I)V

    .line 573
    iget-object v0, p0, Lcom/meizu/textinputlayout/TextInputLayout;->mAnimator:Lcom/meizu/textinputlayout/ValueAnimatorCompat;

    new-instance v1, Lcom/meizu/textinputlayout/TextInputLayout$4;

    invoke-direct {v1, p0}, Lcom/meizu/textinputlayout/TextInputLayout$4;-><init>(Lcom/meizu/textinputlayout/TextInputLayout;)V

    invoke-virtual {v0, v1}, Lcom/meizu/textinputlayout/ValueAnimatorCompat;->setUpdateListener(Lcom/meizu/textinputlayout/ValueAnimatorCompat$AnimatorUpdateListener;)V

    .line 580
    :cond_2f
    iget-object v0, p0, Lcom/meizu/textinputlayout/TextInputLayout;->mAnimator:Lcom/meizu/textinputlayout/ValueAnimatorCompat;

    iget-object v1, p0, Lcom/meizu/textinputlayout/TextInputLayout;->mCollapsingTextHelper:Lcom/meizu/textinputlayout/CollapsingTextHelper;

    invoke-virtual {v1}, Lcom/meizu/textinputlayout/CollapsingTextHelper;->getExpansionFraction()F

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/meizu/textinputlayout/ValueAnimatorCompat;->setFloatValues(FF)V

    .line 581
    iget-object p0, p0, Lcom/meizu/textinputlayout/TextInputLayout;->mAnimator:Lcom/meizu/textinputlayout/ValueAnimatorCompat;

    invoke-virtual {p0}, Lcom/meizu/textinputlayout/ValueAnimatorCompat;->start()V

    return-void
.end method

.method private static arrayContains([II)Z
    .registers 6

    .line 631
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_e

    aget v3, p0, v2

    if-ne v3, p1, :cond_b

    const/4 p0, 0x1

    return p0

    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_e
    return v1
.end method

.method private collapseHint(Z)V
    .registers 3

    .line 544
    iget-object v0, p0, Lcom/meizu/textinputlayout/TextInputLayout;->mAnimator:Lcom/meizu/textinputlayout/ValueAnimatorCompat;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/meizu/textinputlayout/ValueAnimatorCompat;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 545
    iget-object v0, p0, Lcom/meizu/textinputlayout/TextInputLayout;->mAnimator:Lcom/meizu/textinputlayout/ValueAnimatorCompat;

    invoke-virtual {v0}, Lcom/meizu/textinputlayout/ValueAnimatorCompat;->cancel()V

    :cond_f
    const/high16 v0, 0x3f800000  # 1.0f

    if-eqz p1, :cond_1b

    .line 547
    iget-boolean p1, p0, Lcom/meizu/textinputlayout/TextInputLayout;->mHintAnimationEnabled:Z

    if-eqz p1, :cond_1b

    .line 548
    invoke-direct {p0, v0}, Lcom/meizu/textinputlayout/TextInputLayout;->animateToExpansionFraction(F)V

    goto :goto_20

    .line 550
    :cond_1b
    iget-object p0, p0, Lcom/meizu/textinputlayout/TextInputLayout;->mCollapsingTextHelper:Lcom/meizu/textinputlayout/CollapsingTextHelper;

    invoke-virtual {p0, v0}, Lcom/meizu/textinputlayout/CollapsingTextHelper;->setExpansionFraction(F)V

    :goto_20
    return-void
.end method

.method private expandHint(Z)V
    .registers 3

    .line 555
    iget-object v0, p0, Lcom/meizu/textinputlayout/TextInputLayout;->mAnimator:Lcom/meizu/textinputlayout/ValueAnimatorCompat;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/meizu/textinputlayout/ValueAnimatorCompat;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 556
    iget-object v0, p0, Lcom/meizu/textinputlayout/TextInputLayout;->mAnimator:Lcom/meizu/textinputlayout/ValueAnimatorCompat;

    invoke-virtual {v0}, Lcom/meizu/textinputlayout/ValueAnimatorCompat;->cancel()V

    :cond_f
    const/4 v0, 0x0

    if-eqz p1, :cond_1a

    .line 558
    iget-boolean p1, p0, Lcom/meizu/textinputlayout/TextInputLayout;->mHintAnimationEnabled:Z

    if-eqz p1, :cond_1a

    .line 559
    invoke-direct {p0, v0}, Lcom/meizu/textinputlayout/TextInputLayout;->animateToExpansionFraction(F)V

    goto :goto_1f

    .line 561
    :cond_1a
    iget-object p0, p0, Lcom/meizu/textinputlayout/TextInputLayout;->mCollapsingTextHelper:Lcom/meizu/textinputlayout/CollapsingTextHelper;

    invoke-virtual {p0, v0}, Lcom/meizu/textinputlayout/CollapsingTextHelper;->setExpansionFraction(F)V

    :goto_1f
    return-void
.end method

.method private getInterpolator()Landroid/view/animation/Interpolator;
    .registers 4

    .line 145
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_12

    .line 146
    new-instance p0, Landroid/view/animation/PathInterpolator;

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000  # 1.0f

    const v2, 0x3dcccccd  # 0.1f

    invoke-direct {p0, v2, v0, v2, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    return-object p0

    .line 148
    :cond_12
    new-instance v0, Lcom/meizu/textinputlayout/TextInputLayout$AnimInterpolator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/meizu/textinputlayout/TextInputLayout$AnimInterpolator;-><init>(Lcom/meizu/textinputlayout/TextInputLayout;Lcom/meizu/textinputlayout/TextInputLayout$1;)V

    return-object v0
.end method

.method private setCursorDrawable(Landroid/widget/EditText;I)V
    .registers 9

    if-gez p2, :cond_3

    return-void

    .line 729
    :cond_3
    :try_start_3
    sget-object v0, Lcom/meizu/textinputlayout/TextInputLayout;->mCursorDrawableRes:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    if-nez v0, :cond_1f

    .line 730
    const-class v0, Landroid/widget/TextView;

    const-string v2, "mCursorDrawableRes"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/meizu/textinputlayout/TextInputLayout;->mCursorDrawableRes:Ljava/lang/reflect/Field;

    .line 731
    sget-object v0, Lcom/meizu/textinputlayout/TextInputLayout;->mCursorDrawableRes:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 732
    sget-object v0, Lcom/meizu/textinputlayout/TextInputLayout;->mCursorDrawableRes:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/meizu/textinputlayout/TextInputLayout;->mDefaultCursorDrawableRes:I

    .line 734
    :cond_1f
    sget-object p0, Lcom/meizu/textinputlayout/TextInputLayout;->mCursorDrawableRes:Ljava/lang/reflect/Field;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V

    .line 736
    sget-object p0, Lcom/meizu/textinputlayout/TextInputLayout;->mTextViewEditor:Ljava/lang/reflect/Field;

    if-nez p0, :cond_38

    .line 737
    const-class p0, Landroid/widget/TextView;

    const-string v2, "mEditor"

    invoke-virtual {p0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    sput-object p0, Lcom/meizu/textinputlayout/TextInputLayout;->mTextViewEditor:Ljava/lang/reflect/Field;

    .line 738
    sget-object p0, Lcom/meizu/textinputlayout/TextInputLayout;->mTextViewEditor:Ljava/lang/reflect/Field;

    invoke-virtual {p0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 740
    :cond_38
    sget-object p0, Lcom/meizu/textinputlayout/TextInputLayout;->mTextViewEditor:Ljava/lang/reflect/Field;

    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string v2, "android.widget.Editor"

    .line 742
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 743
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1c

    if-ge v3, v4, :cond_68

    .line 744
    sget-object v3, Lcom/meizu/textinputlayout/TextInputLayout;->mCursorDrawableArray:Ljava/lang/reflect/Field;

    if-nez v3, :cond_5b

    const-string v3, "mCursorDrawable"

    .line 745
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    sput-object v3, Lcom/meizu/textinputlayout/TextInputLayout;->mCursorDrawableArray:Ljava/lang/reflect/Field;

    .line 746
    sget-object v3, Lcom/meizu/textinputlayout/TextInputLayout;->mCursorDrawableArray:Ljava/lang/reflect/Field;

    invoke-virtual {v3, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    :cond_5b
    const/4 v3, 0x2

    new-array v3, v3, [Landroid/graphics/drawable/Drawable;

    const/4 v5, 0x0

    aput-object v5, v3, v0

    aput-object v5, v3, v1

    .line 751
    sget-object v5, Lcom/meizu/textinputlayout/TextInputLayout;->mCursorDrawableArray:Ljava/lang/reflect/Field;

    invoke-virtual {v5, p0, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 754
    :cond_68
    sget-object v3, Lcom/meizu/textinputlayout/TextInputLayout;->mUpdateCursorPosition:Ljava/lang/reflect/Method;

    if-nez v3, :cond_8a

    .line 755
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v3, v4, :cond_7b

    const-string v3, "updateCursorsPositions"

    new-array v4, v0, [Ljava/lang/Class;

    .line 756
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/meizu/textinputlayout/TextInputLayout;->mUpdateCursorPosition:Ljava/lang/reflect/Method;

    goto :goto_85

    :cond_7b
    const-string v3, "updateCursorPosition"

    new-array v4, v0, [Ljava/lang/Class;

    .line 758
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/meizu/textinputlayout/TextInputLayout;->mUpdateCursorPosition:Ljava/lang/reflect/Method;

    .line 760
    :goto_85
    sget-object v2, Lcom/meizu/textinputlayout/TextInputLayout;->mUpdateCursorPosition:Ljava/lang/reflect/Method;

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 762
    :cond_8a
    sget-object v1, Lcom/meizu/textinputlayout/TextInputLayout;->mUpdateCursorPosition:Ljava/lang/reflect/Method;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 764
    sget-object p0, Lcom/meizu/textinputlayout/TextInputLayout;->mCursorDrawableRes:Ljava/lang/reflect/Field;

    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_96
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_96} :catch_97

    goto :goto_9b

    :catch_97
    move-exception p0

    .line 766
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_9b
    return-void
.end method

.method private updateEditTextMargin(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;
    .registers 4

    .line 248
    instance-of v0, p1, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v0, :cond_7

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    goto :goto_d

    :cond_7
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    move-object p1, v0

    .line 250
    :goto_d
    iget-object v0, p0, Lcom/meizu/textinputlayout/TextInputLayout;->mTmpPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_18

    .line 251
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/meizu/textinputlayout/TextInputLayout;->mTmpPaint:Landroid/graphics/Paint;

    .line 253
    :cond_18
    iget-object v0, p0, Lcom/meizu/textinputlayout/TextInputLayout;->mTmpPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/meizu/textinputlayout/TextInputLayout;->mCollapsingTextHelper:Lcom/meizu/textinputlayout/CollapsingTextHelper;

    invoke-virtual {v1}, Lcom/meizu/textinputlayout/CollapsingTextHelper;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 254
    iget-object v0, p0, Lcom/meizu/textinputlayout/TextInputLayout;->mTmpPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/meizu/textinputlayout/TextInputLayout;->mCollapsingTextHelper:Lcom/meizu/textinputlayout/CollapsingTextHelper;

    invoke-virtual {v1}, Lcom/meizu/textinputlayout/CollapsingTextHelper;->getCollapsedTextSize()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 255
    iget-object v0, p0, Lcom/meizu/textinputlayout/TextInputLayout;->mTmpPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->ascent()F

    move-result v0

    neg-float v0, v0

    float-to-int v0, v0

    mul-int/lit8 v0, v0, 0xd

    div-int/lit8 v0, v0, 0xa

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 257
    iget v0, p1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iput v0, p0, Lcom/meizu/textinputlayout/TextInputLayout;->mLabelTextHeight:I

    return-object p1
.end method

.method private updateLabelVisibility(Z)V
    .registers 6

    .line 267
    iget-object v0, p0, Lcom/meizu/textinputlayout/TextInputLayout;->mEditText:Landroid/widget/EditText;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    .line 268
    :goto_11
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getDrawableState()[I

    move-result-object v1

    const v2, 0x101009c

    invoke-static {v1, v2}, Lcom/meizu/textinputlayout/TextInputLayout;->arrayContains([II)Z

    move-result v1

    .line 270
    iget-object v2, p0, Lcom/meizu/textinputlayout/TextInputLayout;->mDefaultTextColor:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_41

    iget-object v3, p0, Lcom/meizu/textinputlayout/TextInputLayout;->mFocusedTextColor:Landroid/content/res/ColorStateList;

    if-eqz v3, :cond_41

    .line 271
    iget-object v3, p0, Lcom/meizu/textinputlayout/TextInputLayout;->mCollapsingTextHelper:Lcom/meizu/textinputlayout/CollapsingTextHelper;

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    invoke-virtual {v3, v2}, Lcom/meizu/textinputlayout/CollapsingTextHelper;->setExpandedTextColor(I)V

    .line 272
    iget-object v2, p0, Lcom/meizu/textinputlayout/TextInputLayout;->mCollapsingTextHelper:Lcom/meizu/textinputlayout/CollapsingTextHelper;

    if-eqz v1, :cond_38

    iget-object v3, p0, Lcom/meizu/textinputlayout/TextInputLayout;->mFocusedTextColor:Landroid/content/res/ColorStateList;

    .line 273
    invoke-virtual {v3}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v3

    goto :goto_3e

    :cond_38
    iget-object v3, p0, Lcom/meizu/textinputlayout/TextInputLayout;->mDefaultTextColor:Landroid/content/res/ColorStateList;

    .line 274
    invoke-virtual {v3}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v3

    .line 272
    :goto_3e
    invoke-virtual {v2, v3}, Lcom/meizu/textinputlayout/CollapsingTextHelper;->setCollapsedTextColor(I)V

    :cond_41
    if-nez v0, :cond_4a

    if-eqz v1, :cond_46

    goto :goto_4a

    .line 282
    :cond_46
    invoke-direct {p0, p1}, Lcom/meizu/textinputlayout/TextInputLayout;->expandHint(Z)V

    goto :goto_4d

    .line 279
    :cond_4a
    :goto_4a
    invoke-direct {p0, p1}, Lcom/meizu/textinputlayout/TextInputLayout;->collapseHint(Z)V

    :goto_4d
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 5

    .line 162
    instance-of v0, p1, Landroid/widget/EditText;

    if-eqz v0, :cond_13

    .line 163
    move-object p2, p1

    check-cast p2, Landroid/widget/EditText;

    invoke-virtual {p0, p2}, Lcom/meizu/textinputlayout/TextInputLayout;->setEditText(Landroid/widget/EditText;)V

    const/4 p2, 0x0

    .line 164
    invoke-direct {p0, p3}, Lcom/meizu/textinputlayout/TextInputLayout;->updateEditTextMargin(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p3

    invoke-super {p0, p1, p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_16

    .line 167
    :cond_13
    invoke-super {p0, p1, p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :goto_16
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 3

    .line 510
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->draw(Landroid/graphics/Canvas;)V

    .line 511
    iget-boolean v0, p0, Lcom/meizu/textinputlayout/TextInputLayout;->mLabelEnable:Z

    if-eqz v0, :cond_c

    .line 512
    iget-object p0, p0, Lcom/meizu/textinputlayout/TextInputLayout;->mCollapsingTextHelper:Lcom/meizu/textinputlayout/CollapsingTextHelper;

    invoke-virtual {p0, p1}, Lcom/meizu/textinputlayout/CollapsingTextHelper;->draw(Landroid/graphics/Canvas;)V

    :cond_c
    return-void
.end method

.method public getEditText()Landroid/widget/EditText;
    .registers 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 291
    iget-object p0, p0, Lcom/meizu/textinputlayout/TextInputLayout;->mEditText:Landroid/widget/EditText;

    return-object p0
.end method

.method public getError()Ljava/lang/CharSequence;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 480
    iget-boolean v0, p0, Lcom/meizu/textinputlayout/TextInputLayout;->mErrorEnabled:Z

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/meizu/textinputlayout/TextInputLayout;->mErrorView:Landroid/widget/TextView;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_15

    .line 481
    iget-object p0, p0, Lcom/meizu/textinputlayout/TextInputLayout;->mErrorView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :cond_15
    const/4 p0, 0x0

    return-object p0
.end method

.method public getErrorEnabled()Z
    .registers 1

    .line 706
    iget-boolean p0, p0, Lcom/meizu/textinputlayout/TextInputLayout;->mErrorEnabled:Z

    return p0
.end method

.method public getErrorView()Landroid/widget/TextView;
    .registers 1

    .line 673
    iget-object p0, p0, Lcom/meizu/textinputlayout/TextInputLayout;->mErrorView:Landroid/widget/TextView;

    return-object p0
.end method

.method public getHint()Ljava/lang/CharSequence;
    .registers 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 313
    iget-object p0, p0, Lcom/meizu/textinputlayout/TextInputLayout;->mHint:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getLabelEnable()Z
    .registers 1

    .line 699
    iget-boolean p0, p0, Lcom/meizu/textinputlayout/TextInputLayout;->mLabelEnable:Z

    return p0
.end method

.method public getLabelTextHeight()I
    .registers 1

    .line 682
    iget p0, p0, Lcom/meizu/textinputlayout/TextInputLayout;->mLabelTextHeight:I

    return p0
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 2

    .line 711
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 712
    const-class p0, Lcom/meizu/textinputlayout/TextInputLayout;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 9

    .line 517
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 519
    iget-object p1, p0, Lcom/meizu/textinputlayout/TextInputLayout;->mEditText:Landroid/widget/EditText;

    if-eqz p1, :cond_52

    .line 520
    invoke-virtual {p1}, Landroid/widget/EditText;->getLeft()I

    move-result p1

    iget-object p2, p0, Lcom/meizu/textinputlayout/TextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getCompoundPaddingLeft()I

    move-result p2

    add-int/2addr p1, p2

    .line 521
    iget-object p2, p0, Lcom/meizu/textinputlayout/TextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getRight()I

    move-result p2

    iget-object p4, p0, Lcom/meizu/textinputlayout/TextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p4}, Landroid/widget/EditText;->getCompoundPaddingRight()I

    move-result p4

    sub-int/2addr p2, p4

    .line 523
    iget-object p4, p0, Lcom/meizu/textinputlayout/TextInputLayout;->mCollapsingTextHelper:Lcom/meizu/textinputlayout/CollapsingTextHelper;

    iget-object v0, p0, Lcom/meizu/textinputlayout/TextInputLayout;->mEditText:Landroid/widget/EditText;

    .line 524
    invoke-virtual {v0}, Landroid/widget/EditText;->getTop()I

    move-result v0

    iget-object v1, p0, Lcom/meizu/textinputlayout/TextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getCompoundPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/meizu/textinputlayout/TextInputLayout;->mEditText:Landroid/widget/EditText;

    .line 525
    invoke-virtual {v1}, Landroid/widget/EditText;->getBottom()I

    move-result v1

    iget-object v2, p0, Lcom/meizu/textinputlayout/TextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getCompoundPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    .line 523
    invoke-virtual {p4, p1, v0, p2, v1}, Lcom/meizu/textinputlayout/CollapsingTextHelper;->setExpandedBounds(IIII)V

    .line 529
    iget-object p4, p0, Lcom/meizu/textinputlayout/TextInputLayout;->mCollapsingTextHelper:Lcom/meizu/textinputlayout/CollapsingTextHelper;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v0

    sub-int/2addr p5, p3

    .line 530
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result p3

    sub-int/2addr p5, p3

    .line 529
    invoke-virtual {p4, p1, v0, p2, p5}, Lcom/meizu/textinputlayout/CollapsingTextHelper;->setCollapsedBounds(IIII)V

    .line 532
    iget-object p0, p0, Lcom/meizu/textinputlayout/TextInputLayout;->mCollapsingTextHelper:Lcom/meizu/textinputlayout/CollapsingTextHelper;

    invoke-virtual {p0}, Lcom/meizu/textinputlayout/CollapsingTextHelper;->recalculate()V

    :cond_52
    return-void
.end method

.method public refreshDrawableState()V
    .registers 2

    .line 538
    invoke-super {p0}, Landroid/widget/LinearLayout;->refreshDrawableState()V

    .line 540
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/meizu/textinputlayout/TextInputLayout;->updateLabelVisibility(Z)V

    return-void
.end method

.method public setAnimationDuration(I)V
    .registers 2

    .line 645
    iput p1, p0, Lcom/meizu/textinputlayout/TextInputLayout;->mAnimationDuration:I

    return-void
.end method

.method public setCollapsedTextColor(I)V
    .registers 2

    .line 654
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/textinputlayout/TextInputLayout;->mFocusedTextColor:Landroid/content/res/ColorStateList;

    return-void
.end method

.method public setEditText(Landroid/widget/EditText;)V
    .registers 7

    .line 182
    iget-object v0, p0, Lcom/meizu/textinputlayout/TextInputLayout;->mEditText:Landroid/widget/EditText;

    if-nez v0, :cond_a4

    .line 185
    iput-object p1, p0, Lcom/meizu/textinputlayout/TextInputLayout;->mEditText:Landroid/widget/EditText;

    .line 187
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_17

    .line 188
    iget-object p1, p0, Lcom/meizu/textinputlayout/TextInputLayout;->mEditText:Landroid/widget/EditText;

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setGravity(I)V

    .line 191
    :cond_17
    iget-object p1, p0, Lcom/meizu/textinputlayout/TextInputLayout;->mCollapsingTextHelper:Lcom/meizu/textinputlayout/CollapsingTextHelper;

    iget-object v0, p0, Lcom/meizu/textinputlayout/TextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/meizu/textinputlayout/CollapsingTextHelper;->setTypeface(Landroid/graphics/Typeface;)V

    .line 192
    iget-object p1, p0, Lcom/meizu/textinputlayout/TextInputLayout;->mCollapsingTextHelper:Lcom/meizu/textinputlayout/CollapsingTextHelper;

    iget-object v0, p0, Lcom/meizu/textinputlayout/TextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getTextSize()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/meizu/textinputlayout/CollapsingTextHelper;->setExpandedTextSize(F)V

    .line 193
    iget-object p1, p0, Lcom/meizu/textinputlayout/TextInputLayout;->mCollapsingTextHelper:Lcom/meizu/textinputlayout/CollapsingTextHelper;

    iget-object v0, p0, Lcom/meizu/textinputlayout/TextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getGravity()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/meizu/textinputlayout/CollapsingTextHelper;->setExpandedTextGravity(I)V

    .line 196
    iget-object p1, p0, Lcom/meizu/textinputlayout/TextInputLayout;->mEditText:Landroid/widget/EditText;

    new-instance v0, Lcom/meizu/textinputlayout/TextInputLayout$1;

    invoke-direct {v0, p0}, Lcom/meizu/textinputlayout/TextInputLayout$1;-><init>(Lcom/meizu/textinputlayout/TextInputLayout;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 218
    iget-object p1, p0, Lcom/meizu/textinputlayout/TextInputLayout;->mDefaultTextColor:Landroid/content/res/ColorStateList;

    if-nez p1, :cond_4e

    .line 219
    iget-object p1, p0, Lcom/meizu/textinputlayout/TextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getHintTextColors()Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/textinputlayout/TextInputLayout;->mDefaultTextColor:Landroid/content/res/ColorStateList;

    .line 223
    :cond_4e
    iget-object p1, p0, Lcom/meizu/textinputlayout/TextInputLayout;->mHint:Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_65

    .line 224
    iget-object p1, p0, Lcom/meizu/textinputlayout/TextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/meizu/textinputlayout/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    .line 226
    iget-object p1, p0, Lcom/meizu/textinputlayout/TextInputLayout;->mEditText:Landroid/widget/EditText;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 229
    :cond_65
    iget-object p1, p0, Lcom/meizu/textinputlayout/TextInputLayout;->mErrorView:Landroid/widget/TextView;

    if-eqz p1, :cond_9f

    .line 231
    iget-object p1, p0, Lcom/meizu/textinputlayout/TextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 232
    iget-object v0, p0, Lcom/meizu/textinputlayout/TextInputLayout;->mErrorView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/meizu/textinputlayout/TextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-static {v1}, Landroidx/core/view/ViewCompat;->getPaddingStart(Landroid/view/View;)I

    move-result v1

    iget v2, p0, Lcom/meizu/textinputlayout/TextInputLayout;->mErrorPaddingTop:I

    iget-object v3, p0, Lcom/meizu/textinputlayout/TextInputLayout;->mEditText:Landroid/widget/EditText;

    .line 233
    invoke-static {v3}, Landroidx/core/view/ViewCompat;->getPaddingEnd(Landroid/view/View;)I

    move-result v3

    iget-object v4, p0, Lcom/meizu/textinputlayout/TextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getPaddingBottom()I

    move-result v4

    .line 232
    invoke-static {v0, v1, v2, v3, v4}, Landroidx/core/view/ViewCompat;->setPaddingRelative(Landroid/view/View;IIII)V

    .line 234
    iget-object v0, p0, Lcom/meizu/textinputlayout/TextInputLayout;->mErrorView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 235
    iget v1, p1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 236
    iget p1, p1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 237
    iget-object p1, p0, Lcom/meizu/textinputlayout/TextInputLayout;->mErrorView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_9f
    const/4 p1, 0x0

    .line 241
    invoke-direct {p0, p1}, Lcom/meizu/textinputlayout/TextInputLayout;->updateLabelVisibility(Z)V

    return-void

    .line 183
    :cond_a4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "We already have an EditText, can only have one"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setError(Ljava/lang/CharSequence;)V
    .registers 7
    .param p1  # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 405
    iget-boolean v0, p0, Lcom/meizu/textinputlayout/TextInputLayout;->mErrorEnabled:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_12

    .line 406
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    return-void

    .line 411
    :cond_d
    invoke-virtual {p0, v1}, Lcom/meizu/textinputlayout/TextInputLayout;->setErrorEnabled(Z)V

    move v0, v1

    goto :goto_13

    :cond_12
    move v0, v2

    .line 415
    :goto_13
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_81

    .line 416
    iget-object v3, p0, Lcom/meizu/textinputlayout/TextInputLayout;->mErrorView:Landroid/widget/TextView;

    invoke-static {v3, v4}, Landroidx/core/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 417
    iget-object v3, p0, Lcom/meizu/textinputlayout/TextInputLayout;->mErrorView:Landroid/widget/TextView;

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 418
    iget-object p1, p0, Lcom/meizu/textinputlayout/TextInputLayout;->mErrorView:Landroid/widget/TextView;

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    const/high16 v3, 0x3f800000  # 1.0f

    .line 419
    invoke-virtual {p1, v3}, Landroidx/core/view/ViewPropertyAnimatorCompat;->alpha(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    iget v3, p0, Lcom/meizu/textinputlayout/TextInputLayout;->mAnimationDuration:I

    int-to-long v3, v3

    .line 420
    invoke-virtual {p1, v3, v4}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    sget-object v3, Lcom/meizu/textinputlayout/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 421
    invoke-virtual {p1, v3}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    new-instance v3, Lcom/meizu/textinputlayout/TextInputLayout$2;

    invoke-direct {v3, p0}, Lcom/meizu/textinputlayout/TextInputLayout$2;-><init>(Lcom/meizu/textinputlayout/TextInputLayout;)V

    .line 422
    invoke-virtual {p1, v3}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setListener(Landroidx/core/view/ViewPropertyAnimatorListener;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    .line 428
    invoke-virtual {p1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    if-eqz v0, :cond_bc

    .line 432
    iget-object p1, p0, Lcom/meizu/textinputlayout/TextInputLayout;->mErrorView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result p1

    .line 433
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/meizu/textinputlayout/R$color;->mz_text_input_normal_color:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    const/4 v3, 0x2

    new-array v4, v3, [I

    aput p1, v4, v2

    aput v0, v4, v1

    new-array p1, v3, [[I

    new-array v0, v3, [I

    .line 436
    fill-array-data v0, :array_c2

    aput-object v0, p1, v2

    new-array v0, v2, [I

    aput-object v0, p1, v1

    .line 438
    new-instance v0, Landroid/content/res/ColorStateList;

    invoke-direct {v0, p1, v4}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 439
    iget-object p1, p0, Lcom/meizu/textinputlayout/TextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->setBackgroundTintList(Landroid/view/View;Landroid/content/res/ColorStateList;)V

    .line 440
    iget-object p1, p0, Lcom/meizu/textinputlayout/TextInputLayout;->mEditText:Landroid/widget/EditText;

    sget v0, Lcom/meizu/textinputlayout/R$drawable;->mz_text_cursor_error_color:I

    invoke-direct {p0, p1, v0}, Lcom/meizu/textinputlayout/TextInputLayout;->setCursorDrawable(Landroid/widget/EditText;I)V

    goto :goto_bc

    .line 443
    :cond_81
    iget-object p1, p0, Lcom/meizu/textinputlayout/TextInputLayout;->mErrorView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_bc

    .line 444
    iget-object p1, p0, Lcom/meizu/textinputlayout/TextInputLayout;->mErrorView:Landroid/widget/TextView;

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    .line 445
    invoke-virtual {p1, v4}, Landroidx/core/view/ViewPropertyAnimatorCompat;->alpha(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    iget v0, p0, Lcom/meizu/textinputlayout/TextInputLayout;->mAnimationDuration:I

    int-to-long v0, v0

    .line 446
    invoke-virtual {p1, v0, v1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    sget-object v0, Lcom/meizu/textinputlayout/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 447
    invoke-virtual {p1, v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    new-instance v0, Lcom/meizu/textinputlayout/TextInputLayout$3;

    invoke-direct {v0, p0}, Lcom/meizu/textinputlayout/TextInputLayout$3;-><init>(Lcom/meizu/textinputlayout/TextInputLayout;)V

    .line 448
    invoke-virtual {p1, v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setListener(Landroidx/core/view/ViewPropertyAnimatorListener;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    .line 453
    invoke-virtual {p1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    .line 456
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 457
    iget-object p1, p0, Lcom/meizu/textinputlayout/TextInputLayout;->mEditText:Landroid/widget/EditText;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->setBackgroundTintList(Landroid/view/View;Landroid/content/res/ColorStateList;)V

    .line 458
    iget-object p1, p0, Lcom/meizu/textinputlayout/TextInputLayout;->mEditText:Landroid/widget/EditText;

    iget v0, p0, Lcom/meizu/textinputlayout/TextInputLayout;->mDefaultCursorDrawableRes:I

    invoke-direct {p0, p1, v0}, Lcom/meizu/textinputlayout/TextInputLayout;->setCursorDrawable(Landroid/widget/EditText;I)V

    :cond_bc
    :goto_bc
    const/16 p1, 0x800

    .line 468
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->sendAccessibilityEvent(I)V

    return-void

    :array_c2
    .array-data 4
        0x101009e
        0x101009c
    .end array-data
.end method

.method public setErrorEnabled(Z)V
    .registers 8

    .line 343
    iget-boolean v0, p0, Lcom/meizu/textinputlayout/TextInputLayout;->mErrorEnabled:Z

    if-eq v0, p1, :cond_96

    .line 344
    iget-object v0, p0, Lcom/meizu/textinputlayout/TextInputLayout;->mErrorView:Landroid/widget/TextView;

    if-eqz v0, :cond_f

    .line 345
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->cancel()V

    :cond_f
    if-eqz p1, :cond_79

    .line 349
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/meizu/textinputlayout/TextInputLayout;->mErrorView:Landroid/widget/TextView;

    .line 350
    iget-object v0, p0, Lcom/meizu/textinputlayout/TextInputLayout;->mErrorView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/meizu/textinputlayout/TextInputLayout;->mErrorTextAppearance:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 351
    iget-object v0, p0, Lcom/meizu/textinputlayout/TextInputLayout;->mErrorView:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 353
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_40

    .line 354
    iget-object v0, p0, Lcom/meizu/textinputlayout/TextInputLayout;->mErrorView:Landroid/widget/TextView;

    const v1, 0x800005

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 355
    :cond_40
    iget-object v0, p0, Lcom/meizu/textinputlayout/TextInputLayout;->mErrorView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 357
    iget-object v0, p0, Lcom/meizu/textinputlayout/TextInputLayout;->mEditText:Landroid/widget/EditText;

    if-eqz v0, :cond_94

    .line 360
    invoke-virtual {v0}, Landroid/widget/EditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 361
    iget-object v1, p0, Lcom/meizu/textinputlayout/TextInputLayout;->mErrorView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/meizu/textinputlayout/TextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-static {v2}, Landroidx/core/view/ViewCompat;->getPaddingStart(Landroid/view/View;)I

    move-result v2

    iget v3, p0, Lcom/meizu/textinputlayout/TextInputLayout;->mErrorPaddingTop:I

    iget-object v4, p0, Lcom/meizu/textinputlayout/TextInputLayout;->mEditText:Landroid/widget/EditText;

    .line 362
    invoke-static {v4}, Landroidx/core/view/ViewCompat;->getPaddingEnd(Landroid/view/View;)I

    move-result v4

    const/4 v5, 0x0

    .line 361
    invoke-static {v1, v2, v3, v4, v5}, Landroidx/core/view/ViewCompat;->setPaddingRelative(Landroid/view/View;IIII)V

    .line 363
    iget-object v1, p0, Lcom/meizu/textinputlayout/TextInputLayout;->mErrorView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 364
    iget v2, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 365
    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 366
    iget-object v0, p0, Lcom/meizu/textinputlayout/TextInputLayout;->mErrorView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_94

    .line 369
    :cond_79
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 370
    iget-object v0, p0, Lcom/meizu/textinputlayout/TextInputLayout;->mEditText:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setBackgroundTintList(Landroid/view/View;Landroid/content/res/ColorStateList;)V

    .line 371
    iget-object v0, p0, Lcom/meizu/textinputlayout/TextInputLayout;->mEditText:Landroid/widget/EditText;

    iget v2, p0, Lcom/meizu/textinputlayout/TextInputLayout;->mDefaultCursorDrawableRes:I

    invoke-direct {p0, v0, v2}, Lcom/meizu/textinputlayout/TextInputLayout;->setCursorDrawable(Landroid/widget/EditText;I)V

    .line 376
    iget-object v0, p0, Lcom/meizu/textinputlayout/TextInputLayout;->mErrorView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 377
    iput-object v1, p0, Lcom/meizu/textinputlayout/TextInputLayout;->mErrorView:Landroid/widget/TextView;

    .line 379
    :cond_94
    :goto_94
    iput-boolean p1, p0, Lcom/meizu/textinputlayout/TextInputLayout;->mErrorEnabled:Z

    :cond_96
    return-void
.end method

.method public setErrorPaddingTop(I)V
    .registers 2

    .line 663
    iput p1, p0, Lcom/meizu/textinputlayout/TextInputLayout;->mErrorPaddingTop:I

    .line 664
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method

.method public setHint(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1  # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 300
    iput-object p1, p0, Lcom/meizu/textinputlayout/TextInputLayout;->mHint:Ljava/lang/CharSequence;

    .line 301
    iget-object v0, p0, Lcom/meizu/textinputlayout/TextInputLayout;->mCollapsingTextHelper:Lcom/meizu/textinputlayout/CollapsingTextHelper;

    invoke-virtual {v0, p1}, Lcom/meizu/textinputlayout/CollapsingTextHelper;->setText(Ljava/lang/CharSequence;)V

    const/16 p1, 0x800

    .line 303
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->sendAccessibilityEvent(I)V

    return-void
.end method

.method public setHintAnimationEnabled(Z)V
    .registers 2

    .line 505
    iput-boolean p1, p0, Lcom/meizu/textinputlayout/TextInputLayout;->mHintAnimationEnabled:Z

    return-void
.end method

.method public setHintTextAppearance(I)V
    .registers 3
    .param p1  # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param

    .line 322
    iget-object v0, p0, Lcom/meizu/textinputlayout/TextInputLayout;->mCollapsingTextHelper:Lcom/meizu/textinputlayout/CollapsingTextHelper;

    invoke-virtual {v0, p1}, Lcom/meizu/textinputlayout/CollapsingTextHelper;->setCollapsedTextAppearance(I)V

    .line 323
    iget-object p1, p0, Lcom/meizu/textinputlayout/TextInputLayout;->mCollapsingTextHelper:Lcom/meizu/textinputlayout/CollapsingTextHelper;

    invoke-virtual {p1}, Lcom/meizu/textinputlayout/CollapsingTextHelper;->getCollapsedTextColor()I

    move-result p1

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/textinputlayout/TextInputLayout;->mFocusedTextColor:Landroid/content/res/ColorStateList;

    .line 325
    iget-object p1, p0, Lcom/meizu/textinputlayout/TextInputLayout;->mEditText:Landroid/widget/EditText;

    if-eqz p1, :cond_2d

    const/4 p1, 0x0

    .line 326
    invoke-direct {p0, p1}, Lcom/meizu/textinputlayout/TextInputLayout;->updateLabelVisibility(Z)V

    .line 329
    iget-object p1, p0, Lcom/meizu/textinputlayout/TextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/meizu/textinputlayout/TextInputLayout;->updateEditTextMargin(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p1

    .line 330
    iget-object v0, p0, Lcom/meizu/textinputlayout/TextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 331
    iget-object p0, p0, Lcom/meizu/textinputlayout/TextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->requestLayout()V

    :cond_2d
    return-void
.end method

.method public setLabelEnable(Z)V
    .registers 2

    .line 691
    iput-boolean p1, p0, Lcom/meizu/textinputlayout/TextInputLayout;->mLabelEnable:Z

    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .registers 2
    .param p1  # Landroid/graphics/Typeface;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 177
    iget-object p0, p0, Lcom/meizu/textinputlayout/TextInputLayout;->mCollapsingTextHelper:Lcom/meizu/textinputlayout/CollapsingTextHelper;

    invoke-virtual {p0, p1}, Lcom/meizu/textinputlayout/CollapsingTextHelper;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method
