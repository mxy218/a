.class public Lcom/meizu/settings/widget/RestrictedPreferenceHelper;
.super Ljava/lang/Object;
.source "RestrictedPreferenceHelper.java"


# instance fields
.field private mAttrUserRestriction:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mDisabledByAdmin:Z

.field private mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

.field private mPreference:Landroid/preference/Preference;

.field private mUseAdminDisabledSummary:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/preference/Preference;Landroid/util/AttributeSet;)V
    .registers 9

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 41
    iput-object v0, p0, Lcom/meizu/settings/widget/RestrictedPreferenceHelper;->mPreference:Landroid/preference/Preference;

    .line 45
    iput-object v0, p0, Lcom/meizu/settings/widget/RestrictedPreferenceHelper;->mAttrUserRestriction:Ljava/lang/String;

    const/4 v1, 0x0

    .line 46
    iput-boolean v1, p0, Lcom/meizu/settings/widget/RestrictedPreferenceHelper;->mUseAdminDisabledSummary:Z

    .line 50
    iput-object p1, p0, Lcom/meizu/settings/widget/RestrictedPreferenceHelper;->mContext:Landroid/content/Context;

    .line 51
    iput-object p2, p0, Lcom/meizu/settings/widget/RestrictedPreferenceHelper;->mPreference:Landroid/preference/Preference;

    if-eqz p3, :cond_5f

    .line 54
    sget-object p2, Lcom/android/settings/R$styleable;->RestrictedPreference:[I

    invoke-virtual {p1, p3, p2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 p3, 0x1

    .line 57
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    if-eqz v2, :cond_2f

    .line 59
    iget v3, v2, Landroid/util/TypedValue;->type:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2f

    .line 60
    iget v3, v2, Landroid/util/TypedValue;->resourceId:I

    if-eqz v3, :cond_2c

    .line 61
    invoke-virtual {p1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_30

    .line 63
    :cond_2c
    iget-object p1, v2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    goto :goto_30

    :cond_2f
    move-object p1, v0

    :goto_30
    if-nez p1, :cond_34

    move-object p1, v0

    goto :goto_38

    .line 66
    :cond_34
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_38
    iput-object p1, p0, Lcom/meizu/settings/widget/RestrictedPreferenceHelper;->mAttrUserRestriction:Ljava/lang/String;

    .line 68
    iget-object p1, p0, Lcom/meizu/settings/widget/RestrictedPreferenceHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/meizu/settings/widget/RestrictedPreferenceHelper;->mAttrUserRestriction:Ljava/lang/String;

    .line 69
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    .line 68
    invoke-static {p1, v2, v3}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_4b

    .line 70
    iput-object v0, p0, Lcom/meizu/settings/widget/RestrictedPreferenceHelper;->mAttrUserRestriction:Ljava/lang/String;

    return-void

    .line 75
    :cond_4b
    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object p1

    if-eqz p1, :cond_5f

    .line 77
    iget p2, p1, Landroid/util/TypedValue;->type:I

    const/16 v0, 0x12

    if-ne p2, v0, :cond_5c

    iget p1, p1, Landroid/util/TypedValue;->data:I

    if-eqz p1, :cond_5c

    goto :goto_5d

    :cond_5c
    move p3, v1

    :goto_5d
    iput-boolean p3, p0, Lcom/meizu/settings/widget/RestrictedPreferenceHelper;->mUseAdminDisabledSummary:Z

    :cond_5f
    return-void
.end method


# virtual methods
.method public checkRestrictionAndSetDisabled(Ljava/lang/String;I)V
    .registers 4

    .line 117
    iget-object v0, p0, Lcom/meizu/settings/widget/RestrictedPreferenceHelper;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p1

    .line 119
    invoke-virtual {p0, p1}, Lcom/meizu/settings/widget/RestrictedPreferenceHelper;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)Z

    return-void
.end method

.method public isDisabledByAdmin()Z
    .registers 1

    .line 144
    iget-boolean p0, p0, Lcom/meizu/settings/widget/RestrictedPreferenceHelper;->mDisabledByAdmin:Z

    return p0
.end method

.method public onAttachedToHierarchy()V
    .registers 3

    .line 105
    iget-object v0, p0, Lcom/meizu/settings/widget/RestrictedPreferenceHelper;->mAttrUserRestriction:Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 106
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/meizu/settings/widget/RestrictedPreferenceHelper;->checkRestrictionAndSetDisabled(Ljava/lang/String;I)V

    :cond_b
    return-void
.end method

.method public onBindView(Landroid/view/View;)V
    .registers 3

    .line 148
    iget-boolean v0, p0, Lcom/meizu/settings/widget/RestrictedPreferenceHelper;->mDisabledByAdmin:Z

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    .line 149
    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 151
    :cond_8
    iget-boolean v0, p0, Lcom/meizu/settings/widget/RestrictedPreferenceHelper;->mUseAdminDisabledSummary:Z

    if-eqz v0, :cond_2b

    const v0, 0x1020010

    .line 152
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_2b

    .line 154
    iget-boolean p0, p0, Lcom/meizu/settings/widget/RestrictedPreferenceHelper;->mDisabledByAdmin:Z

    if-eqz p0, :cond_26

    const p0, 0x7f1206fe

    .line 155
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(I)V

    const/4 p0, 0x0

    .line 156
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2b

    :cond_26
    const/16 p0, 0x8

    .line 158
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2b
    :goto_2b
    return-void
.end method

.method public performClick()Z
    .registers 2

    .line 94
    iget-boolean v0, p0, Lcom/meizu/settings/widget/RestrictedPreferenceHelper;->mDisabledByAdmin:Z

    if-eqz v0, :cond_d

    .line 95
    iget-object v0, p0, Lcom/meizu/settings/widget/RestrictedPreferenceHelper;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/meizu/settings/widget/RestrictedPreferenceHelper;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-static {v0, p0}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    const/4 p0, 0x1

    return p0

    :cond_d
    const/4 p0, 0x0

    return p0
.end method

.method public setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)Z
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_6

    move v2, v1

    goto :goto_7

    :cond_6
    move v2, v0

    .line 129
    :goto_7
    iput-object p1, p0, Lcom/meizu/settings/widget/RestrictedPreferenceHelper;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    .line 131
    iget-boolean p1, p0, Lcom/meizu/settings/widget/RestrictedPreferenceHelper;->mDisabledByAdmin:Z

    if-eq p1, v2, :cond_10

    .line 132
    iput-boolean v2, p0, Lcom/meizu/settings/widget/RestrictedPreferenceHelper;->mDisabledByAdmin:Z

    move v0, v1

    .line 136
    :cond_10
    iget-object p0, p0, Lcom/meizu/settings/widget/RestrictedPreferenceHelper;->mPreference:Landroid/preference/Preference;

    if-eqz p0, :cond_19

    xor-int/lit8 p1, v2, 0x1

    .line 137
    invoke-virtual {p0, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_19
    return v0
.end method

.method public useAdminDisabledSummary(Z)V
    .registers 2

    .line 85
    iput-boolean p1, p0, Lcom/meizu/settings/widget/RestrictedPreferenceHelper;->mUseAdminDisabledSummary:Z

    return-void
.end method
