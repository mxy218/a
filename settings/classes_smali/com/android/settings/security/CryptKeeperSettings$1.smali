.class Lcom/android/settings/security/CryptKeeperSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "CryptKeeperSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/security/CryptKeeperSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/security/CryptKeeperSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/security/CryptKeeperSettings;)V
    .registers 2

    .line 64
    iput-object p1, p0, Lcom/android/settings/security/CryptKeeperSettings$1;->this$0:Lcom/android/settings/security/CryptKeeperSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    .line 67
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.BATTERY_CHANGED"

    .line 68
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5c

    const/4 p1, 0x0

    const-string v0, "level"

    .line 69
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string/jumbo v1, "plugged"

    .line 70
    invoke-virtual {p2, v1, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "invalid_charger"

    .line 71
    invoke-virtual {p2, v2, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    const/16 v2, 0x50

    const/4 v3, 0x1

    if-lt v0, v2, :cond_27

    move v0, v3

    goto :goto_28

    :cond_27
    move v0, p1

    :goto_28
    and-int/lit8 v1, v1, 0x7

    if-eqz v1, :cond_30

    if-nez p2, :cond_30

    move p2, v3

    goto :goto_31

    :cond_30
    move p2, p1

    .line 80
    :goto_31
    iget-object v1, p0, Lcom/android/settings/security/CryptKeeperSettings$1;->this$0:Lcom/android/settings/security/CryptKeeperSettings;

    invoke-static {v1}, Lcom/android/settings/security/CryptKeeperSettings;->access$000(Lcom/android/settings/security/CryptKeeperSettings;)Landroid/widget/Button;

    move-result-object v1

    if-eqz v0, :cond_3c

    if-eqz p2, :cond_3c

    goto :goto_3d

    :cond_3c
    move v3, p1

    :goto_3d
    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 81
    iget-object v1, p0, Lcom/android/settings/security/CryptKeeperSettings$1;->this$0:Lcom/android/settings/security/CryptKeeperSettings;

    invoke-static {v1}, Lcom/android/settings/security/CryptKeeperSettings;->access$100(Lcom/android/settings/security/CryptKeeperSettings;)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    if-eqz p2, :cond_4c

    move p2, v2

    goto :goto_4d

    :cond_4c
    move p2, p1

    :goto_4d
    invoke-virtual {v1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 82
    iget-object p0, p0, Lcom/android/settings/security/CryptKeeperSettings$1;->this$0:Lcom/android/settings/security/CryptKeeperSettings;

    invoke-static {p0}, Lcom/android/settings/security/CryptKeeperSettings;->access$200(Lcom/android/settings/security/CryptKeeperSettings;)Landroid/view/View;

    move-result-object p0

    if-eqz v0, :cond_59

    move p1, v2

    :cond_59
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_5c
    return-void
.end method
