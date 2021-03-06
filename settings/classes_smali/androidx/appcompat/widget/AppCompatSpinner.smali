.class public Landroidx/appcompat/widget/AppCompatSpinner;
.super Landroid/widget/Spinner;
.source "AppCompatSpinner.java"

# interfaces
.implements Landroidx/core/view/TintableBackgroundView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;,
        Landroidx/appcompat/widget/AppCompatSpinner$DialogPopup;,
        Landroidx/appcompat/widget/AppCompatSpinner$SpinnerPopup;,
        Landroidx/appcompat/widget/AppCompatSpinner$DropDownAdapter;,
        Landroidx/appcompat/widget/AppCompatSpinner$SavedState;
    }
.end annotation


# static fields
.field private static final ATTRS_ANDROID_SPINNERMODE:[I


# instance fields
.field private final mBackgroundTintHelper:Landroidx/appcompat/widget/AppCompatBackgroundHelper;

.field mDropDownWidth:I

.field private mForwardingListener:Landroidx/appcompat/widget/ForwardingListener;

.field private mPopup:Landroidx/appcompat/widget/AppCompatSpinner$SpinnerPopup;

.field private final mPopupContext:Landroid/content/Context;

.field private final mPopupSet:Z

.field private mTempAdapter:Landroid/widget/SpinnerAdapter;

.field final mTempRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10102f1

    aput v2, v0, v1

    .line 78
    sput-object v0, Landroidx/appcompat/widget/AppCompatSpinner;->ATTRS_ANDROID_SPINNERMODE:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 114
    invoke-direct {p0, p1, v0}, Landroidx/appcompat/widget/AppCompatSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 140
    sget v0, Landroidx/appcompat/R$attr;->spinnerStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/AppCompatSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const/4 v0, -0x1

    .line 155
    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/appcompat/widget/AppCompatSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 174
    invoke-direct/range {v0 .. v5}, Landroidx/appcompat/widget/AppCompatSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILandroid/content/res/Resources$Theme;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILandroid/content/res/Resources$Theme;)V
    .registers 12

    .line 203
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 105
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->mTempRect:Landroid/graphics/Rect;

    .line 205
    sget-object v0, Landroidx/appcompat/R$styleable;->Spinner:[I

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, p3, v1}, Landroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/TintTypedArray;

    move-result-object v0

    .line 208
    new-instance v2, Landroidx/appcompat/widget/AppCompatBackgroundHelper;

    invoke-direct {v2, p0}, Landroidx/appcompat/widget/AppCompatBackgroundHelper;-><init>(Landroid/view/View;)V

    iput-object v2, p0, Landroidx/appcompat/widget/AppCompatSpinner;->mBackgroundTintHelper:Landroidx/appcompat/widget/AppCompatBackgroundHelper;

    if-eqz p5, :cond_22

    .line 211
    new-instance v2, Landroidx/appcompat/view/ContextThemeWrapper;

    invoke-direct {v2, p1, p5}, Landroidx/appcompat/view/ContextThemeWrapper;-><init>(Landroid/content/Context;Landroid/content/res/Resources$Theme;)V

    iput-object v2, p0, Landroidx/appcompat/widget/AppCompatSpinner;->mPopupContext:Landroid/content/Context;

    goto :goto_34

    .line 213
    :cond_22
    sget p5, Landroidx/appcompat/R$styleable;->Spinner_popupTheme:I

    invoke-virtual {v0, p5, v1}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result p5

    if-eqz p5, :cond_32

    .line 215
    new-instance v2, Landroidx/appcompat/view/ContextThemeWrapper;

    invoke-direct {v2, p1, p5}, Landroidx/appcompat/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Landroidx/appcompat/widget/AppCompatSpinner;->mPopupContext:Landroid/content/Context;

    goto :goto_34

    .line 217
    :cond_32
    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatSpinner;->mPopupContext:Landroid/content/Context;

    :goto_34
    const/4 p5, -0x1

    const/4 v2, 0x0

    if-ne p4, p5, :cond_66

    .line 224
    :try_start_38
    sget-object p5, Landroidx/appcompat/widget/AppCompatSpinner;->ATTRS_ANDROID_SPINNERMODE:[I

    invoke-virtual {p1, p2, p5, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p5
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_3e} :catch_53
    .catchall {:try_start_38 .. :try_end_3e} :catchall_50

    .line 226
    :try_start_3e
    invoke-virtual {p5, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_48

    .line 227
    invoke-virtual {p5, v1, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p4
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_48} :catch_4e
    .catchall {:try_start_3e .. :try_end_48} :catchall_5f

    :cond_48
    if-eqz p5, :cond_66

    .line 233
    :goto_4a
    invoke-virtual {p5}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_66

    :catch_4e
    move-exception v3

    goto :goto_55

    :catchall_50
    move-exception p0

    move-object p5, v2

    goto :goto_60

    :catch_53
    move-exception v3

    move-object p5, v2

    :goto_55
    :try_start_55
    const-string v4, "AppCompatSpinner"

    const-string v5, "Could not read android:spinnerMode"

    .line 230
    invoke-static {v4, v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5c
    .catchall {:try_start_55 .. :try_end_5c} :catchall_5f

    if-eqz p5, :cond_66

    goto :goto_4a

    :catchall_5f
    move-exception p0

    :goto_60
    if-eqz p5, :cond_65

    .line 233
    invoke-virtual {p5}, Landroid/content/res/TypedArray;->recycle()V

    :cond_65
    throw p0

    :cond_66
    :goto_66
    const/4 p5, 0x1

    if-eqz p4, :cond_a3

    if-eq p4, p5, :cond_6c

    goto :goto_b5

    .line 245
    :cond_6c
    new-instance p4, Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;

    iget-object v3, p0, Landroidx/appcompat/widget/AppCompatSpinner;->mPopupContext:Landroid/content/Context;

    invoke-direct {p4, p0, v3, p2, p3}, Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;-><init>(Landroidx/appcompat/widget/AppCompatSpinner;Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 246
    iget-object v3, p0, Landroidx/appcompat/widget/AppCompatSpinner;->mPopupContext:Landroid/content/Context;

    sget-object v4, Landroidx/appcompat/R$styleable;->Spinner:[I

    invoke-static {v3, p2, v4, p3, v1}, Landroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/TintTypedArray;

    move-result-object v1

    .line 248
    sget v3, Landroidx/appcompat/R$styleable;->Spinner_android_dropDownWidth:I

    const/4 v4, -0x2

    invoke-virtual {v1, v3, v4}, Landroidx/appcompat/widget/TintTypedArray;->getLayoutDimension(II)I

    move-result v3

    iput v3, p0, Landroidx/appcompat/widget/AppCompatSpinner;->mDropDownWidth:I

    .line 250
    sget v3, Landroidx/appcompat/R$styleable;->Spinner_android_popupBackground:I

    .line 251
    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 250
    invoke-virtual {p4, v3}, Landroidx/appcompat/widget/ListPopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 252
    sget v3, Landroidx/appcompat/R$styleable;->Spinner_android_prompt:I

    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/TintTypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p4, v3}, Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->setPromptText(Ljava/lang/CharSequence;)V

    .line 253
    invoke-virtual {v1}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    .line 255
    iput-object p4, p0, Landroidx/appcompat/widget/AppCompatSpinner;->mPopup:Landroidx/appcompat/widget/AppCompatSpinner$SpinnerPopup;

    .line 256
    new-instance v1, Landroidx/appcompat/widget/AppCompatSpinner$1;

    invoke-direct {v1, p0, p0, p4}, Landroidx/appcompat/widget/AppCompatSpinner$1;-><init>(Landroidx/appcompat/widget/AppCompatSpinner;Landroid/view/View;Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;)V

    iput-object v1, p0, Landroidx/appcompat/widget/AppCompatSpinner;->mForwardingListener:Landroidx/appcompat/widget/ForwardingListener;

    goto :goto_b5

    .line 240
    :cond_a3
    new-instance p4, Landroidx/appcompat/widget/AppCompatSpinner$DialogPopup;

    invoke-direct {p4, p0}, Landroidx/appcompat/widget/AppCompatSpinner$DialogPopup;-><init>(Landroidx/appcompat/widget/AppCompatSpinner;)V

    iput-object p4, p0, Landroidx/appcompat/widget/AppCompatSpinner;->mPopup:Landroidx/appcompat/widget/AppCompatSpinner$SpinnerPopup;

    .line 241
    iget-object p4, p0, Landroidx/appcompat/widget/AppCompatSpinner;->mPopup:Landroidx/appcompat/widget/AppCompatSpinner$SpinnerPopup;

    sget v1, Landroidx/appcompat/R$styleable;->Spinner_android_prompt:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/TintTypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p4, v1}, Landroidx/appcompat/widget/AppCompatSpinner$SpinnerPopup;->setPromptText(Ljava/lang/CharSequence;)V

    .line 274
    :goto_b5
    sget p4, Landroidx/appcompat/R$styleable;->Spinner_android_entries:I

    invoke-virtual {v0, p4}, Landroidx/appcompat/widget/TintTypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p4

    if-eqz p4, :cond_cd

    .line 276
    new-instance v1, Landroid/widget/ArrayAdapter;

    const v3, 0x1090008

    invoke-direct {v1, p1, v3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 278
    sget p1, Landroidx/appcompat/R$layout;->support_simple_spinner_dropdown_item:I

    invoke-virtual {v1, p1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 279
    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/AppCompatSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 282
    :cond_cd
    invoke-virtual {v0}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    .line 284
    iput-boolean p5, p0, Landroidx/appcompat/widget/AppCompatSpinner;->mPopupSet:Z

    .line 288
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatSpinner;->mTempAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz p1, :cond_db

    .line 289
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/AppCompatSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 290
    iput-object v2, p0, Landroidx/appcompat/widget/AppCompatSpinner;->mTempAdapter:Landroid/widget/SpinnerAdapter;

    .line 293
    :cond_db
    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->mBackgroundTintHelper:Landroidx/appcompat/widget/AppCompatBackgroundHelper;

    invoke-virtual {p0, p2, p3}, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->loadFromAttributes(Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method compatMeasureContentWidth(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I
    .registers 13

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 557
    :cond_4
    invoke-virtual {p0}, Landroid/widget/Spinner;->getMeasuredWidth()I

    move-result v1

    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 559
    invoke-virtual {p0}, Landroid/widget/Spinner;->getMeasuredHeight()I

    move-result v2

    invoke-static {v2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 563
    invoke-virtual {p0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 564
    invoke-interface {p1}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v4

    add-int/lit8 v5, v3, 0xf

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    sub-int v5, v4, v3

    rsub-int/lit8 v5, v5, 0xf

    sub-int/2addr v3, v5

    .line 566
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    const/4 v5, 0x0

    move v6, v0

    move-object v7, v5

    :goto_32
    if-ge v3, v4, :cond_5d

    .line 568
    invoke-interface {p1, v3}, Landroid/widget/SpinnerAdapter;->getItemViewType(I)I

    move-result v8

    if-eq v8, v0, :cond_3c

    move-object v7, v5

    move v0, v8

    .line 573
    :cond_3c
    invoke-interface {p1, v3, v7, p0}, Landroid/widget/SpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 574
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    if-nez v8, :cond_4f

    .line 575
    new-instance v8, Landroid/view/ViewGroup$LayoutParams;

    const/4 v9, -0x2

    invoke-direct {v8, v9, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 579
    :cond_4f
    invoke-virtual {v7, v1, v2}, Landroid/view/View;->measure(II)V

    .line 580
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_32

    :cond_5d
    if-eqz p2, :cond_6c

    .line 585
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatSpinner;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 586
    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->mTempRect:Landroid/graphics/Rect;

    iget p1, p0, Landroid/graphics/Rect;->left:I

    iget p0, p0, Landroid/graphics/Rect;->right:I

    add-int/2addr p1, p0

    add-int/2addr v6, p1

    :cond_6c
    return v6
.end method

.method protected drawableStateChanged()V
    .registers 1

    .line 542
    invoke-super {p0}, Landroid/widget/Spinner;->drawableStateChanged()V

    .line 543
    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->mBackgroundTintHelper:Landroidx/appcompat/widget/AppCompatBackgroundHelper;

    if-eqz p0, :cond_a

    .line 544
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->applySupportBackgroundTint()V

    :cond_a
    return-void
.end method

.method public getDropDownHorizontalOffset()I
    .registers 3

    .line 364
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->mPopup:Landroidx/appcompat/widget/AppCompatSpinner$SpinnerPopup;

    if-eqz v0, :cond_9

    .line 365
    invoke-interface {v0}, Landroidx/appcompat/widget/AppCompatSpinner$SpinnerPopup;->getHorizontalOffset()I

    move-result p0

    return p0

    .line 366
    :cond_9
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_14

    .line 367
    invoke-super {p0}, Landroid/widget/Spinner;->getDropDownHorizontalOffset()I

    move-result p0

    return p0

    :cond_14
    const/4 p0, 0x0

    return p0
.end method

.method public getDropDownVerticalOffset()I
    .registers 3

    .line 339
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->mPopup:Landroidx/appcompat/widget/AppCompatSpinner$SpinnerPopup;

    if-eqz v0, :cond_9

    .line 340
    invoke-interface {v0}, Landroidx/appcompat/widget/AppCompatSpinner$SpinnerPopup;->getVerticalOffset()I

    move-result p0

    return p0

    .line 341
    :cond_9
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_14

    .line 342
    invoke-super {p0}, Landroid/widget/Spinner;->getDropDownVerticalOffset()I

    move-result p0

    return p0

    :cond_14
    const/4 p0, 0x0

    return p0
.end method

.method public getDropDownWidth()I
    .registers 3

    .line 383
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->mPopup:Landroidx/appcompat/widget/AppCompatSpinner$SpinnerPopup;

    if-eqz v0, :cond_7

    .line 384
    iget p0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->mDropDownWidth:I

    return p0

    .line 385
    :cond_7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_12

    .line 386
    invoke-super {p0}, Landroid/widget/Spinner;->getDropDownWidth()I

    move-result p0

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method final getInternalPopup()Landroidx/appcompat/widget/AppCompatSpinner$SpinnerPopup;
    .registers 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 594
    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->mPopup:Landroidx/appcompat/widget/AppCompatSpinner$SpinnerPopup;

    return-object p0
.end method

.method public getPopupBackground()Landroid/graphics/drawable/Drawable;
    .registers 3

    .line 320
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->mPopup:Landroidx/appcompat/widget/AppCompatSpinner$SpinnerPopup;

    if-eqz v0, :cond_9

    .line 321
    invoke-interface {v0}, Landroidx/appcompat/widget/AppCompatSpinner$SpinnerPopup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    .line 322
    :cond_9
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_14

    .line 323
    invoke-super {p0}, Landroid/widget/Spinner;->getPopupBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_14
    const/4 p0, 0x0

    return-object p0
.end method

.method public getPopupContext()Landroid/content/Context;
    .registers 1

    .line 301
    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->mPopupContext:Landroid/content/Context;

    return-object p0
.end method

.method public getPrompt()Ljava/lang/CharSequence;
    .registers 2

    .line 463
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->mPopup:Landroidx/appcompat/widget/AppCompatSpinner$SpinnerPopup;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Landroidx/appcompat/widget/AppCompatSpinner$SpinnerPopup;->getHintText()Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_d

    :cond_9
    invoke-super {p0}, Landroid/widget/Spinner;->getPrompt()Ljava/lang/CharSequence;

    move-result-object p0

    :goto_d
    return-object p0
.end method

.method public getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .registers 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 507
    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->mBackgroundTintHelper:Landroidx/appcompat/widget/AppCompatBackgroundHelper;

    if-eqz p0, :cond_9

    .line 508
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->getSupportBackgroundTintList()Landroid/content/res/ColorStateList;

    move-result-object p0

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return-object p0
.end method

.method public getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .registers 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 536
    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->mBackgroundTintHelper:Landroidx/appcompat/widget/AppCompatBackgroundHelper;

    if-eqz p0, :cond_9

    .line 537
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object p0

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return-object p0
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .line 410
    invoke-super {p0}, Landroid/widget/Spinner;->onDetachedFromWindow()V

    .line 412
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->mPopup:Landroidx/appcompat/widget/AppCompatSpinner$SpinnerPopup;

    if-eqz v0, :cond_12

    invoke-interface {v0}, Landroidx/appcompat/widget/AppCompatSpinner$SpinnerPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 413
    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->mPopup:Landroidx/appcompat/widget/AppCompatSpinner$SpinnerPopup;

    invoke-interface {p0}, Landroidx/appcompat/widget/AppCompatSpinner$SpinnerPopup;->dismiss()V

    :cond_12
    return-void
.end method

.method protected onMeasure(II)V
    .registers 5

    .line 427
    invoke-super {p0, p1, p2}, Landroid/widget/Spinner;->onMeasure(II)V

    .line 429
    iget-object p2, p0, Landroidx/appcompat/widget/AppCompatSpinner;->mPopup:Landroidx/appcompat/widget/AppCompatSpinner$SpinnerPopup;

    if-eqz p2, :cond_32

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    const/high16 v0, -0x80000000

    if-ne p2, v0, :cond_32

    .line 430
    invoke-virtual {p0}, Landroid/widget/Spinner;->getMeasuredWidth()I

    move-result p2

    .line 432
    invoke-virtual {p0}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/Spinner;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroidx/appcompat/widget/AppCompatSpinner;->compatMeasureContentWidth(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I

    move-result v0

    .line 431
    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 433
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 431
    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 434
    invoke-virtual {p0}, Landroid/widget/Spinner;->getMeasuredHeight()I

    move-result p2

    .line 431
    invoke-virtual {p0, p1, p2}, Landroid/widget/Spinner;->setMeasuredDimension(II)V

    :cond_32
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 3

    .line 616
    check-cast p1, Landroidx/appcompat/widget/AppCompatSpinner$SavedState;

    .line 618
    invoke-virtual {p1}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/Spinner;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 620
    iget-boolean p1, p1, Landroidx/appcompat/widget/AppCompatSpinner$SavedState;->mShowDropdown:Z

    if-eqz p1, :cond_1b

    .line 621
    invoke-virtual {p0}, Landroid/widget/Spinner;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    if-eqz p1, :cond_1b

    .line 623
    new-instance v0, Landroidx/appcompat/widget/AppCompatSpinner$2;

    invoke-direct {v0, p0}, Landroidx/appcompat/widget/AppCompatSpinner$2;-><init>(Landroidx/appcompat/widget/AppCompatSpinner;)V

    .line 639
    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_1b
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 3

    .line 608
    new-instance v0, Landroidx/appcompat/widget/AppCompatSpinner$SavedState;

    .line 609
    invoke-super {p0}, Landroid/widget/Spinner;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/widget/AppCompatSpinner$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 610
    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->mPopup:Landroidx/appcompat/widget/AppCompatSpinner$SpinnerPopup;

    if-eqz p0, :cond_15

    invoke-interface {p0}, Landroidx/appcompat/widget/AppCompatSpinner$SpinnerPopup;->isShowing()Z

    move-result p0

    if-eqz p0, :cond_15

    const/4 p0, 0x1

    goto :goto_16

    :cond_15
    const/4 p0, 0x0

    :goto_16
    iput-boolean p0, v0, Landroidx/appcompat/widget/AppCompatSpinner$SavedState;->mShowDropdown:Z

    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 419
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->mForwardingListener:Landroidx/appcompat/widget/ForwardingListener;

    if-eqz v0, :cond_c

    invoke-virtual {v0, p0, p1}, Landroidx/appcompat/widget/ForwardingListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 p0, 0x1

    return p0

    .line 422
    :cond_c
    invoke-super {p0, p1}, Landroid/widget/Spinner;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public performClick()Z
    .registers 2

    .line 440
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->mPopup:Landroidx/appcompat/widget/AppCompatSpinner$SpinnerPopup;

    if-eqz v0, :cond_f

    .line 442
    invoke-interface {v0}, Landroidx/appcompat/widget/AppCompatSpinner$SpinnerPopup;->isShowing()Z

    move-result v0

    if-nez v0, :cond_d

    .line 443
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatSpinner;->showPopup()V

    :cond_d
    const/4 p0, 0x1

    return p0

    .line 449
    :cond_f
    invoke-super {p0}, Landroid/widget/Spinner;->performClick()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .registers 2

    .line 76
    check-cast p1, Landroid/widget/SpinnerAdapter;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/AppCompatSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/SpinnerAdapter;)V
    .registers 4

    .line 395
    iget-boolean v0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->mPopupSet:Z

    if-nez v0, :cond_7

    .line 396
    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatSpinner;->mTempAdapter:Landroid/widget/SpinnerAdapter;

    return-void

    .line 400
    :cond_7
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 402
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->mPopup:Landroidx/appcompat/widget/AppCompatSpinner$SpinnerPopup;

    if-eqz v0, :cond_24

    .line 403
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->mPopupContext:Landroid/content/Context;

    if-nez v0, :cond_16

    invoke-virtual {p0}, Landroid/widget/Spinner;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 404
    :cond_16
    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->mPopup:Landroidx/appcompat/widget/AppCompatSpinner$SpinnerPopup;

    new-instance v1, Landroidx/appcompat/widget/AppCompatSpinner$DropDownAdapter;

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    invoke-direct {v1, p1, v0}, Landroidx/appcompat/widget/AppCompatSpinner$DropDownAdapter;-><init>(Landroid/widget/SpinnerAdapter;Landroid/content/res/Resources$Theme;)V

    invoke-interface {p0, v1}, Landroidx/appcompat/widget/AppCompatSpinner$SpinnerPopup;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_24
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    .line 476
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 477
    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->mBackgroundTintHelper:Landroidx/appcompat/widget/AppCompatBackgroundHelper;

    if-eqz p0, :cond_a

    .line 478
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->onSetBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_a
    return-void
.end method

.method public setBackgroundResource(I)V
    .registers 2
    .param p1  # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .line 468
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setBackgroundResource(I)V

    .line 469
    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->mBackgroundTintHelper:Landroidx/appcompat/widget/AppCompatBackgroundHelper;

    if-eqz p0, :cond_a

    .line 470
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->onSetBackgroundResource(I)V

    :cond_a
    return-void
.end method

.method public setDropDownHorizontalOffset(I)V
    .registers 4

    .line 349
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->mPopup:Landroidx/appcompat/widget/AppCompatSpinner$SpinnerPopup;

    if-eqz v0, :cond_8

    .line 350
    invoke-interface {v0, p1}, Landroidx/appcompat/widget/AppCompatSpinner$SpinnerPopup;->setHorizontalOffset(I)V

    goto :goto_11

    .line 351
    :cond_8
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_11

    .line 352
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setDropDownHorizontalOffset(I)V

    :cond_11
    :goto_11
    return-void
.end method

.method public setDropDownVerticalOffset(I)V
    .registers 4

    .line 330
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->mPopup:Landroidx/appcompat/widget/AppCompatSpinner$SpinnerPopup;

    if-eqz v0, :cond_8

    .line 331
    invoke-interface {v0, p1}, Landroidx/appcompat/widget/AppCompatSpinner$SpinnerPopup;->setVerticalOffset(I)V

    goto :goto_11

    .line 332
    :cond_8
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_11

    .line 333
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setDropDownVerticalOffset(I)V

    :cond_11
    :goto_11
    return-void
.end method

.method public setDropDownWidth(I)V
    .registers 4

    .line 374
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->mPopup:Landroidx/appcompat/widget/AppCompatSpinner$SpinnerPopup;

    if-eqz v0, :cond_7

    .line 375
    iput p1, p0, Landroidx/appcompat/widget/AppCompatSpinner;->mDropDownWidth:I

    goto :goto_10

    .line 376
    :cond_7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_10

    .line 377
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setDropDownWidth(I)V

    :cond_10
    :goto_10
    return-void
.end method

.method public setPopupBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 4

    .line 306
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->mPopup:Landroidx/appcompat/widget/AppCompatSpinner$SpinnerPopup;

    if-eqz v0, :cond_8

    .line 307
    invoke-interface {v0, p1}, Landroidx/appcompat/widget/AppCompatSpinner$SpinnerPopup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_11

    .line 308
    :cond_8
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_11

    .line 309
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setPopupBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_11
    :goto_11
    return-void
.end method

.method public setPopupBackgroundResource(I)V
    .registers 3
    .param p1  # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .line 315
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatSpinner;->getPopupContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/AppCompatSpinner;->setPopupBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setPrompt(Ljava/lang/CharSequence;)V
    .registers 3

    .line 454
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->mPopup:Landroidx/appcompat/widget/AppCompatSpinner$SpinnerPopup;

    if-eqz v0, :cond_8

    .line 455
    invoke-interface {v0, p1}, Landroidx/appcompat/widget/AppCompatSpinner$SpinnerPopup;->setPromptText(Ljava/lang/CharSequence;)V

    goto :goto_b

    .line 457
    :cond_8
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setPrompt(Ljava/lang/CharSequence;)V

    :goto_b
    return-void
.end method

.method public setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .registers 2
    .param p1  # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 492
    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->mBackgroundTintHelper:Landroidx/appcompat/widget/AppCompatBackgroundHelper;

    if-eqz p0, :cond_7

    .line 493
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V

    :cond_7
    return-void
.end method

.method public setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .registers 2
    .param p1  # Landroid/graphics/PorterDuff$Mode;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 521
    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->mBackgroundTintHelper:Landroidx/appcompat/widget/AppCompatBackgroundHelper;

    if-eqz p0, :cond_7

    .line 522
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    :cond_7
    return-void
.end method

.method showPopup()V
    .registers 3

    .line 598
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_14

    .line 599
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->mPopup:Landroidx/appcompat/widget/AppCompatSpinner$SpinnerPopup;

    invoke-virtual {p0}, Landroid/widget/Spinner;->getTextDirection()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/Spinner;->getTextAlignment()I

    move-result p0

    invoke-interface {v0, v1, p0}, Landroidx/appcompat/widget/AppCompatSpinner$SpinnerPopup;->show(II)V

    goto :goto_1a

    .line 601
    :cond_14
    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->mPopup:Landroidx/appcompat/widget/AppCompatSpinner$SpinnerPopup;

    const/4 v0, -0x1

    invoke-interface {p0, v0, v0}, Landroidx/appcompat/widget/AppCompatSpinner$SpinnerPopup;->show(II)V

    :goto_1a
    return-void
.end method
