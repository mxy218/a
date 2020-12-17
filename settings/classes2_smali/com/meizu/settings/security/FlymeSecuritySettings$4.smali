.class Lcom/meizu/settings/security/FlymeSecuritySettings$4;
.super Landroid/content/BroadcastReceiver;
.source "FlymeSecuritySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/security/FlymeSecuritySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/security/FlymeSecuritySettings;


# direct methods
.method constructor <init>(Lcom/meizu/settings/security/FlymeSecuritySettings;)V
    .registers 2

    .line 1051
    iput-object p1, p0, Lcom/meizu/settings/security/FlymeSecuritySettings$4;->this$0:Lcom/meizu/settings/security/FlymeSecuritySettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 1055
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mSimInfoChangeReceicer  = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FlymeSecuritySettings"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1056
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.SIM_STATE_CHANGED"

    .line 1057
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2e

    const-string p2, "android.intent.action.ACTION_SUBINFO_CONTENT_CHANGE"

    .line 1058
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_37

    .line 1059
    :cond_2e
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeSecuritySettings$4;->this$0:Lcom/meizu/settings/security/FlymeSecuritySettings;

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/meizu/settings/security/FlymeSecuritySettings;->access$800(Lcom/meizu/settings/security/FlymeSecuritySettings;Landroid/preference/PreferenceScreen;)V

    :cond_37
    return-void
.end method
