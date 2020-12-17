.class public Lcom/android/settings/widget/AddPreference;
.super Lcom/android/settingslib/RestrictedPreference;
.source "AddPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/widget/AddPreference$OnAddClickListener;
    }
.end annotation


# instance fields
.field private mAddWidget:Landroid/view/View;

.field private mListener:Lcom/android/settings/widget/AddPreference$OnAddClickListener;

.field private mWidgetFrame:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/RestrictedPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method getAddWidgetResId()I
    .registers 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const p0, 0x7f0a006b

    return p0
.end method

.method protected getSecondTargetResId()I
    .registers 1

    const p0, 0x7f0d029d

    return p0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .registers 3

    .line 75
    invoke-super {p0, p1}, Lcom/android/settingslib/RestrictedPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x1020018

    .line 76
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/widget/AddPreference;->mWidgetFrame:Landroid/view/View;

    .line 77
    invoke-virtual {p0}, Lcom/android/settings/widget/AddPreference;->getAddWidgetResId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/widget/AddPreference;->mAddWidget:Landroid/view/View;

    .line 78
    iget-object p1, p0, Lcom/android/settings/widget/AddPreference;->mAddWidget:Landroid/view/View;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 79
    iget-object p1, p0, Lcom/android/settings/widget/AddPreference;->mAddWidget:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 84
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-virtual {p0}, Lcom/android/settings/widget/AddPreference;->getAddWidgetResId()I

    move-result v0

    if-ne p1, v0, :cond_11

    iget-object p1, p0, Lcom/android/settings/widget/AddPreference;->mListener:Lcom/android/settings/widget/AddPreference$OnAddClickListener;

    if-eqz p1, :cond_11

    .line 85
    invoke-interface {p1, p0}, Lcom/android/settings/widget/AddPreference$OnAddClickListener;->onAddClick(Lcom/android/settings/widget/AddPreference;)V

    :cond_11
    return-void
.end method

.method public setAddWidgetEnabled(Z)V
    .registers 2

    .line 58
    iget-object p0, p0, Lcom/android/settings/widget/AddPreference;->mAddWidget:Landroid/view/View;

    if-eqz p0, :cond_7

    .line 59
    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_7
    return-void
.end method

.method public setOnAddClickListener(Lcom/android/settings/widget/AddPreference$OnAddClickListener;)V
    .registers 2

    .line 51
    iput-object p1, p0, Lcom/android/settings/widget/AddPreference;->mListener:Lcom/android/settings/widget/AddPreference$OnAddClickListener;

    .line 52
    iget-object p1, p0, Lcom/android/settings/widget/AddPreference;->mWidgetFrame:Landroid/view/View;

    if-eqz p1, :cond_13

    .line 53
    invoke-virtual {p0}, Lcom/android/settings/widget/AddPreference;->shouldHideSecondTarget()Z

    move-result p0

    if-eqz p0, :cond_f

    const/16 p0, 0x8

    goto :goto_10

    :cond_f
    const/4 p0, 0x0

    :goto_10
    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    :cond_13
    return-void
.end method

.method protected shouldHideSecondTarget()Z
    .registers 1

    .line 70
    iget-object p0, p0, Lcom/android/settings/widget/AddPreference;->mListener:Lcom/android/settings/widget/AddPreference$OnAddClickListener;

    if-nez p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method
