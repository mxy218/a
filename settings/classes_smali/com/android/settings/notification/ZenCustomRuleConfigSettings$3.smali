.class Lcom/android/settings/notification/ZenCustomRuleConfigSettings$3;
.super Ljava/lang/Object;
.source "ZenCustomRuleConfigSettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/ZenCustomRuleConfigSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/ZenCustomRuleConfigSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/ZenCustomRuleConfigSettings;)V
    .registers 2

    .line 85
    iput-object p1, p0, Lcom/android/settings/notification/ZenCustomRuleConfigSettings$3;->this$0:Lcom/android/settings/notification/ZenCustomRuleConfigSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .registers 3

    .line 88
    new-instance p1, Lcom/android/settings/core/SubSettingLauncher;

    iget-object v0, p0, Lcom/android/settings/notification/ZenCustomRuleConfigSettings$3;->this$0:Lcom/android/settings/notification/ZenCustomRuleConfigSettings;

    iget-object v0, v0, Lcom/android/settings/notification/ZenModeSettingsBase;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v0, Lcom/android/settings/notification/ZenCustomRuleNotificationsSettings;

    .line 89
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/notification/ZenCustomRuleConfigSettings$3;->this$0:Lcom/android/settings/notification/ZenCustomRuleConfigSettings;

    .line 90
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenCustomRuleSettingsBase;->createZenRuleBundle()Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    const/16 p1, 0x648

    .line 92
    invoke-virtual {p0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 93
    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    const/4 p0, 0x1

    return p0
.end method
