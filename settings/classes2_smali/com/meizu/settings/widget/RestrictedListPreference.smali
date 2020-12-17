.class public Lcom/meizu/settings/widget/RestrictedListPreference;
.super Landroid/preference/ListPreference;
.source "RestrictedListPreference.java"


# instance fields
.field private final mHelper:Lcom/meizu/settings/widget/RestrictedPreferenceHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 32
    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    new-instance v0, Lcom/meizu/settings/widget/RestrictedPreferenceHelper;

    invoke-direct {v0, p1, p0, p2}, Lcom/meizu/settings/widget/RestrictedPreferenceHelper;-><init>(Landroid/content/Context;Landroid/preference/Preference;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/meizu/settings/widget/RestrictedListPreference;->mHelper:Lcom/meizu/settings/widget/RestrictedPreferenceHelper;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    .line 38
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 39
    new-instance p3, Lcom/meizu/settings/widget/RestrictedPreferenceHelper;

    invoke-direct {p3, p1, p0, p2}, Lcom/meizu/settings/widget/RestrictedPreferenceHelper;-><init>(Landroid/content/Context;Landroid/preference/Preference;Landroid/util/AttributeSet;)V

    iput-object p3, p0, Lcom/meizu/settings/widget/RestrictedListPreference;->mHelper:Lcom/meizu/settings/widget/RestrictedPreferenceHelper;

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/settings/widget/RestrictedListPreference;)Lcom/meizu/settings/widget/RestrictedPreferenceHelper;
    .registers 1

    .line 28
    iget-object p0, p0, Lcom/meizu/settings/widget/RestrictedListPreference;->mHelper:Lcom/meizu/settings/widget/RestrictedPreferenceHelper;

    return-object p0
.end method


# virtual methods
.method public isDisabledByAdmin()Z
    .registers 1

    .line 80
    iget-object p0, p0, Lcom/meizu/settings/widget/RestrictedListPreference;->mHelper:Lcom/meizu/settings/widget/RestrictedPreferenceHelper;

    invoke-virtual {p0}, Lcom/meizu/settings/widget/RestrictedPreferenceHelper;->isDisabledByAdmin()Z

    move-result p0

    return p0
.end method

.method protected onAttachedToHierarchy(Landroid/preference/PreferenceManager;)V
    .registers 3

    .line 44
    iget-object v0, p0, Lcom/meizu/settings/widget/RestrictedListPreference;->mHelper:Lcom/meizu/settings/widget/RestrictedPreferenceHelper;

    invoke-virtual {v0}, Lcom/meizu/settings/widget/RestrictedPreferenceHelper;->onAttachedToHierarchy()V

    .line 45
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onAttachedToHierarchy(Landroid/preference/PreferenceManager;)V

    return-void
.end method

.method public onBindView(Landroid/view/View;)V
    .registers 3

    .line 50
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onBindView(Landroid/view/View;)V

    .line 51
    iget-object v0, p0, Lcom/meizu/settings/widget/RestrictedListPreference;->mHelper:Lcom/meizu/settings/widget/RestrictedPreferenceHelper;

    invoke-virtual {v0, p1}, Lcom/meizu/settings/widget/RestrictedPreferenceHelper;->onBindView(Landroid/view/View;)V

    .line 53
    invoke-virtual {p0}, Lcom/meizu/settings/widget/RestrictedListPreference;->isDisabledByAdmin()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 54
    new-instance v0, Lcom/meizu/settings/widget/RestrictedListPreference$1;

    invoke-direct {v0, p0}, Lcom/meizu/settings/widget/RestrictedListPreference$1;-><init>(Lcom/meizu/settings/widget/RestrictedListPreference;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_16
    return-void
.end method

.method public setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V
    .registers 3

    .line 74
    iget-object v0, p0, Lcom/meizu/settings/widget/RestrictedListPreference;->mHelper:Lcom/meizu/settings/widget/RestrictedPreferenceHelper;

    invoke-virtual {v0, p1}, Lcom/meizu/settings/widget/RestrictedPreferenceHelper;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 75
    invoke-virtual {p0}, Landroid/preference/ListPreference;->notifyChanged()V

    :cond_b
    return-void
.end method

.method public setEnabled(Z)V
    .registers 3

    if-eqz p1, :cond_f

    .line 66
    invoke-virtual {p0}, Lcom/meizu/settings/widget/RestrictedListPreference;->isDisabledByAdmin()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 67
    iget-object p0, p0, Lcom/meizu/settings/widget/RestrictedListPreference;->mHelper:Lcom/meizu/settings/widget/RestrictedPreferenceHelper;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/meizu/settings/widget/RestrictedPreferenceHelper;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)Z

    return-void

    .line 70
    :cond_f
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    return-void
.end method
