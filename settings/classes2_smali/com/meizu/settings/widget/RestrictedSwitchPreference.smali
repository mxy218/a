.class public Lcom/meizu/settings/widget/RestrictedSwitchPreference;
.super Lcom/meizu/common/preference/SwitchPreference;
.source "RestrictedSwitchPreference.java"


# instance fields
.field private mHelper:Lcom/meizu/settings/widget/RestrictedPreferenceHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, p1, v0}, Lcom/meizu/settings/widget/RestrictedSwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const v0, 0x7f040017

    .line 43
    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/settings/widget/RestrictedSwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 48
    invoke-direct {p0, p1, p2, p3}, Lcom/meizu/common/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    invoke-direct {p0, p1, p2}, Lcom/meizu/settings/widget/RestrictedSwitchPreference;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/settings/widget/RestrictedSwitchPreference;)Lcom/meizu/settings/widget/RestrictedPreferenceHelper;
    .registers 1

    .line 34
    iget-object p0, p0, Lcom/meizu/settings/widget/RestrictedSwitchPreference;->mHelper:Lcom/meizu/settings/widget/RestrictedPreferenceHelper;

    return-object p0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 53
    new-instance v0, Lcom/meizu/settings/widget/RestrictedPreferenceHelper;

    invoke-direct {v0, p1, p0, p2}, Lcom/meizu/settings/widget/RestrictedPreferenceHelper;-><init>(Landroid/content/Context;Landroid/preference/Preference;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/meizu/settings/widget/RestrictedSwitchPreference;->mHelper:Lcom/meizu/settings/widget/RestrictedPreferenceHelper;

    return-void
.end method


# virtual methods
.method public checkRestrictionAndSetDisabled(Ljava/lang/String;)V
    .registers 3

    .line 82
    iget-object p0, p0, Lcom/meizu/settings/widget/RestrictedSwitchPreference;->mHelper:Lcom/meizu/settings/widget/RestrictedPreferenceHelper;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/meizu/settings/widget/RestrictedPreferenceHelper;->checkRestrictionAndSetDisabled(Ljava/lang/String;I)V

    return-void
.end method

.method public isDisabledByAdmin()Z
    .registers 1

    .line 105
    iget-object p0, p0, Lcom/meizu/settings/widget/RestrictedSwitchPreference;->mHelper:Lcom/meizu/settings/widget/RestrictedPreferenceHelper;

    invoke-virtual {p0}, Lcom/meizu/settings/widget/RestrictedPreferenceHelper;->isDisabledByAdmin()Z

    move-result p0

    return p0
.end method

.method protected onAttachedToHierarchy(Landroid/preference/PreferenceManager;)V
    .registers 3

    .line 77
    iget-object v0, p0, Lcom/meizu/settings/widget/RestrictedSwitchPreference;->mHelper:Lcom/meizu/settings/widget/RestrictedPreferenceHelper;

    invoke-virtual {v0}, Lcom/meizu/settings/widget/RestrictedPreferenceHelper;->onAttachedToHierarchy()V

    .line 78
    invoke-super {p0, p1}, Landroid/preference/TwoStatePreference;->onAttachedToHierarchy(Landroid/preference/PreferenceManager;)V

    return-void
.end method

.method public onBindView(Landroid/view/View;)V
    .registers 3

    .line 58
    invoke-super {p0, p1}, Lcom/meizu/common/preference/SwitchPreference;->onBindView(Landroid/view/View;)V

    .line 59
    iget-object v0, p0, Lcom/meizu/settings/widget/RestrictedSwitchPreference;->mHelper:Lcom/meizu/settings/widget/RestrictedPreferenceHelper;

    invoke-virtual {v0, p1}, Lcom/meizu/settings/widget/RestrictedPreferenceHelper;->onBindView(Landroid/view/View;)V

    .line 61
    invoke-virtual {p0}, Lcom/meizu/settings/widget/RestrictedSwitchPreference;->isDisabledByAdmin()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 62
    new-instance v0, Lcom/meizu/settings/widget/RestrictedSwitchPreference$1;

    invoke-direct {v0, p0}, Lcom/meizu/settings/widget/RestrictedSwitchPreference$1;-><init>(Lcom/meizu/settings/widget/RestrictedSwitchPreference;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_16
    return-void
.end method

.method public setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V
    .registers 3

    .line 99
    iget-object v0, p0, Lcom/meizu/settings/widget/RestrictedSwitchPreference;->mHelper:Lcom/meizu/settings/widget/RestrictedPreferenceHelper;

    invoke-virtual {v0, p1}, Lcom/meizu/settings/widget/RestrictedPreferenceHelper;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 100
    invoke-virtual {p0}, Landroid/preference/TwoStatePreference;->notifyChanged()V

    :cond_b
    return-void
.end method

.method public setEnabled(Z)V
    .registers 3

    if-eqz p1, :cond_f

    .line 91
    invoke-virtual {p0}, Lcom/meizu/settings/widget/RestrictedSwitchPreference;->isDisabledByAdmin()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 92
    iget-object p0, p0, Lcom/meizu/settings/widget/RestrictedSwitchPreference;->mHelper:Lcom/meizu/settings/widget/RestrictedPreferenceHelper;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/meizu/settings/widget/RestrictedPreferenceHelper;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)Z

    return-void

    .line 95
    :cond_f
    invoke-super {p0, p1}, Landroid/preference/TwoStatePreference;->setEnabled(Z)V

    return-void
.end method
