.class Lcom/meizu/settings/deviceinfo/FlymePrivacySettings$1;
.super Ljava/lang/Object;
.source "FlymePrivacySettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/deviceinfo/FlymePrivacySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/deviceinfo/FlymePrivacySettings;


# direct methods
.method constructor <init>(Lcom/meizu/settings/deviceinfo/FlymePrivacySettings;)V
    .registers 2

    .line 137
    iput-object p1, p0, Lcom/meizu/settings/deviceinfo/FlymePrivacySettings$1;->this$0:Lcom/meizu/settings/deviceinfo/FlymePrivacySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 6

    .line 140
    instance-of v0, p1, Lcom/meizu/common/preference/SwitchPreference;

    const/4 v1, 0x1

    if-nez v0, :cond_6

    return v1

    .line 143
    :cond_6
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    const/4 v0, 0x0

    .line 145
    iget-object v2, p0, Lcom/meizu/settings/deviceinfo/FlymePrivacySettings$1;->this$0:Lcom/meizu/settings/deviceinfo/FlymePrivacySettings;

    invoke-static {v2}, Lcom/meizu/settings/deviceinfo/FlymePrivacySettings;->access$000(Lcom/meizu/settings/deviceinfo/FlymePrivacySettings;)Lcom/meizu/common/preference/SwitchPreference;

    move-result-object v2

    if-ne p1, v2, :cond_23

    if-nez p2, :cond_1d

    .line 149
    iget-object p0, p0, Lcom/meizu/settings/deviceinfo/FlymePrivacySettings$1;->this$0:Lcom/meizu/settings/deviceinfo/FlymePrivacySettings;

    invoke-static {p0}, Lcom/meizu/settings/deviceinfo/FlymePrivacySettings;->access$100(Lcom/meizu/settings/deviceinfo/FlymePrivacySettings;)V

    goto :goto_40

    .line 151
    :cond_1d
    iget-object p0, p0, Lcom/meizu/settings/deviceinfo/FlymePrivacySettings$1;->this$0:Lcom/meizu/settings/deviceinfo/FlymePrivacySettings;

    invoke-static {p0, v1}, Lcom/meizu/settings/deviceinfo/FlymePrivacySettings;->access$200(Lcom/meizu/settings/deviceinfo/FlymePrivacySettings;Z)V

    goto :goto_41

    .line 154
    :cond_23
    iget-object v2, p0, Lcom/meizu/settings/deviceinfo/FlymePrivacySettings$1;->this$0:Lcom/meizu/settings/deviceinfo/FlymePrivacySettings;

    invoke-static {v2}, Lcom/meizu/settings/deviceinfo/FlymePrivacySettings;->access$300(Lcom/meizu/settings/deviceinfo/FlymePrivacySettings;)Lcom/meizu/common/preference/SwitchPreference;

    move-result-object v2

    if-ne p1, v2, :cond_40

    .line 156
    :try_start_2b
    iget-object p1, p0, Lcom/meizu/settings/deviceinfo/FlymePrivacySettings$1;->this$0:Lcom/meizu/settings/deviceinfo/FlymePrivacySettings;

    invoke-static {p1}, Lcom/meizu/settings/deviceinfo/FlymePrivacySettings;->access$400(Lcom/meizu/settings/deviceinfo/FlymePrivacySettings;)Landroid/app/backup/IBackupManager;

    move-result-object p1

    invoke-interface {p1, p2}, Landroid/app/backup/IBackupManager;->setAutoRestore(Z)V
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_34} :catch_35

    goto :goto_41

    .line 159
    :catch_35
    iget-object p0, p0, Lcom/meizu/settings/deviceinfo/FlymePrivacySettings$1;->this$0:Lcom/meizu/settings/deviceinfo/FlymePrivacySettings;

    invoke-static {p0}, Lcom/meizu/settings/deviceinfo/FlymePrivacySettings;->access$300(Lcom/meizu/settings/deviceinfo/FlymePrivacySettings;)Lcom/meizu/common/preference/SwitchPreference;

    move-result-object p0

    xor-int/lit8 p1, p2, 0x1

    invoke-virtual {p0, p1}, Lcom/meizu/common/preference/SwitchPreference;->setChecked(Z)V

    :cond_40
    :goto_40
    move v1, v0

    :goto_41
    return v1
.end method
