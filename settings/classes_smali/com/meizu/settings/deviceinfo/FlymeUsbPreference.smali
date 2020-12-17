.class public Lcom/meizu/settings/deviceinfo/FlymeUsbPreference;
.super Lcom/meizu/settings/widget/RestrictedPreference;
.source "FlymeUsbPreference.java"


# instance fields
.field private mChecked:Z

.field private mCheckedDrawable:Landroid/graphics/drawable/Drawable;

.field private mPreferenceButton:Landroid/widget/CheckedTextView;

.field private mPreferenceSummary:Landroid/widget/TextView;

.field private mPreferenceTitle:Landroid/widget/TextView;

.field private mSummaryValue:Ljava/lang/CharSequence;

.field private mTitleValue:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, p1, v0}, Lcom/meizu/settings/deviceinfo/FlymeUsbPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 46
    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/settings/deviceinfo/FlymeUsbPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 57
    invoke-direct {p0, p1, p2, p3}, Lcom/meizu/settings/widget/RestrictedPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 20
    iput-object p2, p0, Lcom/meizu/settings/deviceinfo/FlymeUsbPreference;->mPreferenceTitle:Landroid/widget/TextView;

    .line 21
    iput-object p2, p0, Lcom/meizu/settings/deviceinfo/FlymeUsbPreference;->mPreferenceSummary:Landroid/widget/TextView;

    .line 22
    iput-object p2, p0, Lcom/meizu/settings/deviceinfo/FlymeUsbPreference;->mPreferenceButton:Landroid/widget/CheckedTextView;

    const-string p3, ""

    .line 23
    iput-object p3, p0, Lcom/meizu/settings/deviceinfo/FlymeUsbPreference;->mTitleValue:Ljava/lang/CharSequence;

    .line 24
    iput-object p3, p0, Lcom/meizu/settings/deviceinfo/FlymeUsbPreference;->mSummaryValue:Ljava/lang/CharSequence;

    const/4 p3, 0x0

    .line 25
    iput-boolean p3, p0, Lcom/meizu/settings/deviceinfo/FlymeUsbPreference;->mChecked:Z

    const p3, 0x7f0d029a

    .line 58
    invoke-virtual {p0, p3}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 61
    invoke-super {p0}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object p3

    if-eqz p3, :cond_29

    .line 62
    invoke-super {p0}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object p3

    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/meizu/settings/deviceinfo/FlymeUsbPreference;->mTitleValue:Ljava/lang/CharSequence;

    .line 66
    :cond_29
    invoke-super {p0}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object p3

    if-eqz p3, :cond_39

    .line 67
    invoke-super {p0}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object p3

    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/meizu/settings/deviceinfo/FlymeUsbPreference;->mSummaryValue:Ljava/lang/CharSequence;

    .line 70
    :cond_39
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0xa08015e

    invoke-virtual {p1, p3, p2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/deviceinfo/FlymeUsbPreference;->mCheckedDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public getSummary()Ljava/lang/CharSequence;
    .registers 1

    .line 124
    iget-object p0, p0, Lcom/meizu/settings/deviceinfo/FlymeUsbPreference;->mSummaryValue:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .registers 1

    .line 100
    iget-object p0, p0, Lcom/meizu/settings/deviceinfo/FlymeUsbPreference;->mTitleValue:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 4

    .line 76
    invoke-super {p0, p1, p2}, Landroid/preference/Preference;->getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a079d

    .line 77
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/meizu/settings/deviceinfo/FlymeUsbPreference;->mPreferenceTitle:Landroid/widget/TextView;

    .line 78
    iget-object p2, p0, Lcom/meizu/settings/deviceinfo/FlymeUsbPreference;->mPreferenceTitle:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeUsbPreference;->mTitleValue:Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p2, 0x7f0a079c

    .line 79
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/meizu/settings/deviceinfo/FlymeUsbPreference;->mPreferenceSummary:Landroid/widget/TextView;

    .line 80
    iget-object p2, p0, Lcom/meizu/settings/deviceinfo/FlymeUsbPreference;->mPreferenceSummary:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeUsbPreference;->mSummaryValue:Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p2, 0x7f0a079b

    .line 81
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/CheckedTextView;

    iput-object p2, p0, Lcom/meizu/settings/deviceinfo/FlymeUsbPreference;->mPreferenceButton:Landroid/widget/CheckedTextView;

    .line 82
    iget-object p2, p0, Lcom/meizu/settings/deviceinfo/FlymeUsbPreference;->mPreferenceButton:Landroid/widget/CheckedTextView;

    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeUsbPreference;->mCheckedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, v0}, Landroid/widget/CheckedTextView;->setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 83
    iget-object p2, p0, Lcom/meizu/settings/deviceinfo/FlymeUsbPreference;->mPreferenceButton:Landroid/widget/CheckedTextView;

    iget-boolean p0, p0, Lcom/meizu/settings/deviceinfo/FlymeUsbPreference;->mChecked:Z

    invoke-virtual {p2, p0}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    return-object p1
.end method

.method public isChecked()Z
    .registers 1

    .line 133
    iget-boolean p0, p0, Lcom/meizu/settings/deviceinfo/FlymeUsbPreference;->mChecked:Z

    return p0
.end method

.method protected onClick()V
    .registers 3

    .line 149
    invoke-super {p0}, Landroid/preference/Preference;->onClick()V

    .line 151
    invoke-virtual {p0}, Lcom/meizu/settings/deviceinfo/FlymeUsbPreference;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_c

    return-void

    .line 157
    :cond_c
    invoke-virtual {p0, v0}, Lcom/meizu/settings/deviceinfo/FlymeUsbPreference;->setChecked(Z)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 158
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    :cond_19
    return-void
.end method

.method public setChecked(Z)Z
    .registers 5

    .line 169
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeUsbPreference;->mPreferenceButton:Landroid/widget/CheckedTextView;

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 170
    iput-boolean p1, p0, Lcom/meizu/settings/deviceinfo/FlymeUsbPreference;->mChecked:Z

    return v1

    .line 174
    :cond_8
    iget-boolean v2, p0, Lcom/meizu/settings/deviceinfo/FlymeUsbPreference;->mChecked:Z

    if-eq v2, p1, :cond_25

    .line 175
    invoke-virtual {v0, p1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 176
    iput-boolean p1, p0, Lcom/meizu/settings/deviceinfo/FlymeUsbPreference;->mChecked:Z

    .line 177
    iget-boolean p1, p0, Lcom/meizu/settings/deviceinfo/FlymeUsbPreference;->mChecked:Z

    if-eqz p1, :cond_1d

    .line 178
    iget-object p1, p0, Lcom/meizu/settings/deviceinfo/FlymeUsbPreference;->mPreferenceButton:Landroid/widget/CheckedTextView;

    iget-object p0, p0, Lcom/meizu/settings/deviceinfo/FlymeUsbPreference;->mCheckedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p0}, Landroid/widget/CheckedTextView;->setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_23

    .line 180
    :cond_1d
    iget-object p0, p0, Lcom/meizu/settings/deviceinfo/FlymeUsbPreference;->mPreferenceButton:Landroid/widget/CheckedTextView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/CheckedTextView;->setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_23
    const/4 p0, 0x1

    return p0

    :cond_25
    return v1
.end method

.method public setSummary(Ljava/lang/CharSequence;)V
    .registers 3

    .line 109
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeUsbPreference;->mPreferenceSummary:Landroid/widget/TextView;

    if-nez v0, :cond_6

    .line 110
    iput-object p1, p0, Lcom/meizu/settings/deviceinfo/FlymeUsbPreference;->mSummaryValue:Ljava/lang/CharSequence;

    .line 112
    :cond_6
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeUsbPreference;->mSummaryValue:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 113
    iput-object p1, p0, Lcom/meizu/settings/deviceinfo/FlymeUsbPreference;->mSummaryValue:Ljava/lang/CharSequence;

    .line 114
    iget-object p1, p0, Lcom/meizu/settings/deviceinfo/FlymeUsbPreference;->mPreferenceSummary:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/meizu/settings/deviceinfo/FlymeUsbPreference;->mSummaryValue:Ljava/lang/CharSequence;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_17
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .registers 3

    .line 89
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeUsbPreference;->mPreferenceTitle:Landroid/widget/TextView;

    if-nez v0, :cond_6

    .line 90
    iput-object p1, p0, Lcom/meizu/settings/deviceinfo/FlymeUsbPreference;->mTitleValue:Ljava/lang/CharSequence;

    .line 92
    :cond_6
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeUsbPreference;->mTitleValue:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 93
    iput-object p1, p0, Lcom/meizu/settings/deviceinfo/FlymeUsbPreference;->mTitleValue:Ljava/lang/CharSequence;

    .line 94
    iget-object p1, p0, Lcom/meizu/settings/deviceinfo/FlymeUsbPreference;->mPreferenceTitle:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/meizu/settings/deviceinfo/FlymeUsbPreference;->mTitleValue:Ljava/lang/CharSequence;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_17
    return-void
.end method
