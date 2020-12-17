.class public Lcom/meizu/settings/widget/ChecktextPreference;
.super Landroid/preference/Preference;
.source "ChecktextPreference.java"


# instance fields
.field private mChecked:Z

.field private mCheckedTextView:Landroid/widget/CheckedTextView;

.field private mContext:Landroid/content/Context;

.field private mLinearLayout:Landroid/widget/LinearLayout;

.field private mShowCheckedMark:Z

.field private mShowHilight:Z

.field private mSummaryView:Landroid/widget/TextView;

.field private mTitleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 31
    invoke-direct {p0, p1, v0}, Lcom/meizu/settings/widget/ChecktextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 35
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x1

    .line 26
    iput-boolean p2, p0, Lcom/meizu/settings/widget/ChecktextPreference;->mShowCheckedMark:Z

    const/4 p2, 0x0

    .line 27
    iput-boolean p2, p0, Lcom/meizu/settings/widget/ChecktextPreference;->mShowHilight:Z

    .line 36
    iput-object p1, p0, Lcom/meizu/settings/widget/ChecktextPreference;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .registers 6

    .line 41
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 43
    invoke-super {p0}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object p1

    .line 44
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_31

    .line 45
    iget-object v0, p0, Lcom/meizu/settings/widget/ChecktextPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0701c6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 46
    iget-object v1, p0, Lcom/meizu/settings/widget/ChecktextPreference;->mLinearLayout:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 47
    iget-object v0, p0, Lcom/meizu/settings/widget/ChecktextPreference;->mSummaryView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 48
    iget-object v0, p0, Lcom/meizu/settings/widget/ChecktextPreference;->mSummaryView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    :cond_31
    invoke-super {p0}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    .line 52
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_40

    .line 53
    iget-object v0, p0, Lcom/meizu/settings/widget/ChecktextPreference;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    :cond_40
    iget-object p1, p0, Lcom/meizu/settings/widget/ChecktextPreference;->mCheckedTextView:Landroid/widget/CheckedTextView;

    iget-boolean p0, p0, Lcom/meizu/settings/widget/ChecktextPreference;->mChecked:Z

    invoke-virtual {p1, p0}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    return-void
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5

    .line 62
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f0d01c7

    const/4 v2, 0x0

    .line 64
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0a0753

    .line 65
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/settings/widget/ChecktextPreference;->mTitleView:Landroid/widget/TextView;

    const v0, 0x7f0a06f5

    .line 66
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/settings/widget/ChecktextPreference;->mSummaryView:Landroid/widget/TextView;

    const v0, 0x7f0a016d

    .line 67
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    iput-object v0, p0, Lcom/meizu/settings/widget/ChecktextPreference;->mCheckedTextView:Landroid/widget/CheckedTextView;

    const v0, 0x7f0a03bb

    .line 68
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/meizu/settings/widget/ChecktextPreference;->mLinearLayout:Landroid/widget/LinearLayout;

    return-object p1
.end method

.method public setChecked(ZZZ)V
    .registers 6

    .line 76
    iget-boolean v0, p0, Lcom/meizu/settings/widget/ChecktextPreference;->mChecked:Z

    const/4 v1, 0x1

    if-eq v0, p1, :cond_9

    .line 77
    iput-boolean p1, p0, Lcom/meizu/settings/widget/ChecktextPreference;->mChecked:Z

    move p1, v1

    goto :goto_a

    :cond_9
    const/4 p1, 0x0

    .line 80
    :goto_a
    iget-boolean v0, p0, Lcom/meizu/settings/widget/ChecktextPreference;->mShowCheckedMark:Z

    if-eq v0, p2, :cond_11

    .line 81
    iput-boolean p2, p0, Lcom/meizu/settings/widget/ChecktextPreference;->mShowCheckedMark:Z

    move p1, v1

    .line 84
    :cond_11
    iget-boolean p2, p0, Lcom/meizu/settings/widget/ChecktextPreference;->mShowHilight:Z

    if-eq p2, p3, :cond_18

    .line 85
    iput-boolean p3, p0, Lcom/meizu/settings/widget/ChecktextPreference;->mShowHilight:Z

    move p1, v1

    :cond_18
    if-eqz p1, :cond_1d

    .line 89
    invoke-virtual {p0}, Landroid/preference/Preference;->notifyChanged()V

    :cond_1d
    return-void
.end method
