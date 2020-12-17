.class public Lcom/meizu/common/preference/ListPreference;
.super Landroid/preference/ListPreference;
.source "ListPreference.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/common/preference/ListPreference$DropdownPopup;
    }
.end annotation


# static fields
.field private static sPreferenceView:Ljava/lang/reflect/Field;

.field private static sSetLayoutMode:Ljava/lang/reflect/Method;


# instance fields
.field private mAdapter:Landroid/widget/ListAdapter;

.field private mClickedDialogEntryIndex:I

.field private mCurrentOrientation:I

.field private mDropDownWidth:I

.field private mMaxDropDownHeight:I

.field private mPopup:Lcom/meizu/common/preference/ListPreference$DropdownPopup;

.field private mPreferenceViewExt:Landroid/view/View;

.field private mSingleChoiceItemLayout:I

.field private mVto:Landroid/view/ViewTreeObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 85
    invoke-direct {p0, p1, v0}, Lcom/meizu/common/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    .line 70
    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 63
    iput-object v0, p0, Lcom/meizu/common/preference/ListPreference;->mAdapter:Landroid/widget/ListAdapter;

    .line 72
    sget-object v0, Lcom/meizu/common/R$styleable;->ListPreference:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 74
    sget v0, Lcom/meizu/common/R$styleable;->ListPreference_mcDropDownWidth:I

    .line 75
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/meizu/common/R$dimen;->mz_popup_menu_item_min_width:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 74
    invoke-virtual {p2, v0, p1}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result p1

    iput p1, p0, Lcom/meizu/common/preference/ListPreference;->mDropDownWidth:I

    .line 76
    sget p1, Lcom/meizu/common/R$styleable;->ListPreference_mcMaxDropDownHeight:I

    iget v0, p0, Lcom/meizu/common/preference/ListPreference;->mMaxDropDownHeight:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result p1

    iput p1, p0, Lcom/meizu/common/preference/ListPreference;->mMaxDropDownHeight:I

    .line 79
    sget p1, Lcom/meizu/common/R$styleable;->ListPreference_mcSingleChoiceItemLayout:I

    sget v0, Lcom/meizu/common/R$layout;->mz_select_popup_singlechoice:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    iput p1, p0, Lcom/meizu/common/preference/ListPreference;->mSingleChoiceItemLayout:I

    .line 81
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/common/preference/ListPreference;)I
    .registers 1

    .line 51
    iget p0, p0, Lcom/meizu/common/preference/ListPreference;->mClickedDialogEntryIndex:I

    return p0
.end method

.method static synthetic access$002(Lcom/meizu/common/preference/ListPreference;I)I
    .registers 2

    .line 51
    iput p1, p0, Lcom/meizu/common/preference/ListPreference;->mClickedDialogEntryIndex:I

    return p1
.end method

.method static synthetic access$100(Lcom/meizu/common/preference/ListPreference;)Landroid/view/View;
    .registers 1

    .line 51
    iget-object p0, p0, Lcom/meizu/common/preference/ListPreference;->mPreferenceViewExt:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$200(Lcom/meizu/common/preference/ListPreference;)I
    .registers 1

    .line 51
    iget p0, p0, Lcom/meizu/common/preference/ListPreference;->mDropDownWidth:I

    return p0
.end method

.method static synthetic access$202(Lcom/meizu/common/preference/ListPreference;I)I
    .registers 2

    .line 51
    iput p1, p0, Lcom/meizu/common/preference/ListPreference;->mDropDownWidth:I

    return p1
.end method

.method static synthetic access$300()Ljava/lang/reflect/Method;
    .registers 1

    .line 51
    sget-object v0, Lcom/meizu/common/preference/ListPreference;->sSetLayoutMode:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static synthetic access$302(Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;
    .registers 1

    .line 51
    sput-object p0, Lcom/meizu/common/preference/ListPreference;->sSetLayoutMode:Ljava/lang/reflect/Method;

    return-object p0
.end method

.method static synthetic access$400(Lcom/meizu/common/preference/ListPreference;)I
    .registers 1

    .line 51
    iget p0, p0, Lcom/meizu/common/preference/ListPreference;->mMaxDropDownHeight:I

    return p0
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .registers 2

    .line 90
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onBindView(Landroid/view/View;)V

    .line 92
    iput-object p1, p0, Lcom/meizu/common/preference/ListPreference;->mPreferenceViewExt:Landroid/view/View;

    return-void
.end method

.method protected onClick()V
    .registers 7

    .line 99
    :try_start_0
    sget-object v0, Lcom/meizu/common/preference/ListPreference;->sPreferenceView:Ljava/lang/reflect/Field;

    if-nez v0, :cond_e

    .line 100
    const-class v0, Landroid/preference/Preference;

    const-string v1, "mPreferenceView"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/meizu/common/preference/ListPreference;->sPreferenceView:Ljava/lang/reflect/Field;

    .line 102
    :cond_e
    sget-object v0, Lcom/meizu/common/preference/ListPreference;->sPreferenceView:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 103
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_21

    .line 104
    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/meizu/common/preference/ListPreference;->mPreferenceViewExt:Landroid/view/View;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1c} :catch_1d

    goto :goto_21

    :catch_1d
    move-exception v0

    .line 107
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 110
    :cond_21
    :goto_21
    invoke-virtual {p0}, Landroid/preference/ListPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/meizu/common/preference/ListPreference;->mCurrentOrientation:I

    .line 111
    iget-object v0, p0, Lcom/meizu/common/preference/ListPreference;->mPopup:Lcom/meizu/common/preference/ListPreference$DropdownPopup;

    if-nez v0, :cond_40

    .line 112
    new-instance v0, Lcom/meizu/common/preference/ListPreference$DropdownPopup;

    invoke-virtual {p0}, Landroid/preference/ListPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/meizu/common/preference/ListPreference$DropdownPopup;-><init>(Lcom/meizu/common/preference/ListPreference;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/meizu/common/preference/ListPreference;->mPopup:Lcom/meizu/common/preference/ListPreference$DropdownPopup;

    .line 115
    :cond_40
    iget-object v0, p0, Lcom/meizu/common/preference/ListPreference;->mPreferenceViewExt:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setActivated(Z)V

    .line 116
    iget-object v0, p0, Lcom/meizu/common/preference/ListPreference;->mPreferenceViewExt:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/preference/ListPreference;->mVto:Landroid/view/ViewTreeObserver;

    .line 117
    iget-object v0, p0, Lcom/meizu/common/preference/ListPreference;->mVto:Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_55

    .line 118
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 121
    :cond_55
    iget-object v0, p0, Lcom/meizu/common/preference/ListPreference;->mPopup:Lcom/meizu/common/preference/ListPreference$DropdownPopup;

    iget-object v1, p0, Lcom/meizu/common/preference/ListPreference;->mPreferenceViewExt:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 122
    iget-object v0, p0, Lcom/meizu/common/preference/ListPreference;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_66

    .line 123
    iget-object v1, p0, Lcom/meizu/common/preference/ListPreference;->mPopup:Lcom/meizu/common/preference/ListPreference$DropdownPopup;

    invoke-virtual {v1, v0}, Lcom/meizu/common/preference/ListPreference$DropdownPopup;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_7c

    .line 125
    :cond_66
    iget-object v0, p0, Lcom/meizu/common/preference/ListPreference;->mPopup:Lcom/meizu/common/preference/ListPreference$DropdownPopup;

    new-instance v1, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Landroid/preference/ListPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/meizu/common/preference/ListPreference;->mSingleChoiceItemLayout:I

    sget v4, Lcom/meizu/common/R$id;->text1:I

    .line 126
    invoke-virtual {p0}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    .line 125
    invoke-virtual {v0, v1}, Lcom/meizu/common/preference/ListPreference$DropdownPopup;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 129
    :goto_7c
    iget-object p0, p0, Lcom/meizu/common/preference/ListPreference;->mPopup:Lcom/meizu/common/preference/ListPreference$DropdownPopup;

    invoke-virtual {p0}, Lcom/meizu/common/preference/ListPreference$DropdownPopup;->show()V

    return-void
.end method

.method public onDismiss()V
    .registers 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .line 257
    invoke-virtual {p0}, Lcom/meizu/common/preference/ListPreference;->onDropdownPopupClosed()V

    .line 259
    iget-object v0, p0, Lcom/meizu/common/preference/ListPreference;->mPreferenceViewExt:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setActivated(Z)V

    .line 260
    iget-object v0, p0, Lcom/meizu/common/preference/ListPreference;->mPreferenceViewExt:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 262
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_14
    return-void
.end method

.method protected onDropdownPopupClosed()V
    .registers 3

    .line 133
    invoke-virtual {p0}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 134
    iget v1, p0, Lcom/meizu/common/preference/ListPreference;->mClickedDialogEntryIndex:I

    if-ltz v1, :cond_19

    if-eqz v0, :cond_19

    .line 135
    aget-object v0, v0, v1

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 137
    invoke-virtual {p0, v0}, Landroid/preference/ListPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 138
    invoke-virtual {p0, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    :cond_19
    return-void
.end method

.method public onGlobalLayout()V
    .registers 3

    .line 270
    iget-object v0, p0, Lcom/meizu/common/preference/ListPreference;->mPopup:Lcom/meizu/common/preference/ListPreference$DropdownPopup;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_49

    .line 271
    iget-object v0, p0, Lcom/meizu/common/preference/ListPreference;->mPreferenceViewExt:Landroid/view/View;

    if-eqz v0, :cond_44

    .line 272
    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_44

    iget v0, p0, Lcom/meizu/common/preference/ListPreference;->mCurrentOrientation:I

    .line 273
    invoke-virtual {p0}, Landroid/preference/ListPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 274
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_25

    goto :goto_44

    .line 276
    :cond_25
    iget-object v0, p0, Lcom/meizu/common/preference/ListPreference;->mPopup:Lcom/meizu/common/preference/ListPreference$DropdownPopup;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_49

    iget-object v0, p0, Lcom/meizu/common/preference/ListPreference;->mPreferenceViewExt:Landroid/view/View;

    iget-object v1, p0, Lcom/meizu/common/preference/ListPreference;->mPopup:Lcom/meizu/common/preference/ListPreference$DropdownPopup;

    .line 277
    invoke-virtual {v1}, Landroid/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v1

    if-eq v0, v1, :cond_49

    .line 278
    iget-object v0, p0, Lcom/meizu/common/preference/ListPreference;->mPopup:Lcom/meizu/common/preference/ListPreference$DropdownPopup;

    iget-object v1, p0, Lcom/meizu/common/preference/ListPreference;->mPreferenceViewExt:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 279
    iget-object p0, p0, Lcom/meizu/common/preference/ListPreference;->mPopup:Lcom/meizu/common/preference/ListPreference$DropdownPopup;

    invoke-virtual {p0}, Lcom/meizu/common/preference/ListPreference$DropdownPopup;->show()V

    goto :goto_49

    .line 275
    :cond_44
    :goto_44
    iget-object p0, p0, Lcom/meizu/common/preference/ListPreference;->mPopup:Lcom/meizu/common/preference/ListPreference$DropdownPopup;

    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->dismiss()V

    :cond_49
    :goto_49
    return-void
.end method

.method public setEnabled(Z)V
    .registers 2

    .line 286
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    if-nez p1, :cond_14

    .line 288
    iget-object p1, p0, Lcom/meizu/common/preference/ListPreference;->mPopup:Lcom/meizu/common/preference/ListPreference$DropdownPopup;

    if-eqz p1, :cond_14

    invoke-virtual {p1}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_14

    .line 289
    iget-object p0, p0, Lcom/meizu/common/preference/ListPreference;->mPopup:Lcom/meizu/common/preference/ListPreference$DropdownPopup;

    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->dismiss()V

    :cond_14
    return-void
.end method
