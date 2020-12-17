.class public Lcom/android/settings/applications/specialaccess/MoreSpecialAccessPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "MoreSpecialAccessPreferenceController.java"


# instance fields
.field private final mIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 37
    invoke-virtual {p1}, Landroid/content/pm/PackageManager;->getPermissionControllerPackageName()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_26

    .line 39
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MANAGE_SPECIAL_APP_ACCESSES"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 40
    invoke-virtual {v1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    const/high16 v1, 0x10000

    .line 41
    invoke-virtual {p1, p2, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    if-eqz p1, :cond_22

    goto :goto_23

    :cond_22
    move-object p2, v0

    .line 43
    :goto_23
    iput-object p2, p0, Lcom/android/settings/applications/specialaccess/MoreSpecialAccessPreferenceController;->mIntent:Landroid/content/Intent;

    goto :goto_28

    .line 45
    :cond_26
    iput-object v0, p0, Lcom/android/settings/applications/specialaccess/MoreSpecialAccessPreferenceController;->mIntent:Landroid/content/Intent;

    :goto_28
    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .registers 1

    .line 51
    iget-object p0, p0, Lcom/android/settings/applications/specialaccess/MoreSpecialAccessPreferenceController;->mIntent:Landroid/content/Intent;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x3

    :goto_7
    return p0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .registers 3

    .line 56
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/core/BasePreferenceController;->mPreferenceKey:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_17

    .line 57
    iget-object p1, p0, Lcom/android/settings/applications/specialaccess/MoreSpecialAccessPreferenceController;->mIntent:Landroid/content/Intent;

    if-eqz p1, :cond_15

    .line 58
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_15
    const/4 p0, 0x1

    return p0

    :cond_17
    const/4 p0, 0x0

    return p0
.end method
