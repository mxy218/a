.class Lcom/meizu/settings/account/FlymeAccountSyncSettings$1;
.super Ljava/lang/Object;
.source "FlymeAccountSyncSettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/account/FlymeAccountSyncSettings;->updatePreferenceIntents(Landroidx/preference/PreferenceScreen;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/account/FlymeAccountSyncSettings;


# direct methods
.method constructor <init>(Lcom/meizu/settings/account/FlymeAccountSyncSettings;)V
    .registers 2

    .line 74
    iput-object p1, p0, Lcom/meizu/settings/account/FlymeAccountSyncSettings$1;->this$0:Lcom/meizu/settings/account/FlymeAccountSyncSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .registers 3

    .line 77
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.android.settings.accounts.LAUNCHING_LOCATION_SETTINGS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 78
    iget-object p0, p0, Lcom/meizu/settings/account/FlymeAccountSyncSettings$1;->this$0:Lcom/meizu/settings/account/FlymeAccountSyncSettings;

    invoke-static {p0}, Lcom/meizu/settings/account/FlymeAccountSyncSettings;->access$000(Lcom/meizu/settings/account/FlymeAccountSyncSettings;)Landroid/content/Context;

    move-result-object p0

    const-string v0, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method
