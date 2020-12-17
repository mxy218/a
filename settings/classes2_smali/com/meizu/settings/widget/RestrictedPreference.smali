.class public Lcom/meizu/settings/widget/RestrictedPreference;
.super Landroid/preference/Preference;
.source "RestrictedPreference.java"


# instance fields
.field private mHelper:Lcom/meizu/settings/widget/RestrictedPreferenceHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 37
    invoke-direct {p0, p1, v0}, Lcom/meizu/settings/widget/RestrictedPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const v0, 0x101008e

    .line 41
    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/settings/widget/RestrictedPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const/4 v0, 0x0

    .line 46
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/meizu/settings/widget/RestrictedPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    .line 51
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/meizu/settings/widget/RestrictedPreference;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/settings/widget/RestrictedPreference;)Lcom/meizu/settings/widget/RestrictedPreferenceHelper;
    .registers 1

    .line 32
    iget-object p0, p0, Lcom/meizu/settings/widget/RestrictedPreference;->mHelper:Lcom/meizu/settings/widget/RestrictedPreferenceHelper;

    return-object p0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 56
    new-instance v0, Lcom/meizu/settings/widget/RestrictedPreferenceHelper;

    invoke-direct {v0, p1, p0, p2}, Lcom/meizu/settings/widget/RestrictedPreferenceHelper;-><init>(Landroid/content/Context;Landroid/preference/Preference;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/meizu/settings/widget/RestrictedPreference;->mHelper:Lcom/meizu/settings/widget/RestrictedPreferenceHelper;

    return-void
.end method


# virtual methods
.method public checkRestrictionAndSetDisabled(Ljava/lang/String;)V
    .registers 3

    .line 86
    iget-object p0, p0, Lcom/meizu/settings/widget/RestrictedPreference;->mHelper:Lcom/meizu/settings/widget/RestrictedPreferenceHelper;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/meizu/settings/widget/RestrictedPreferenceHelper;->checkRestrictionAndSetDisabled(Ljava/lang/String;I)V

    return-void
.end method

.method public isDisabledByAdmin()Z
    .registers 1

    .line 109
    iget-object p0, p0, Lcom/meizu/settings/widget/RestrictedPreference;->mHelper:Lcom/meizu/settings/widget/RestrictedPreferenceHelper;

    invoke-virtual {p0}, Lcom/meizu/settings/widget/RestrictedPreferenceHelper;->isDisabledByAdmin()Z

    move-result p0

    return p0
.end method

.method protected onAttachedToHierarchy(Landroid/preference/PreferenceManager;)V
    .registers 3

    .line 81
    iget-object v0, p0, Lcom/meizu/settings/widget/RestrictedPreference;->mHelper:Lcom/meizu/settings/widget/RestrictedPreferenceHelper;

    invoke-virtual {v0}, Lcom/meizu/settings/widget/RestrictedPreferenceHelper;->onAttachedToHierarchy()V

    .line 82
    invoke-super {p0, p1}, Landroid/preference/Preference;->onAttachedToHierarchy(Landroid/preference/PreferenceManager;)V

    return-void
.end method

.method protected onBindView(Landroid/view/View;)V
    .registers 3

    .line 61
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 63
    iget-object v0, p0, Lcom/meizu/settings/widget/RestrictedPreference;->mHelper:Lcom/meizu/settings/widget/RestrictedPreferenceHelper;

    invoke-virtual {v0, p1}, Lcom/meizu/settings/widget/RestrictedPreferenceHelper;->onBindView(Landroid/view/View;)V

    .line 65
    invoke-virtual {p0}, Lcom/meizu/settings/widget/RestrictedPreference;->isDisabledByAdmin()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 66
    new-instance v0, Lcom/meizu/settings/widget/RestrictedPreference$1;

    invoke-direct {v0, p0}, Lcom/meizu/settings/widget/RestrictedPreference$1;-><init>(Lcom/meizu/settings/widget/RestrictedPreference;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_16
    return-void
.end method

.method public setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V
    .registers 3

    .line 103
    iget-object v0, p0, Lcom/meizu/settings/widget/RestrictedPreference;->mHelper:Lcom/meizu/settings/widget/RestrictedPreferenceHelper;

    invoke-virtual {v0, p1}, Lcom/meizu/settings/widget/RestrictedPreferenceHelper;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 104
    invoke-virtual {p0}, Landroid/preference/Preference;->notifyChanged()V

    :cond_b
    return-void
.end method

.method public setEnabled(Z)V
    .registers 3

    if-eqz p1, :cond_f

    .line 95
    invoke-virtual {p0}, Lcom/meizu/settings/widget/RestrictedPreference;->isDisabledByAdmin()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 96
    iget-object p0, p0, Lcom/meizu/settings/widget/RestrictedPreference;->mHelper:Lcom/meizu/settings/widget/RestrictedPreferenceHelper;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/meizu/settings/widget/RestrictedPreferenceHelper;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)Z

    return-void

    .line 99
    :cond_f
    invoke-super {p0, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    return-void
.end method

.method public useAdminDisabledSummary(Z)V
    .registers 2

    .line 76
    iget-object p0, p0, Lcom/meizu/settings/widget/RestrictedPreference;->mHelper:Lcom/meizu/settings/widget/RestrictedPreferenceHelper;

    invoke-virtual {p0, p1}, Lcom/meizu/settings/widget/RestrictedPreferenceHelper;->useAdminDisabledSummary(Z)V

    return-void
.end method
