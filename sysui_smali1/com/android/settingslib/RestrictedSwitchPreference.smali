.class public Lcom/android/settingslib/RestrictedSwitchPreference;
.super Landroidx/preference/SwitchPreference;
.source "RestrictedSwitchPreference.java"


# instance fields
.field mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

.field mRestrictedSwitchSummary:Ljava/lang/CharSequence;

.field mUseAdditionalSummary:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 87
    invoke-direct {p0, p1, v0}, Lcom/android/settingslib/RestrictedSwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    .line 82
    sget v0, Lcom/android/settingslib/R$attr;->switchPreferenceStyle:I

    const v1, 0x101036d

    invoke-static {p1, v0, v1}, Landroidx/core/content/res/TypedArrayUtils;->getAttr(Landroid/content/Context;II)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settingslib/RestrictedSwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const/4 v0, 0x0

    .line 78
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/settingslib/RestrictedSwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 7

    .line 45
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p3, 0x0

    .line 40
    iput-boolean p3, p0, Lcom/android/settingslib/RestrictedSwitchPreference;->mUseAdditionalSummary:Z

    .line 46
    sget p4, Lcom/android/settingslib/R$layout;->restricted_switch_widget:I

    invoke-virtual {p0, p4}, Landroidx/preference/Preference;->setWidgetLayoutResource(I)V

    .line 47
    new-instance p4, Lcom/android/settingslib/RestrictedPreferenceHelper;

    invoke-direct {p4, p1, p0, p2}, Lcom/android/settingslib/RestrictedPreferenceHelper;-><init>(Landroid/content/Context;Landroidx/preference/Preference;Landroid/util/AttributeSet;)V

    iput-object p4, p0, Lcom/android/settingslib/RestrictedSwitchPreference;->mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

    if-eqz p2, :cond_4d

    .line 49
    sget-object p4, Lcom/android/settingslib/R$styleable;->RestrictedSwitchPreference:[I

    invoke-virtual {p1, p2, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 51
    sget p4, Lcom/android/settingslib/R$styleable;->RestrictedSwitchPreference_useAdditionalSummary:I

    invoke-virtual {p2, p4}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object p4

    if-eqz p4, :cond_31

    .line 54
    iget v0, p4, Landroid/util/TypedValue;->type:I

    const/16 v1, 0x12

    if-ne v0, v1, :cond_2e

    iget p4, p4, Landroid/util/TypedValue;->data:I

    if-eqz p4, :cond_2e

    const/4 p4, 0x1

    goto :goto_2f

    :cond_2e
    move p4, p3

    :goto_2f
    iput-boolean p4, p0, Lcom/android/settingslib/RestrictedSwitchPreference;->mUseAdditionalSummary:Z

    .line 59
    :cond_31
    sget p4, Lcom/android/settingslib/R$styleable;->RestrictedSwitchPreference_restrictedSwitchSummary:I

    invoke-virtual {p2, p4}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object p2

    if-eqz p2, :cond_4d

    .line 61
    iget p4, p2, Landroid/util/TypedValue;->type:I

    const/4 v0, 0x3

    if-ne p4, v0, :cond_4d

    .line 63
    iget p4, p2, Landroid/util/TypedValue;->resourceId:I

    if-eqz p4, :cond_49

    .line 65
    invoke-virtual {p1, p4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/RestrictedSwitchPreference;->mRestrictedSwitchSummary:Ljava/lang/CharSequence;

    goto :goto_4d

    .line 67
    :cond_49
    iget-object p1, p2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    iput-object p1, p0, Lcom/android/settingslib/RestrictedSwitchPreference;->mRestrictedSwitchSummary:Ljava/lang/CharSequence;

    .line 71
    :cond_4d
    :goto_4d
    iget-boolean p1, p0, Lcom/android/settingslib/RestrictedSwitchPreference;->mUseAdditionalSummary:Z

    if-eqz p1, :cond_59

    .line 72
    sget p1, Lcom/android/settingslib/R$layout;->restricted_switch_preference:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    .line 73
    invoke-virtual {p0, p3}, Lcom/android/settingslib/RestrictedSwitchPreference;->useAdminDisabledSummary(Z)V

    :cond_59
    return-void
.end method


# virtual methods
.method public isDisabledByAdmin()Z
    .registers 1

    .line 177
    iget-object p0, p0, Lcom/android/settingslib/RestrictedSwitchPreference;->mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

    invoke-virtual {p0}, Lcom/android/settingslib/RestrictedPreferenceHelper;->isDisabledByAdmin()Z

    move-result p0

    return p0
.end method

.method protected onAttachedToHierarchy(Landroidx/preference/PreferenceManager;)V
    .registers 3

    .line 149
    iget-object v0, p0, Lcom/android/settingslib/RestrictedSwitchPreference;->mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

    invoke-virtual {v0}, Lcom/android/settingslib/RestrictedPreferenceHelper;->onAttachedToHierarchy()V

    .line 150
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onAttachedToHierarchy(Landroidx/preference/PreferenceManager;)V

    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .registers 8

    .line 92
    invoke-super {p0, p1}, Landroidx/preference/SwitchPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 93
    iget-object v0, p0, Lcom/android/settingslib/RestrictedSwitchPreference;->mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

    invoke-virtual {v0, p1}, Lcom/android/settingslib/RestrictedPreferenceHelper;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 96
    iget-object v0, p0, Lcom/android/settingslib/RestrictedSwitchPreference;->mRestrictedSwitchSummary:Ljava/lang/CharSequence;

    if-nez v0, :cond_1f

    .line 97
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 98
    sget v1, Lcom/android/settingslib/R$string;->enabled_by_admin:I

    goto :goto_1b

    :cond_19
    sget v1, Lcom/android/settingslib/R$string;->disabled_by_admin:I

    .line 97
    :goto_1b
    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 103
    :cond_1f
    sget v1, Lcom/android/settingslib/R$id;->restricted_icon:I

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x1020040

    .line 104
    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-eqz v1, :cond_3d

    .line 106
    invoke-virtual {p0}, Lcom/android/settingslib/RestrictedSwitchPreference;->isDisabledByAdmin()Z

    move-result v5

    if-eqz v5, :cond_39

    move v5, v4

    goto :goto_3a

    :cond_39
    move v5, v3

    :goto_3a
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_3d
    if-eqz v2, :cond_4b

    .line 109
    invoke-virtual {p0}, Lcom/android/settingslib/RestrictedSwitchPreference;->isDisabledByAdmin()Z

    move-result v1

    if-eqz v1, :cond_47

    move v1, v3

    goto :goto_48

    :cond_47
    move v1, v4

    :goto_48
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 112
    :cond_4b
    iget-boolean v1, p0, Lcom/android/settingslib/RestrictedSwitchPreference;->mUseAdditionalSummary:Z

    if-eqz v1, :cond_6a

    .line 113
    sget v1, Lcom/android/settingslib/R$id;->additional_summary:I

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_81

    .line 116
    invoke-virtual {p0}, Lcom/android/settingslib/RestrictedSwitchPreference;->isDisabledByAdmin()Z

    move-result p0

    if-eqz p0, :cond_66

    .line 117
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_81

    .line 120
    :cond_66
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_81

    :cond_6a
    const v1, 0x1020010

    .line 124
    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_81

    .line 126
    invoke-virtual {p0}, Lcom/android/settingslib/RestrictedSwitchPreference;->isDisabledByAdmin()Z

    move-result p0

    if-eqz p0, :cond_81

    .line 127
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_81
    :goto_81
    return-void
.end method

.method public performClick()V
    .registers 2

    .line 138
    iget-object v0, p0, Lcom/android/settingslib/RestrictedSwitchPreference;->mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

    invoke-virtual {v0}, Lcom/android/settingslib/RestrictedPreferenceHelper;->performClick()Z

    move-result v0

    if-nez v0, :cond_b

    .line 139
    invoke-super {p0}, Landroidx/preference/Preference;->performClick()V

    :cond_b
    return-void
.end method

.method public setEnabled(Z)V
    .registers 3

    if-eqz p1, :cond_f

    .line 163
    invoke-virtual {p0}, Lcom/android/settingslib/RestrictedSwitchPreference;->isDisabledByAdmin()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 164
    iget-object p0, p0, Lcom/android/settingslib/RestrictedSwitchPreference;->mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/settingslib/RestrictedPreferenceHelper;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)Z

    return-void

    .line 167
    :cond_f
    invoke-super {p0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void
.end method

.method public useAdminDisabledSummary(Z)V
    .registers 2

    .line 144
    iget-object p0, p0, Lcom/android/settingslib/RestrictedSwitchPreference;->mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/RestrictedPreferenceHelper;->useAdminDisabledSummary(Z)V

    return-void
.end method
