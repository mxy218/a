.class Lflyme/support/v7/app/AlertController;
.super Ljava/lang/Object;
.source "AlertController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lflyme/support/v7/app/AlertController$CheckedItemAdapter;,
        Lflyme/support/v7/app/AlertController$AlertParams;,
        Lflyme/support/v7/app/AlertController$RecycleListView;,
        Lflyme/support/v7/app/AlertController$ButtonHandler;
    }
.end annotation


# instance fields
.field mAdapter:Landroid/widget/ListAdapter;

.field private mAlertDialogLayout:I

.field private final mButtonHandler:Landroid/view/View$OnClickListener;

.field private final mButtonIconDimen:I

.field mButtonNegative:Landroid/widget/Button;

.field private mButtonNegativeIcon:Landroid/graphics/drawable/Drawable;

.field mButtonNegativeMessage:Landroid/os/Message;

.field private mButtonNegativeText:Ljava/lang/CharSequence;

.field mButtonNeutral:Landroid/widget/Button;

.field private mButtonNeutralIcon:Landroid/graphics/drawable/Drawable;

.field mButtonNeutralMessage:Landroid/os/Message;

.field private mButtonNeutralText:Ljava/lang/CharSequence;

.field private mButtonPanelLayoutHint:I

.field private mButtonPanelSideLayout:I

.field mButtonPositive:Landroid/widget/Button;

.field private mButtonPositiveIcon:Landroid/graphics/drawable/Drawable;

.field mButtonPositiveMessage:Landroid/os/Message;

.field private mButtonPositiveText:Ljava/lang/CharSequence;

.field mCheckedItem:I

.field private final mContext:Landroid/content/Context;

.field private mCustomTitleView:Landroid/view/View;

.field final mDialog:Lflyme/support/v7/app/AppCompatDialog;

.field mHandler:Landroid/os/Handler;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIconId:I

.field private mIconView:Landroid/widget/ImageView;

.field mListItemLayout:I

.field mListLayout:I

.field mListView:Landroid/widget/ListView;

.field private mMessage:Ljava/lang/CharSequence;

.field private mMessageView:Landroid/widget/TextView;

.field mMultiChoiceItemLayout:I

.field mScrollView:Landroidx/core/widget/NestedScrollView;

.field private mShowTitle:Z

.field mSingleChoiceItemLayout:I

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleView:Landroid/widget/TextView;

.field private mView:Landroid/view/View;

.field private mViewLayoutResId:I

.field private mViewSpacingBottom:I

.field private mViewSpacingLeft:I

.field private mViewSpacingRight:I

.field private mViewSpacingSpecified:Z

.field private mViewSpacingTop:I

.field private final mWindow:Landroid/view/Window;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lflyme/support/v7/app/AppCompatDialog;Landroid/view/Window;)V
    .registers 7

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 62
    iput-boolean v0, p0, Lflyme/support/v7/app/AlertController;->mViewSpacingSpecified:Z

    .line 81
    iput v0, p0, Lflyme/support/v7/app/AlertController;->mIconId:I

    const/4 v1, -0x1

    .line 91
    iput v1, p0, Lflyme/support/v7/app/AlertController;->mCheckedItem:I

    .line 102
    iput v0, p0, Lflyme/support/v7/app/AlertController;->mButtonPanelLayoutHint:I

    .line 106
    new-instance v1, Lflyme/support/v7/app/AlertController$1;

    invoke-direct {v1, p0}, Lflyme/support/v7/app/AlertController$1;-><init>(Lflyme/support/v7/app/AlertController;)V

    iput-object v1, p0, Lflyme/support/v7/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    .line 162
    iput-object p1, p0, Lflyme/support/v7/app/AlertController;->mContext:Landroid/content/Context;

    .line 163
    iput-object p2, p0, Lflyme/support/v7/app/AlertController;->mDialog:Lflyme/support/v7/app/AppCompatDialog;

    .line 164
    iput-object p3, p0, Lflyme/support/v7/app/AlertController;->mWindow:Landroid/view/Window;

    .line 165
    new-instance p3, Lflyme/support/v7/app/AlertController$ButtonHandler;

    invoke-direct {p3, p2}, Lflyme/support/v7/app/AlertController$ButtonHandler;-><init>(Landroid/content/DialogInterface;)V

    iput-object p3, p0, Lflyme/support/v7/app/AlertController;->mHandler:Landroid/os/Handler;

    .line 167
    sget-object p3, Lflyme/support/v7/appcompat/R$styleable;->AlertDialog:[I

    sget v1, Lflyme/support/v7/appcompat/R$attr;->alertDialogStyle:I

    const/4 v2, 0x0

    invoke-virtual {p1, v2, p3, v1, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 169
    sget p3, Lflyme/support/v7/appcompat/R$styleable;->AlertDialog_android_layout:I

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lflyme/support/v7/app/AlertController;->mAlertDialogLayout:I

    .line 170
    sget p3, Lflyme/support/v7/appcompat/R$styleable;->AlertDialog_buttonPanelSideLayout:I

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lflyme/support/v7/app/AlertController;->mButtonPanelSideLayout:I

    .line 172
    sget p3, Lflyme/support/v7/appcompat/R$styleable;->AlertDialog_listLayout:I

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lflyme/support/v7/app/AlertController;->mListLayout:I

    .line 173
    sget p3, Lflyme/support/v7/appcompat/R$styleable;->AlertDialog_multiChoiceItemLayout:I

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lflyme/support/v7/app/AlertController;->mMultiChoiceItemLayout:I

    .line 174
    sget p3, Lflyme/support/v7/appcompat/R$styleable;->AlertDialog_singleChoiceItemLayout:I

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lflyme/support/v7/app/AlertController;->mSingleChoiceItemLayout:I

    .line 175
    sget p3, Lflyme/support/v7/appcompat/R$styleable;->AlertDialog_listItemLayout:I

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lflyme/support/v7/app/AlertController;->mListItemLayout:I

    const/4 p3, 0x1

    .line 177
    iput-boolean p3, p0, Lflyme/support/v7/app/AlertController;->mShowTitle:Z

    .line 178
    sget v1, Lflyme/support/v7/appcompat/R$styleable;->AlertDialog_mzButtonIconDimen:I

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lflyme/support/v7/app/AlertController;->mButtonIconDimen:I

    .line 180
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 183
    invoke-virtual {p2, p3}, Lflyme/support/v7/app/AppCompatDialog;->supportRequestWindowFeature(I)Z

    return-void
.end method

.method static canTextInput(Landroid/view/View;)Z
    .registers 5

    .line 187
    invoke-virtual {p0}, Landroid/view/View;->onCheckIsTextEditor()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    .line 191
    :cond_8
    instance-of v0, p0, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    if-nez v0, :cond_e

    return v2

    .line 195
    :cond_e
    check-cast p0, Landroid/view/ViewGroup;

    .line 196
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    :cond_14
    if-lez v0, :cond_23

    add-int/lit8 v0, v0, -0x1

    .line 199
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 200
    invoke-static {v3}, Lflyme/support/v7/app/AlertController;->canTextInput(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_14

    return v1

    :cond_23
    return v2
.end method

.method private centerButton(Landroid/widget/Button;)V
    .registers 3

    .line 789
    invoke-virtual {p1}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, 0x1

    .line 790
    iput v0, p0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/high16 v0, 0x3f000000  # 0.5f

    .line 791
    iput v0, p0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 792
    invoke-virtual {p1, p0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static manageScrollIndicators(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x4

    if-eqz p1, :cond_11

    const/4 v2, -0x1

    .line 711
    invoke-virtual {p0, v2}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v2

    if-eqz v2, :cond_d

    move v2, v0

    goto :goto_e

    :cond_d
    move v2, v1

    :goto_e
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_11
    if-eqz p2, :cond_1f

    const/4 p1, 0x1

    .line 714
    invoke-virtual {p0, p1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result p0

    if-eqz p0, :cond_1b

    goto :goto_1c

    :cond_1b
    move v0, v1

    :goto_1c
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1f
    return-void
.end method

.method private resolvePanel(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;
    .registers 4
    .param p1  # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2  # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-nez p1, :cond_f

    .line 417
    instance-of p0, p2, Landroid/view/ViewStub;

    if-eqz p0, :cond_c

    .line 418
    check-cast p2, Landroid/view/ViewStub;

    invoke-virtual {p2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p2

    .line 421
    :cond_c
    check-cast p2, Landroid/view/ViewGroup;

    return-object p2

    :cond_f
    if-eqz p2, :cond_1e

    .line 426
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    .line 427
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1e

    .line 428
    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 433
    :cond_1e
    instance-of p0, p1, Landroid/view/ViewStub;

    if-eqz p0, :cond_28

    .line 434
    check-cast p1, Landroid/view/ViewStub;

    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p1

    .line 437
    :cond_28
    check-cast p1, Landroid/view/ViewGroup;

    return-object p1
.end method

.method private selectContentView()I
    .registers 4

    .line 215
    iget v0, p0, Lflyme/support/v7/app/AlertController;->mButtonPanelSideLayout:I

    if-nez v0, :cond_7

    .line 216
    iget p0, p0, Lflyme/support/v7/app/AlertController;->mAlertDialogLayout:I

    return p0

    .line 218
    :cond_7
    iget v1, p0, Lflyme/support/v7/app/AlertController;->mButtonPanelLayoutHint:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_d

    return v0

    .line 221
    :cond_d
    iget p0, p0, Lflyme/support/v7/app/AlertController;->mAlertDialogLayout:I

    return p0
.end method

.method private setScrollIndicators(Landroid/view/ViewGroup;Landroid/view/View;II)V
    .registers 9

    .line 529
    iget-object v0, p0, Lflyme/support/v7/app/AlertController;->mWindow:Landroid/view/Window;

    sget v1, Lflyme/support/v7/appcompat/R$id;->scrollIndicatorUp:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 530
    iget-object v1, p0, Lflyme/support/v7/app/AlertController;->mWindow:Landroid/view/Window;

    sget v2, Lflyme/support/v7/appcompat/R$id;->scrollIndicatorDown:I

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 532
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_24

    .line 534
    invoke-static {p2, p3, p4}, Landroidx/core/view/ViewCompat;->setScrollIndicators(Landroid/view/View;II)V

    if-eqz v0, :cond_1e

    .line 537
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1e
    if-eqz v1, :cond_78

    .line 540
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_78

    :cond_24
    const/4 p2, 0x0

    if-eqz v0, :cond_2f

    and-int/lit8 p4, p3, 0x1

    if-nez p4, :cond_2f

    .line 545
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    move-object v0, p2

    :cond_2f
    if-eqz v1, :cond_39

    and-int/lit8 p3, p3, 0x2

    if-nez p3, :cond_39

    .line 549
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_3a

    :cond_39
    move-object p2, v1

    :goto_3a
    if-nez v0, :cond_3e

    if-eqz p2, :cond_78

    .line 557
    :cond_3e
    iget-object p3, p0, Lflyme/support/v7/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    if-eqz p3, :cond_57

    .line 559
    iget-object p1, p0, Lflyme/support/v7/app/AlertController;->mScrollView:Landroidx/core/widget/NestedScrollView;

    new-instance p3, Lflyme/support/v7/app/AlertController$2;

    invoke-direct {p3, p0, v0, p2}, Lflyme/support/v7/app/AlertController$2;-><init>(Lflyme/support/v7/app/AlertController;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {p1, p3}, Landroidx/core/widget/NestedScrollView;->setOnScrollChangeListener(Landroidx/core/widget/NestedScrollView$OnScrollChangeListener;)V

    .line 566
    iget-object p1, p0, Lflyme/support/v7/app/AlertController;->mScrollView:Landroidx/core/widget/NestedScrollView;

    new-instance p3, Lflyme/support/v7/app/AlertController$3;

    invoke-direct {p3, p0, v0, p2}, Lflyme/support/v7/app/AlertController$3;-><init>(Lflyme/support/v7/app/AlertController;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {p1, p3}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    goto :goto_78

    .line 572
    :cond_57
    iget-object p3, p0, Lflyme/support/v7/app/AlertController;->mListView:Landroid/widget/ListView;

    if-eqz p3, :cond_6e

    .line 574
    new-instance p1, Lflyme/support/v7/app/AlertController$4;

    invoke-direct {p1, p0, v0, p2}, Lflyme/support/v7/app/AlertController$4;-><init>(Lflyme/support/v7/app/AlertController;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {p3, p1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 585
    iget-object p1, p0, Lflyme/support/v7/app/AlertController;->mListView:Landroid/widget/ListView;

    new-instance p3, Lflyme/support/v7/app/AlertController$5;

    invoke-direct {p3, p0, v0, p2}, Lflyme/support/v7/app/AlertController$5;-><init>(Lflyme/support/v7/app/AlertController;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {p1, p3}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_78

    :cond_6e
    if-eqz v0, :cond_73

    .line 594
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_73
    if-eqz p2, :cond_78

    .line 597
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_78
    :goto_78
    return-void
.end method

.method private setupButtons(Landroid/view/ViewGroup;)V
    .registers 9

    const v0, 0x1020019

    .line 723
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lflyme/support/v7/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    .line 724
    iget-object v0, p0, Lflyme/support/v7/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    iget-object v1, p0, Lflyme/support/v7/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 726
    iget-object v0, p0, Lflyme/support/v7/app/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x8

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lflyme/support/v7/app/AlertController;->mButtonPositiveIcon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_2a

    .line 727
    iget-object v0, p0, Lflyme/support/v7/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    move v0, v4

    goto :goto_47

    .line 729
    :cond_2a
    iget-object v0, p0, Lflyme/support/v7/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    iget-object v5, p0, Lflyme/support/v7/app/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 730
    iget-object v0, p0, Lflyme/support/v7/app/AlertController;->mButtonPositiveIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_41

    .line 731
    iget v5, p0, Lflyme/support/v7/app/AlertController;->mButtonIconDimen:I

    invoke-virtual {v0, v4, v4, v5, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 732
    iget-object v0, p0, Lflyme/support/v7/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    iget-object v5, p0, Lflyme/support/v7/app/AlertController;->mButtonPositiveIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v5, v3, v3, v3}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 734
    :cond_41
    iget-object v0, p0, Lflyme/support/v7/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    move v0, v1

    :goto_47
    const v5, 0x102001a

    .line 738
    invoke-virtual {p1, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lflyme/support/v7/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    .line 739
    iget-object v5, p0, Lflyme/support/v7/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    iget-object v6, p0, Lflyme/support/v7/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 741
    iget-object v5, p0, Lflyme/support/v7/app/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6b

    iget-object v5, p0, Lflyme/support/v7/app/AlertController;->mButtonNegativeIcon:Landroid/graphics/drawable/Drawable;

    if-nez v5, :cond_6b

    .line 742
    iget-object v5, p0, Lflyme/support/v7/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v5, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_89

    .line 744
    :cond_6b
    iget-object v5, p0, Lflyme/support/v7/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    iget-object v6, p0, Lflyme/support/v7/app/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 745
    iget-object v5, p0, Lflyme/support/v7/app/AlertController;->mButtonNegativeIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_82

    .line 746
    iget v6, p0, Lflyme/support/v7/app/AlertController;->mButtonIconDimen:I

    invoke-virtual {v5, v4, v4, v6, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 747
    iget-object v5, p0, Lflyme/support/v7/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    iget-object v6, p0, Lflyme/support/v7/app/AlertController;->mButtonNegativeIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6, v3, v3, v3}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 749
    :cond_82
    iget-object v5, p0, Lflyme/support/v7/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v5, v4}, Landroid/widget/Button;->setVisibility(I)V

    or-int/lit8 v0, v0, 0x2

    :goto_89
    const v5, 0x102001b

    .line 753
    invoke-virtual {p1, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lflyme/support/v7/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    .line 754
    iget-object v5, p0, Lflyme/support/v7/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    iget-object v6, p0, Lflyme/support/v7/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 756
    iget-object v5, p0, Lflyme/support/v7/app/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_ad

    iget-object v5, p0, Lflyme/support/v7/app/AlertController;->mButtonNeutralIcon:Landroid/graphics/drawable/Drawable;

    if-nez v5, :cond_ad

    .line 757
    iget-object v3, p0, Lflyme/support/v7/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_cb

    .line 759
    :cond_ad
    iget-object v5, p0, Lflyme/support/v7/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    iget-object v6, p0, Lflyme/support/v7/app/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 760
    iget-object v5, p0, Lflyme/support/v7/app/AlertController;->mButtonPositiveIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_c4

    .line 761
    iget v6, p0, Lflyme/support/v7/app/AlertController;->mButtonIconDimen:I

    invoke-virtual {v5, v4, v4, v6, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 762
    iget-object v5, p0, Lflyme/support/v7/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    iget-object v6, p0, Lflyme/support/v7/app/AlertController;->mButtonPositiveIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6, v3, v3, v3}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 764
    :cond_c4
    iget-object v3, p0, Lflyme/support/v7/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setVisibility(I)V

    or-int/lit8 v0, v0, 0x4

    .line 768
    :goto_cb
    iget-object v3, p0, Lflyme/support/v7/app/AlertController;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lflyme/support/v7/app/AlertController;->shouldCenterSingleButton(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_ec

    if-ne v0, v1, :cond_db

    .line 774
    iget-object v3, p0, Lflyme/support/v7/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-direct {p0, v3}, Lflyme/support/v7/app/AlertController;->centerButton(Landroid/widget/Button;)V

    goto :goto_ec

    :cond_db
    const/4 v3, 0x2

    if-ne v0, v3, :cond_e4

    .line 776
    iget-object v3, p0, Lflyme/support/v7/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-direct {p0, v3}, Lflyme/support/v7/app/AlertController;->centerButton(Landroid/widget/Button;)V

    goto :goto_ec

    :cond_e4
    const/4 v3, 0x4

    if-ne v0, v3, :cond_ec

    .line 778
    iget-object v3, p0, Lflyme/support/v7/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-direct {p0, v3}, Lflyme/support/v7/app/AlertController;->centerButton(Landroid/widget/Button;)V

    :cond_ec
    :goto_ec
    if-eqz v0, :cond_ef

    goto :goto_f0

    :cond_ef
    move v1, v4

    :goto_f0
    if-nez v1, :cond_f5

    .line 784
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_f5
    return-void
.end method

.method private setupContent(Landroid/view/ViewGroup;)V
    .registers 5

    .line 682
    iget-object v0, p0, Lflyme/support/v7/app/AlertController;->mWindow:Landroid/view/Window;

    sget v1, Lflyme/support/v7/appcompat/R$id;->scrollView:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/core/widget/NestedScrollView;

    iput-object v0, p0, Lflyme/support/v7/app/AlertController;->mScrollView:Landroidx/core/widget/NestedScrollView;

    .line 683
    iget-object v0, p0, Lflyme/support/v7/app/AlertController;->mScrollView:Landroidx/core/widget/NestedScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 684
    iget-object v0, p0, Lflyme/support/v7/app/AlertController;->mScrollView:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v0, v1}, Landroidx/core/widget/NestedScrollView;->setNestedScrollingEnabled(Z)V

    const v0, 0x102000b

    .line 687
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lflyme/support/v7/app/AlertController;->mMessageView:Landroid/widget/TextView;

    .line 688
    iget-object v0, p0, Lflyme/support/v7/app/AlertController;->mMessageView:Landroid/widget/TextView;

    if-nez v0, :cond_27

    return-void

    .line 692
    :cond_27
    iget-object v1, p0, Lflyme/support/v7/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    if-eqz v1, :cond_2f

    .line 693
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5f

    :cond_2f
    const/16 v1, 0x8

    .line 695
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 696
    iget-object v0, p0, Lflyme/support/v7/app/AlertController;->mScrollView:Landroidx/core/widget/NestedScrollView;

    iget-object v2, p0, Lflyme/support/v7/app/AlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 698
    iget-object v0, p0, Lflyme/support/v7/app/AlertController;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_5c

    .line 699
    iget-object p1, p0, Lflyme/support/v7/app/AlertController;->mScrollView:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 700
    iget-object v0, p0, Lflyme/support/v7/app/AlertController;->mScrollView:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 701
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 702
    iget-object p0, p0, Lflyme/support/v7/app/AlertController;->mListView:Landroid/widget/ListView;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p0, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_5f

    .line 704
    :cond_5c
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_5f
    return-void
.end method

.method private setupCustomContent(Landroid/view/ViewGroup;)V
    .registers 7

    .line 606
    iget-object v0, p0, Lflyme/support/v7/app/AlertController;->mView:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    goto :goto_18

    .line 608
    :cond_6
    iget v0, p0, Lflyme/support/v7/app/AlertController;->mViewLayoutResId:I

    if-eqz v0, :cond_17

    .line 609
    iget-object v0, p0, Lflyme/support/v7/app/AlertController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 610
    iget v2, p0, Lflyme/support/v7/app/AlertController;->mViewLayoutResId:I

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    :goto_18
    if-eqz v0, :cond_1b

    const/4 v1, 0x1

    :cond_1b
    if-eqz v1, :cond_23

    .line 616
    invoke-static {v0}, Lflyme/support/v7/app/AlertController;->canTextInput(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_2a

    .line 617
    :cond_23
    iget-object v2, p0, Lflyme/support/v7/app/AlertController;->mWindow:Landroid/view/Window;

    const/high16 v3, 0x20000

    invoke-virtual {v2, v3, v3}, Landroid/view/Window;->setFlags(II)V

    :cond_2a
    if-eqz v1, :cond_5c

    .line 621
    iget-object v1, p0, Lflyme/support/v7/app/AlertController;->mWindow:Landroid/view/Window;

    sget v2, Lflyme/support/v7/appcompat/R$id;->custom:I

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 622
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 624
    iget-boolean v0, p0, Lflyme/support/v7/app/AlertController;->mViewSpacingSpecified:Z

    if-eqz v0, :cond_4e

    .line 625
    iget v0, p0, Lflyme/support/v7/app/AlertController;->mViewSpacingLeft:I

    iget v2, p0, Lflyme/support/v7/app/AlertController;->mViewSpacingTop:I

    iget v3, p0, Lflyme/support/v7/app/AlertController;->mViewSpacingRight:I

    iget v4, p0, Lflyme/support/v7/app/AlertController;->mViewSpacingBottom:I

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 628
    :cond_4e
    iget-object p0, p0, Lflyme/support/v7/app/AlertController;->mListView:Landroid/widget/ListView;

    if-eqz p0, :cond_61

    .line 629
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    const/4 p1, 0x0

    iput p1, p0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->weight:F

    goto :goto_61

    :cond_5c
    const/16 p0, 0x8

    .line 632
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_61
    :goto_61
    return-void
.end method

.method private setupTitle(Landroid/view/ViewGroup;)V
    .registers 7

    .line 637
    iget-object v0, p0, Lflyme/support/v7/app/AlertController;->mCustomTitleView:Landroid/view/View;

    const/16 v1, 0x8

    if-eqz v0, :cond_20

    .line 639
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v0, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 641
    iget-object v2, p0, Lflyme/support/v7/app/AlertController;->mCustomTitleView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 644
    iget-object p0, p0, Lflyme/support/v7/app/AlertController;->mWindow:Landroid/view/Window;

    sget p1, Lflyme/support/v7/appcompat/R$id;->title_template:I

    invoke-virtual {p0, p1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .line 645
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_98

    .line 647
    :cond_20
    iget-object v0, p0, Lflyme/support/v7/app/AlertController;->mWindow:Landroid/view/Window;

    const v2, 0x1020006

    invoke-virtual {v0, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lflyme/support/v7/app/AlertController;->mIconView:Landroid/widget/ImageView;

    .line 649
    iget-object v0, p0, Lflyme/support/v7/app/AlertController;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_85

    .line 650
    iget-boolean v0, p0, Lflyme/support/v7/app/AlertController;->mShowTitle:Z

    if-eqz v0, :cond_85

    .line 652
    iget-object p1, p0, Lflyme/support/v7/app/AlertController;->mWindow:Landroid/view/Window;

    sget v0, Lflyme/support/v7/appcompat/R$id;->alertTitle:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lflyme/support/v7/app/AlertController;->mTitleView:Landroid/widget/TextView;

    .line 653
    iget-object p1, p0, Lflyme/support/v7/app/AlertController;->mTitleView:Landroid/widget/TextView;

    iget-object v0, p0, Lflyme/support/v7/app/AlertController;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 658
    iget p1, p0, Lflyme/support/v7/app/AlertController;->mIconId:I

    if-eqz p1, :cond_58

    .line 659
    iget-object p0, p0, Lflyme/support/v7/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_98

    .line 660
    :cond_58
    iget-object p1, p0, Lflyme/support/v7/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_62

    .line 661
    iget-object p0, p0, Lflyme/support/v7/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_98

    .line 665
    :cond_62
    iget-object p1, p0, Lflyme/support/v7/app/AlertController;->mTitleView:Landroid/widget/TextView;

    iget-object v0, p0, Lflyme/support/v7/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v0

    iget-object v2, p0, Lflyme/support/v7/app/AlertController;->mIconView:Landroid/widget/ImageView;

    .line 666
    invoke-virtual {v2}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lflyme/support/v7/app/AlertController;->mIconView:Landroid/widget/ImageView;

    .line 667
    invoke-virtual {v3}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v3

    iget-object v4, p0, Lflyme/support/v7/app/AlertController;->mIconView:Landroid/widget/ImageView;

    .line 668
    invoke-virtual {v4}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v4

    .line 665
    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 669
    iget-object p0, p0, Lflyme/support/v7/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_98

    .line 673
    :cond_85
    iget-object v0, p0, Lflyme/support/v7/app/AlertController;->mWindow:Landroid/view/Window;

    sget v2, Lflyme/support/v7/appcompat/R$id;->title_template:I

    invoke-virtual {v0, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 674
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 675
    iget-object p0, p0, Lflyme/support/v7/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 676
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_98
    return-void
.end method

.method private setupView()V
    .registers 10

    .line 441
    iget-object v0, p0, Lflyme/support/v7/app/AlertController;->mWindow:Landroid/view/Window;

    sget v1, Lflyme/support/v7/appcompat/R$id;->parentPanel:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 442
    sget v1, Lflyme/support/v7/appcompat/R$id;->topPanel:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 443
    sget v2, Lflyme/support/v7/appcompat/R$id;->contentPanel:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 444
    sget v3, Lflyme/support/v7/appcompat/R$id;->buttonPanel:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 448
    sget v4, Lflyme/support/v7/appcompat/R$id;->customPanel:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 449
    invoke-direct {p0, v0}, Lflyme/support/v7/app/AlertController;->setupCustomContent(Landroid/view/ViewGroup;)V

    .line 451
    sget v4, Lflyme/support/v7/appcompat/R$id;->topPanel:I

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 452
    sget v5, Lflyme/support/v7/appcompat/R$id;->contentPanel:I

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 453
    sget v6, Lflyme/support/v7/appcompat/R$id;->buttonPanel:I

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 456
    invoke-direct {p0, v4, v1}, Lflyme/support/v7/app/AlertController;->resolvePanel(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v1

    .line 457
    invoke-direct {p0, v5, v2}, Lflyme/support/v7/app/AlertController;->resolvePanel(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v2

    .line 458
    invoke-direct {p0, v6, v3}, Lflyme/support/v7/app/AlertController;->resolvePanel(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v3

    .line 460
    invoke-direct {p0, v2}, Lflyme/support/v7/app/AlertController;->setupContent(Landroid/view/ViewGroup;)V

    .line 461
    invoke-direct {p0, v3}, Lflyme/support/v7/app/AlertController;->setupButtons(Landroid/view/ViewGroup;)V

    .line 462
    invoke-direct {p0, v1}, Lflyme/support/v7/app/AlertController;->setupTitle(Landroid/view/ViewGroup;)V

    const/16 v4, 0x8

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v0, :cond_5a

    .line 464
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-eq v0, v4, :cond_5a

    move v0, v5

    goto :goto_5b

    :cond_5a
    move v0, v6

    :goto_5b
    if-eqz v1, :cond_65

    .line 465
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v7

    if-eq v7, v4, :cond_65

    move v7, v5

    goto :goto_66

    :cond_65
    move v7, v6

    :goto_66
    if-eqz v3, :cond_70

    .line 466
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v3

    if-eq v3, v4, :cond_70

    move v3, v5

    goto :goto_71

    :cond_70
    move v3, v6

    :goto_71
    if-nez v3, :cond_80

    if-eqz v2, :cond_80

    .line 471
    sget v4, Lflyme/support/v7/appcompat/R$id;->textSpacerNoButtons:I

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_80

    .line 473
    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_80
    if-eqz v7, :cond_9e

    .line 480
    iget-object v4, p0, Lflyme/support/v7/app/AlertController;->mScrollView:Landroidx/core/widget/NestedScrollView;

    if-eqz v4, :cond_89

    .line 481
    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setClipToPadding(Z)V

    :cond_89
    const/4 v4, 0x0

    .line 486
    iget-object v8, p0, Lflyme/support/v7/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    if-nez v8, :cond_92

    iget-object v8, p0, Lflyme/support/v7/app/AlertController;->mListView:Landroid/widget/ListView;

    if-eqz v8, :cond_98

    .line 487
    :cond_92
    sget v4, Lflyme/support/v7/appcompat/R$id;->titleDividerNoCustom:I

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    :cond_98
    if-eqz v4, :cond_ab

    .line 491
    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_ab

    :cond_9e
    if-eqz v2, :cond_ab

    .line 495
    sget v1, Lflyme/support/v7/appcompat/R$id;->textSpacerNoTitle:I

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_ab

    .line 497
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 502
    :cond_ab
    :goto_ab
    iget-object v1, p0, Lflyme/support/v7/app/AlertController;->mListView:Landroid/widget/ListView;

    instance-of v4, v1, Lflyme/support/v7/app/AlertController$RecycleListView;

    if-eqz v4, :cond_b6

    .line 503
    check-cast v1, Lflyme/support/v7/app/AlertController$RecycleListView;

    invoke-virtual {v1, v7, v3}, Lflyme/support/v7/app/AlertController$RecycleListView;->setHasDecor(ZZ)V

    :cond_b6
    if-nez v0, :cond_ca

    .line 508
    iget-object v0, p0, Lflyme/support/v7/app/AlertController;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_bd

    goto :goto_bf

    :cond_bd
    iget-object v0, p0, Lflyme/support/v7/app/AlertController;->mScrollView:Landroidx/core/widget/NestedScrollView;

    :goto_bf
    if-eqz v0, :cond_ca

    if-eqz v3, :cond_c4

    const/4 v6, 0x2

    :cond_c4
    or-int v1, v7, v6

    const/4 v3, 0x3

    .line 512
    invoke-direct {p0, v2, v0, v1, v3}, Lflyme/support/v7/app/AlertController;->setScrollIndicators(Landroid/view/ViewGroup;Landroid/view/View;II)V

    .line 516
    :cond_ca
    iget-object v0, p0, Lflyme/support/v7/app/AlertController;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_e0

    .line 517
    iget-object v1, p0, Lflyme/support/v7/app/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_e0

    .line 518
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 519
    iget p0, p0, Lflyme/support/v7/app/AlertController;->mCheckedItem:I

    const/4 v1, -0x1

    if-le p0, v1, :cond_e0

    .line 521
    invoke-virtual {v0, p0, v5}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 522
    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setSelection(I)V

    :cond_e0
    return-void
.end method

.method private static shouldCenterSingleButton(Landroid/content/Context;)Z
    .registers 4

    .line 156
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 157
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    sget v1, Lflyme/support/v7/appcompat/R$attr;->alertDialogCenterButtons:I

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 158
    iget p0, v0, Landroid/util/TypedValue;->data:I

    if-eqz p0, :cond_14

    goto :goto_15

    :cond_14
    const/4 v2, 0x0

    :goto_15
    return v2
.end method


# virtual methods
.method public getButton(I)Landroid/widget/Button;
    .registers 3

    const/4 v0, -0x3

    if-eq p1, v0, :cond_11

    const/4 v0, -0x2

    if-eq p1, v0, :cond_e

    const/4 v0, -0x1

    if-eq p1, v0, :cond_b

    const/4 p0, 0x0

    return-object p0

    .line 384
    :cond_b
    iget-object p0, p0, Lflyme/support/v7/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    return-object p0

    .line 386
    :cond_e
    iget-object p0, p0, Lflyme/support/v7/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    return-object p0

    .line 388
    :cond_11
    iget-object p0, p0, Lflyme/support/v7/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    return-object p0
.end method

.method public getIconAttributeResId(I)I
    .registers 4

    .line 372
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 373
    iget-object p0, p0, Lflyme/support/v7/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 374
    iget p0, v0, Landroid/util/TypedValue;->resourceId:I

    return p0
.end method

.method public installContent()V
    .registers 3

    .line 209
    invoke-direct {p0}, Lflyme/support/v7/app/AlertController;->selectContentView()I

    move-result v0

    .line 210
    iget-object v1, p0, Lflyme/support/v7/app/AlertController;->mDialog:Lflyme/support/v7/app/AppCompatDialog;

    invoke-virtual {v1, v0}, Lflyme/support/v7/app/AppCompatDialog;->setContentView(I)V

    .line 211
    invoke-direct {p0}, Lflyme/support/v7/app/AlertController;->setupView()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 3

    .line 396
    iget-object p0, p0, Lflyme/support/v7/app/AlertController;->mScrollView:Landroidx/core/widget/NestedScrollView;

    if-eqz p0, :cond_c

    invoke-virtual {p0, p2}, Landroidx/core/widget/NestedScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 3

    .line 401
    iget-object p0, p0, Lflyme/support/v7/app/AlertController;->mScrollView:Landroidx/core/widget/NestedScrollView;

    if-eqz p0, :cond_c

    invoke-virtual {p0, p2}, Landroidx/core/widget/NestedScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;Landroid/graphics/drawable/Drawable;)V
    .registers 6

    if-nez p4, :cond_a

    if-eqz p3, :cond_a

    .line 299
    iget-object p4, p0, Lflyme/support/v7/app/AlertController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p4, p1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p4

    :cond_a
    const/4 p3, -0x3

    if-eq p1, p3, :cond_29

    const/4 p3, -0x2

    if-eq p1, p3, :cond_22

    const/4 p3, -0x1

    if-ne p1, p3, :cond_1a

    .line 305
    iput-object p2, p0, Lflyme/support/v7/app/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    .line 306
    iput-object p4, p0, Lflyme/support/v7/app/AlertController;->mButtonPositiveMessage:Landroid/os/Message;

    .line 307
    iput-object p5, p0, Lflyme/support/v7/app/AlertController;->mButtonPositiveIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_2f

    .line 323
    :cond_1a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Button does not exist"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 311
    :cond_22
    iput-object p2, p0, Lflyme/support/v7/app/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    .line 312
    iput-object p4, p0, Lflyme/support/v7/app/AlertController;->mButtonNegativeMessage:Landroid/os/Message;

    .line 313
    iput-object p5, p0, Lflyme/support/v7/app/AlertController;->mButtonNegativeIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_2f

    .line 317
    :cond_29
    iput-object p2, p0, Lflyme/support/v7/app/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    .line 318
    iput-object p4, p0, Lflyme/support/v7/app/AlertController;->mButtonNeutralMessage:Landroid/os/Message;

    .line 319
    iput-object p5, p0, Lflyme/support/v7/app/AlertController;->mButtonNeutralIcon:Landroid/graphics/drawable/Drawable;

    :goto_2f
    return-void
.end method

.method public setCustomPaddingRule(IIII)V
    .registers 5

    return-void
.end method

.method public setCustomTitle(Landroid/view/View;)V
    .registers 2

    .line 235
    iput-object p1, p0, Lflyme/support/v7/app/AlertController;->mCustomTitleView:Landroid/view/View;

    return-void
.end method

.method public setIcon(I)V
    .registers 3

    const/4 v0, 0x0

    .line 334
    iput-object v0, p0, Lflyme/support/v7/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 335
    iput p1, p0, Lflyme/support/v7/app/AlertController;->mIconId:I

    .line 337
    iget-object v0, p0, Lflyme/support/v7/app/AlertController;->mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1c

    if-eqz p1, :cond_17

    const/4 p1, 0x0

    .line 339
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 340
    iget-object p1, p0, Lflyme/support/v7/app/AlertController;->mIconView:Landroid/widget/ImageView;

    iget p0, p0, Lflyme/support/v7/app/AlertController;->mIconId:I

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1c

    :cond_17
    const/16 p0, 0x8

    .line 342
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1c
    :goto_1c
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 4

    .line 353
    iput-object p1, p0, Lflyme/support/v7/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    .line 354
    iput v0, p0, Lflyme/support/v7/app/AlertController;->mIconId:I

    .line 356
    iget-object v1, p0, Lflyme/support/v7/app/AlertController;->mIconView:Landroid/widget/ImageView;

    if-eqz v1, :cond_19

    if-eqz p1, :cond_14

    .line 358
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 359
    iget-object p0, p0, Lflyme/support/v7/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_19

    :cond_14
    const/16 p0, 0x8

    .line 361
    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_19
    :goto_19
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .registers 2

    .line 239
    iput-object p1, p0, Lflyme/support/v7/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    .line 240
    iget-object p0, p0, Lflyme/support/v7/app/AlertController;->mMessageView:Landroid/widget/TextView;

    if-eqz p0, :cond_9

    .line 241
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_9
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .registers 2

    .line 225
    iput-object p1, p0, Lflyme/support/v7/app/AlertController;->mTitle:Ljava/lang/CharSequence;

    .line 226
    iget-object p0, p0, Lflyme/support/v7/app/AlertController;->mTitleView:Landroid/widget/TextView;

    if-eqz p0, :cond_9

    .line 227
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_9
    return-void
.end method

.method public setView(I)V
    .registers 3

    const/4 v0, 0x0

    .line 249
    iput-object v0, p0, Lflyme/support/v7/app/AlertController;->mView:Landroid/view/View;

    .line 250
    iput p1, p0, Lflyme/support/v7/app/AlertController;->mViewLayoutResId:I

    const/4 p1, 0x0

    .line 251
    iput-boolean p1, p0, Lflyme/support/v7/app/AlertController;->mViewSpacingSpecified:Z

    return-void
.end method

.method public setView(Landroid/view/View;)V
    .registers 2

    .line 258
    iput-object p1, p0, Lflyme/support/v7/app/AlertController;->mView:Landroid/view/View;

    const/4 p1, 0x0

    .line 259
    iput p1, p0, Lflyme/support/v7/app/AlertController;->mViewLayoutResId:I

    .line 260
    iput-boolean p1, p0, Lflyme/support/v7/app/AlertController;->mViewSpacingSpecified:Z

    return-void
.end method

.method public setView(Landroid/view/View;IIII)V
    .registers 6

    .line 267
    iput-object p1, p0, Lflyme/support/v7/app/AlertController;->mView:Landroid/view/View;

    const/4 p1, 0x0

    .line 268
    iput p1, p0, Lflyme/support/v7/app/AlertController;->mViewLayoutResId:I

    const/4 p1, 0x1

    .line 269
    iput-boolean p1, p0, Lflyme/support/v7/app/AlertController;->mViewSpacingSpecified:Z

    .line 270
    iput p2, p0, Lflyme/support/v7/app/AlertController;->mViewSpacingLeft:I

    .line 271
    iput p3, p0, Lflyme/support/v7/app/AlertController;->mViewSpacingTop:I

    .line 272
    iput p4, p0, Lflyme/support/v7/app/AlertController;->mViewSpacingRight:I

    .line 273
    iput p5, p0, Lflyme/support/v7/app/AlertController;->mViewSpacingBottom:I

    return-void
.end method
