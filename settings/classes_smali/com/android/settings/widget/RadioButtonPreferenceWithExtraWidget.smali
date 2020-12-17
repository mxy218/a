.class public Lcom/android/settings/widget/RadioButtonPreferenceWithExtraWidget;
.super Lcom/android/settings/widget/RadioButtonPreference;
.source "RadioButtonPreferenceWithExtraWidget.java"


# instance fields
.field private mExtraWidget:Landroid/widget/ImageView;

.field private mExtraWidgetDivider:Landroid/view/View;

.field private mExtraWidgetOnClickListener:Landroid/view/View$OnClickListener;

.field private mExtraWidgetVisibility:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, p1, v0}, Lcom/android/settings/widget/RadioButtonPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 35
    iput p1, p0, Lcom/android/settings/widget/RadioButtonPreferenceWithExtraWidget;->mExtraWidgetVisibility:I

    const p1, 0x7f0d0209

    .line 42
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .registers 3

    .line 48
    invoke-super {p0, p1}, Lcom/android/settings/widget/RadioButtonPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x7f0a05b8

    .line 50
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/widget/RadioButtonPreferenceWithExtraWidget;->mExtraWidget:Landroid/widget/ImageView;

    const v0, 0x7f0a05ba

    .line 51
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/widget/RadioButtonPreferenceWithExtraWidget;->mExtraWidgetDivider:Landroid/view/View;

    .line 52
    iget p1, p0, Lcom/android/settings/widget/RadioButtonPreferenceWithExtraWidget;->mExtraWidgetVisibility:I

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/RadioButtonPreferenceWithExtraWidget;->setExtraWidgetVisibility(I)V

    .line 54
    iget-object p1, p0, Lcom/android/settings/widget/RadioButtonPreferenceWithExtraWidget;->mExtraWidgetOnClickListener:Landroid/view/View$OnClickListener;

    if-eqz p1, :cond_23

    .line 55
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/RadioButtonPreferenceWithExtraWidget;->setExtraWidgetOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_23
    return-void
.end method

.method public setExtraWidgetOnClickListener(Landroid/view/View$OnClickListener;)V
    .registers 4

    .line 86
    iput-object p1, p0, Lcom/android/settings/widget/RadioButtonPreferenceWithExtraWidget;->mExtraWidgetOnClickListener:Landroid/view/View$OnClickListener;

    .line 87
    iget-object v0, p0, Lcom/android/settings/widget/RadioButtonPreferenceWithExtraWidget;->mExtraWidget:Landroid/widget/ImageView;

    if-eqz v0, :cond_f

    const/4 v1, 0x1

    .line 88
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 89
    iget-object p0, p0, Lcom/android/settings/widget/RadioButtonPreferenceWithExtraWidget;->mExtraWidget:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_f
    return-void
.end method

.method public setExtraWidgetVisibility(I)V
    .registers 4

    .line 60
    iput p1, p0, Lcom/android/settings/widget/RadioButtonPreferenceWithExtraWidget;->mExtraWidgetVisibility:I

    .line 61
    iget-object v0, p0, Lcom/android/settings/widget/RadioButtonPreferenceWithExtraWidget;->mExtraWidget:Landroid/widget/ImageView;

    if-eqz v0, :cond_6c

    iget-object v1, p0, Lcom/android/settings/widget/RadioButtonPreferenceWithExtraWidget;->mExtraWidgetDivider:Landroid/view/View;

    if-nez v1, :cond_b

    goto :goto_6c

    :cond_b
    const/4 v1, 0x0

    if-nez p1, :cond_1e

    .line 66
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 67
    iget-object p1, p0, Lcom/android/settings/widget/RadioButtonPreferenceWithExtraWidget;->mExtraWidget:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 68
    iget-object p0, p0, Lcom/android/settings/widget/RadioButtonPreferenceWithExtraWidget;->mExtraWidgetDivider:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6c

    :cond_1e
    const/4 p1, 0x1

    .line 70
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 71
    iget-object v0, p0, Lcom/android/settings/widget/RadioButtonPreferenceWithExtraWidget;->mExtraWidget:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 72
    iget-object v0, p0, Lcom/android/settings/widget/RadioButtonPreferenceWithExtraWidget;->mExtraWidgetDivider:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 73
    iget v0, p0, Lcom/android/settings/widget/RadioButtonPreferenceWithExtraWidget;->mExtraWidgetVisibility:I

    if-ne v0, p1, :cond_4d

    .line 74
    iget-object p1, p0, Lcom/android/settings/widget/RadioButtonPreferenceWithExtraWidget;->mExtraWidget:Landroid/widget/ImageView;

    const v0, 0x7f0802ab

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 75
    iget-object p1, p0, Lcom/android/settings/widget/RadioButtonPreferenceWithExtraWidget;->mExtraWidget:Landroid/widget/ImageView;

    .line 76
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f120a07

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    .line 75
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_6c

    :cond_4d
    const/4 p1, 0x2

    if-ne v0, p1, :cond_6c

    .line 78
    iget-object p1, p0, Lcom/android/settings/widget/RadioButtonPreferenceWithExtraWidget;->mExtraWidget:Landroid/widget/ImageView;

    const v0, 0x7f0802ac

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 79
    iget-object p1, p0, Lcom/android/settings/widget/RadioButtonPreferenceWithExtraWidget;->mExtraWidget:Landroid/widget/ImageView;

    .line 80
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f12139c

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    .line 79
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_6c
    :goto_6c
    return-void
.end method
