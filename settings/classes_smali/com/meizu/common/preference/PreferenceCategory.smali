.class public Lcom/meizu/common/preference/PreferenceCategory;
.super Landroid/preference/PreferenceCategory;
.source "PreferenceCategory.java"


# instance fields
.field private mNoTitleLayoutResId:I

.field private mTopPadding:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 35
    invoke-direct {p0, p1, p2}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    sget v0, Lcom/meizu/common/R$layout;->mz_preference_category_no_title:I

    iput v0, p0, Lcom/meizu/common/preference/PreferenceCategory;->mNoTitleLayoutResId:I

    const/4 v0, 0x0

    .line 21
    iput v0, p0, Lcom/meizu/common/preference/PreferenceCategory;->mTopPadding:I

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/meizu/common/preference/PreferenceCategory;->initAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 30
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 20
    sget p3, Lcom/meizu/common/R$layout;->mz_preference_category_no_title:I

    iput p3, p0, Lcom/meizu/common/preference/PreferenceCategory;->mNoTitleLayoutResId:I

    const/4 p3, 0x0

    .line 21
    iput p3, p0, Lcom/meizu/common/preference/PreferenceCategory;->mTopPadding:I

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/meizu/common/preference/PreferenceCategory;->initAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    .line 25
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 20
    sget p3, Lcom/meizu/common/R$layout;->mz_preference_category_no_title:I

    iput p3, p0, Lcom/meizu/common/preference/PreferenceCategory;->mNoTitleLayoutResId:I

    const/4 p3, 0x0

    .line 21
    iput p3, p0, Lcom/meizu/common/preference/PreferenceCategory;->mTopPadding:I

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/meizu/common/preference/PreferenceCategory;->initAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private initAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    .line 44
    sget-object v0, Lcom/meizu/common/R$styleable;->PreferenceCategory:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 46
    sget p2, Lcom/meizu/common/R$styleable;->PreferenceCategory_mzNoTitleLayout:I

    iget v0, p0, Lcom/meizu/common/preference/PreferenceCategory;->mNoTitleLayoutResId:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/meizu/common/preference/PreferenceCategory;->mNoTitleLayoutResId:I

    .line 47
    sget p2, Lcom/meizu/common/R$styleable;->PreferenceCategory_mzTopPadding:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/meizu/common/preference/PreferenceCategory;->mTopPadding:I

    .line 48
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 3

    const/4 p1, 0x0

    .line 56
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceCategory;->getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5

    .line 62
    invoke-virtual {p0}, Landroid/preference/PreferenceCategory;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_3e

    invoke-virtual {p0}, Landroid/preference/PreferenceCategory;->getTitleRes()I

    move-result v0

    if-nez v0, :cond_3e

    .line 64
    invoke-virtual {p0}, Landroid/preference/PreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 66
    iget v1, p0, Lcom/meizu/common/preference/PreferenceCategory;->mNoTitleLayoutResId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const v1, 0x1020018

    .line 69
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_42

    .line 71
    invoke-virtual {p0}, Landroid/preference/PreferenceCategory;->getWidgetLayoutResource()I

    move-result v2

    if-eqz v2, :cond_38

    .line 72
    invoke-virtual {p0}, Landroid/preference/PreferenceCategory;->getWidgetLayoutResource()I

    move-result v2

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    goto :goto_42

    :cond_38
    const/16 v0, 0x8

    .line 74
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_42

    .line 78
    :cond_3e
    invoke-super {p0, p1}, Landroid/preference/PreferenceCategory;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 81
    :cond_42
    :goto_42
    iget v0, p0, Lcom/meizu/common/preference/PreferenceCategory;->mTopPadding:I

    if-eqz v0, :cond_57

    .line 82
    invoke-virtual {p1}, Landroid/view/View;->getPaddingStart()I

    move-result v0

    iget p0, p0, Lcom/meizu/common/preference/PreferenceCategory;->mTopPadding:I

    invoke-virtual {p1}, Landroid/view/View;->getPaddingEnd()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    invoke-virtual {p1, v0, p0, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    :cond_57
    return-object p1
.end method
