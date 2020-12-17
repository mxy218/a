.class public Lcom/meizu/settings/widget/HilightTextPreference;
.super Landroid/preference/Preference;
.source "HilightTextPreference.java"


# instance fields
.field private mHilight:Z

.field private mHilightColor:Landroid/content/res/ColorStateList;

.field private mPreColor:Landroid/content/res/ColorStateList;

.field private mResources:Landroid/content/res/Resources;

.field private mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 24
    invoke-direct {p0, p1, v0}, Lcom/meizu/settings/widget/HilightTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 28
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/widget/HilightTextPreference;->mResources:Landroid/content/res/Resources;

    .line 30
    iget-object p1, p0, Lcom/meizu/settings/widget/HilightTextPreference;->mResources:Landroid/content/res/Resources;

    const p2, 0x7f060286

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/widget/HilightTextPreference;->mHilightColor:Landroid/content/res/ColorStateList;

    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .registers 3

    .line 45
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 46
    iget-object p1, p0, Lcom/meizu/settings/widget/HilightTextPreference;->mTitle:Landroid/widget/TextView;

    if-eqz p1, :cond_13

    .line 47
    iget-boolean v0, p0, Lcom/meizu/settings/widget/HilightTextPreference;->mHilight:Z

    if-eqz v0, :cond_e

    iget-object p0, p0, Lcom/meizu/settings/widget/HilightTextPreference;->mHilightColor:Landroid/content/res/ColorStateList;

    goto :goto_10

    :cond_e
    iget-object p0, p0, Lcom/meizu/settings/widget/HilightTextPreference;->mPreColor:Landroid/content/res/ColorStateList;

    :goto_10
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_13
    return-void
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 3

    .line 35
    invoke-super {p0, p1}, Landroid/preference/Preference;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const v0, 0x1020016

    .line 36
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/settings/widget/HilightTextPreference;->mTitle:Landroid/widget/TextView;

    .line 37
    iget-object v0, p0, Lcom/meizu/settings/widget/HilightTextPreference;->mTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_19

    .line 38
    invoke-virtual {v0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/widget/HilightTextPreference;->mPreColor:Landroid/content/res/ColorStateList;

    :cond_19
    return-object p1
.end method

.method public setHilight(Z)V
    .registers 3

    .line 52
    iget-boolean v0, p0, Lcom/meizu/settings/widget/HilightTextPreference;->mHilight:Z

    if-eq v0, p1, :cond_9

    .line 53
    iput-boolean p1, p0, Lcom/meizu/settings/widget/HilightTextPreference;->mHilight:Z

    .line 54
    invoke-virtual {p0}, Landroid/preference/Preference;->notifyChanged()V

    :cond_9
    return-void
.end method
