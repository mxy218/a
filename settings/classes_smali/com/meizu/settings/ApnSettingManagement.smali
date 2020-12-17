.class public Lcom/meizu/settings/ApnSettingManagement;
.super Lcom/meizu/settings/SettingsPreferenceFragment;
.source "ApnSettingManagement.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# static fields
.field public static mCardOneName:Ljava/lang/String;

.field public static mCardTwoName:Ljava/lang/String;

.field public static mSimNum:I


# direct methods
.method public static updateSimCount(Landroid/content/Context;)V
    .registers 6

    const/4 v0, 0x0

    .line 160
    sput v0, Lcom/meizu/settings/ApnSettingManagement;->mSimNum:I

    .line 161
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    move v2, v0

    .line 162
    :goto_8
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v3

    if-ge v2, v3, :cond_47

    .line 163
    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2a

    .line 164
    sget v3, Lcom/meizu/settings/ApnSettingManagement;->mSimNum:I

    add-int/2addr v3, v4

    sput v3, Lcom/meizu/settings/ApnSettingManagement;->mSimNum:I

    if-nez v2, :cond_23

    .line 166
    invoke-static {p0, v0}, Lcom/meizu/settings/MzMobileNetworksUtils;->getCardName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/meizu/settings/ApnSettingManagement;->mCardOneName:Ljava/lang/String;

    goto :goto_44

    .line 168
    :cond_23
    invoke-static {p0, v4}, Lcom/meizu/settings/MzMobileNetworksUtils;->getCardName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/meizu/settings/ApnSettingManagement;->mCardTwoName:Ljava/lang/String;

    goto :goto_44

    :cond_2a
    const v3, 0x7f120f06

    if-nez v2, :cond_3a

    .line 177
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/meizu/settings/ApnSettingManagement;->mCardOneName:Ljava/lang/String;

    goto :goto_44

    .line 181
    :cond_3a
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/meizu/settings/ApnSettingManagement;->mCardTwoName:Ljava/lang/String;

    :goto_44
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 185
    :cond_47
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "updateSimCount: mSimNum = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/meizu/settings/ApnSettingManagement;->mSimNum:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ApnSettingManagement"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
