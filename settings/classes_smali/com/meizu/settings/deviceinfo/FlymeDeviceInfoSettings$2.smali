.class Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings$2;
.super Ljava/lang/Object;
.source "FlymeDeviceInfoSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings;->initAndroidVersion()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings;

.field final synthetic val$funDisallowedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

.field final synthetic val$funDisallowedBySystem:Z

.field final synthetic val$userManager:Landroid/os/UserManager;


# direct methods
.method constructor <init>(Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings;Landroid/os/UserManager;ZLcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V
    .registers 5

    .line 206
    iput-object p1, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings$2;->this$0:Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings;

    iput-object p2, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings$2;->val$userManager:Landroid/os/UserManager;

    iput-boolean p3, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings$2;->val$funDisallowedBySystem:Z

    iput-object p4, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings$2;->val$funDisallowedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8

    .line 209
    iget-object p1, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings$2;->val$userManager:Landroid/os/UserManager;

    const-string v0, "no_fun"

    invoke-virtual {p1, v0}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1e

    iget-boolean p1, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings$2;->val$funDisallowedBySystem:Z

    if-nez p1, :cond_1e

    iget-object p1, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings$2;->val$funDisallowedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    if-eqz p1, :cond_1e

    .line 211
    iget-object p1, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings$2;->this$0:Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings;

    invoke-static {p1}, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings;->access$500(Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings;)Landroid/content/Context;

    move-result-object p1

    iget-object p0, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings$2;->val$funDisallowedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-static {p1, p0}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    goto :goto_2f

    .line 214
    :cond_1e
    iget-object v1, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings$2;->this$0:Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings;

    const-class p0, Lcom/meizu/settings/deviceinfo/FlymeAndroidVersionFragment;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f120897

    const/4 v4, -0x1

    const/4 v5, 0x0

    move-object v0, v1

    invoke-virtual/range {v0 .. v5}, Lcom/meizu/settings/SettingsPreferenceFragment;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    :goto_2f
    return-void
.end method
