.class Lcom/meizu/settings/language/FlymeLanguageAndDatetimeSettings$1;
.super Ljava/lang/Object;
.source "FlymeLanguageAndDatetimeSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/language/FlymeLanguageAndDatetimeSettings;->createSysKbdPreferenceOnClickListener(Landroid/content/Intent;)Landroid/preference/Preference$OnPreferenceClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/language/FlymeLanguageAndDatetimeSettings;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/meizu/settings/language/FlymeLanguageAndDatetimeSettings;Landroid/content/Intent;)V
    .registers 3

    .line 411
    iput-object p1, p0, Lcom/meizu/settings/language/FlymeLanguageAndDatetimeSettings$1;->this$0:Lcom/meizu/settings/language/FlymeLanguageAndDatetimeSettings;

    iput-object p2, p0, Lcom/meizu/settings/language/FlymeLanguageAndDatetimeSettings$1;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .registers 5

    .line 415
    iget-object v0, p0, Lcom/meizu/settings/language/FlymeLanguageAndDatetimeSettings$1;->val$intent:Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 417
    :try_start_7
    iget-object v0, p0, Lcom/meizu/settings/language/FlymeLanguageAndDatetimeSettings$1;->this$0:Lcom/meizu/settings/language/FlymeLanguageAndDatetimeSettings;

    iget-object v1, p0, Lcom/meizu/settings/language/FlymeLanguageAndDatetimeSettings$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_e
    .catch Landroid/content/ActivityNotFoundException; {:try_start_7 .. :try_end_e} :catch_f

    goto :goto_22

    :catch_f
    move-exception v0

    .line 419
    iget-object v1, p0, Lcom/meizu/settings/language/FlymeLanguageAndDatetimeSettings$1;->val$intent:Landroid/content/Intent;

    const-string v2, "android.intent.action.SYSTEM_KEYBOARD_SETTINGS"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 421
    :try_start_17
    iget-object v1, p0, Lcom/meizu/settings/language/FlymeLanguageAndDatetimeSettings$1;->this$0:Lcom/meizu/settings/language/FlymeLanguageAndDatetimeSettings;

    iget-object v2, p0, Lcom/meizu/settings/language/FlymeLanguageAndDatetimeSettings$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_1e
    .catch Landroid/content/ActivityNotFoundException; {:try_start_17 .. :try_end_1e} :catch_1f

    goto :goto_22

    .line 423
    :catch_1f
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    .line 427
    :goto_22
    iget-object v0, p0, Lcom/meizu/settings/language/FlymeLanguageAndDatetimeSettings$1;->this$0:Lcom/meizu/settings/language/FlymeLanguageAndDatetimeSettings;

    invoke-virtual {v0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/settings/utils/MzUtils;->setOpenAnimationToNextPage(Landroid/content/Context;)V

    .line 429
    iget-object v0, p0, Lcom/meizu/settings/language/FlymeLanguageAndDatetimeSettings$1;->this$0:Lcom/meizu/settings/language/FlymeLanguageAndDatetimeSettings;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/meizu/settings/language/FlymeLanguageAndDatetimeSettings;->access$002(Lcom/meizu/settings/language/FlymeLanguageAndDatetimeSettings;Z)Z

    .line 431
    iget-object p0, p0, Lcom/meizu/settings/language/FlymeLanguageAndDatetimeSettings$1;->this$0:Lcom/meizu/settings/language/FlymeLanguageAndDatetimeSettings;

    invoke-static {p0}, Lcom/meizu/settings/language/FlymeLanguageAndDatetimeSettings;->access$100(Lcom/meizu/settings/language/FlymeLanguageAndDatetimeSettings;)Lcom/meizu/settings/datareport/UsageStatsProxy;

    move-result-object p0

    const-string v0, "FlymeLanguageAndDatetimeSettings"

    const-string v2, "system_keyboard_clicked"

    invoke-virtual {p0, v0, v2, p1}, Lcom/meizu/settings/datareport/UsageStatsProxy;->reportData(Ljava/lang/String;Ljava/lang/String;Landroid/preference/Preference;)V

    return v1
.end method
