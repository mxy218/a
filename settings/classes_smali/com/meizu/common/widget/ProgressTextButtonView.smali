.class public Lcom/meizu/common/widget/ProgressTextButtonView;
.super Landroid/widget/FrameLayout;
.source "ProgressTextButtonView.java"


# instance fields
.field private mAlphaAnimator:Landroid/animation/ValueAnimator;

.field private mButton:Lcom/meizu/common/widget/CircularProgressButton;

.field private mIsShowText:Z

.field private mText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 127
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 123
    iput-boolean p1, p0, Lcom/meizu/common/widget/ProgressTextButtonView;->mIsShowText:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 131
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 123
    iput-boolean p1, p0, Lcom/meizu/common/widget/ProgressTextButtonView;->mIsShowText:Z

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/common/widget/ProgressTextButtonView;)Lcom/meizu/common/widget/CircularProgressButton;
    .registers 1

    .line 120
    iget-object p0, p0, Lcom/meizu/common/widget/ProgressTextButtonView;->mButton:Lcom/meizu/common/widget/CircularProgressButton;

    return-object p0
.end method

.method static synthetic access$100(Lcom/meizu/common/widget/ProgressTextButtonView;)Landroid/widget/TextView;
    .registers 1

    .line 120
    iget-object p0, p0, Lcom/meizu/common/widget/ProgressTextButtonView;->mText:Landroid/widget/TextView;

    return-object p0
.end method


# virtual methods
.method public getButton()Lcom/meizu/common/widget/CircularProgressButton;
    .registers 1

    .line 244
    iget-object p0, p0, Lcom/meizu/common/widget/ProgressTextButtonView;->mButton:Lcom/meizu/common/widget/CircularProgressButton;

    return-object p0
.end method

.method public getTextView()Landroid/widget/TextView;
    .registers 1

    .line 236
    iget-object p0, p0, Lcom/meizu/common/widget/ProgressTextButtonView;->mText:Landroid/widget/TextView;

    return-object p0
.end method

.method protected onFinishInflate()V
    .registers 4

    .line 137
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 138
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3c

    const/4 v0, 0x0

    move v1, v0

    .line 142
    :goto_c
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_36

    .line 143
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Lcom/meizu/common/widget/CircularProgressButton;

    if-eqz v2, :cond_23

    .line 144
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/meizu/common/widget/CircularProgressButton;

    iput-object v2, p0, Lcom/meizu/common/widget/ProgressTextButtonView;->mButton:Lcom/meizu/common/widget/CircularProgressButton;

    goto :goto_33

    .line 145
    :cond_23
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Landroid/widget/TextView;

    if-eqz v2, :cond_33

    .line 146
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/meizu/common/widget/ProgressTextButtonView;->mText:Landroid/widget/TextView;

    :cond_33
    :goto_33
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 149
    :cond_36
    iget-boolean v1, p0, Lcom/meizu/common/widget/ProgressTextButtonView;->mIsShowText:Z

    invoke-virtual {p0, v1, v0}, Lcom/meizu/common/widget/ProgressTextButtonView;->showText(ZZ)V

    return-void

    .line 139
    :cond_3c
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "ProgressTextButtonView must has two children"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 2

    .line 249
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 250
    const-class p0, Lcom/meizu/common/widget/ProgressTextButtonView;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public showText(ZZ)V
    .registers 5

    if-nez p2, :cond_29

    const/16 p2, 0x8

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000  # 1.0f

    if-eqz p1, :cond_19

    .line 160
    iget-object p1, p0, Lcom/meizu/common/widget/ProgressTextButtonView;->mText:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 161
    iget-object p1, p0, Lcom/meizu/common/widget/ProgressTextButtonView;->mButton:Lcom/meizu/common/widget/CircularProgressButton;

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setVisibility(I)V

    .line 162
    iget-object p0, p0, Lcom/meizu/common/widget/ProgressTextButtonView;->mText:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_6a

    .line 164
    :cond_19
    iget-object p1, p0, Lcom/meizu/common/widget/ProgressTextButtonView;->mButton:Lcom/meizu/common/widget/CircularProgressButton;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setAlpha(F)V

    .line 165
    iget-object p1, p0, Lcom/meizu/common/widget/ProgressTextButtonView;->mButton:Lcom/meizu/common/widget/CircularProgressButton;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 166
    iget-object p0, p0, Lcom/meizu/common/widget/ProgressTextButtonView;->mText:Landroid/widget/TextView;

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_6a

    :cond_29
    if-eqz p1, :cond_33

    .line 169
    iget-object p2, p0, Lcom/meizu/common/widget/ProgressTextButtonView;->mText:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getVisibility()I

    move-result p2

    if-eqz p2, :cond_3d

    :cond_33
    if-nez p1, :cond_3e

    iget-object p2, p0, Lcom/meizu/common/widget/ProgressTextButtonView;->mButton:Lcom/meizu/common/widget/CircularProgressButton;

    invoke-virtual {p2}, Landroid/widget/Button;->getVisibility()I

    move-result p2

    if-nez p2, :cond_3e

    :cond_3d
    return-void

    :cond_3e
    const/4 p2, 0x2

    new-array p2, p2, [F

    .line 172
    fill-array-data p2, :array_6c

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    iput-object p2, p0, Lcom/meizu/common/widget/ProgressTextButtonView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    .line 173
    iget-object p2, p0, Lcom/meizu/common/widget/ProgressTextButtonView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x64

    invoke-virtual {p2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 174
    iget-object p2, p0, Lcom/meizu/common/widget/ProgressTextButtonView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/meizu/common/widget/ProgressTextButtonView$1;

    invoke-direct {v0, p0, p1}, Lcom/meizu/common/widget/ProgressTextButtonView$1;-><init>(Lcom/meizu/common/widget/ProgressTextButtonView;Z)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 187
    iget-object p2, p0, Lcom/meizu/common/widget/ProgressTextButtonView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/meizu/common/widget/ProgressTextButtonView$2;

    invoke-direct {v0, p0, p1}, Lcom/meizu/common/widget/ProgressTextButtonView$2;-><init>(Lcom/meizu/common/widget/ProgressTextButtonView;Z)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 214
    iget-object p0, p0, Lcom/meizu/common/widget/ProgressTextButtonView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :goto_6a
    return-void

    nop

    :array_6c
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method
