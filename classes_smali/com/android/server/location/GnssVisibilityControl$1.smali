.class Lcom/android/server/location/GnssVisibilityControl$1;
.super Landroid/content/BroadcastReceiver;
.source "GnssVisibilityControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/GnssVisibilityControl;->listenForProxyAppsPackageUpdates()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/GnssVisibilityControl;


# direct methods
.method constructor <init>(Lcom/android/server/location/GnssVisibilityControl;)V
    .registers 2
    .param p1, "this$0"  # Lcom/android/server/location/GnssVisibilityControl;

    .line 164
    iput-object p1, p0, Lcom/android/server/location/GnssVisibilityControl$1;->this$0:Lcom/android/server/location/GnssVisibilityControl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "intent"  # Landroid/content/Intent;

    .line 167
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 168
    .local v0, "action":Ljava/lang/String;
    if-nez v0, :cond_7

    .line 169
    return-void

    .line 172
    :cond_7
    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    sparse-switch v2, :sswitch_data_52

    :cond_12
    goto :goto_3a

    :sswitch_13
    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    const/4 v1, 0x0

    goto :goto_3a

    :sswitch_1d
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    move v1, v5

    goto :goto_3a

    :sswitch_27
    const-string v2, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    move v1, v3

    goto :goto_3a

    :sswitch_31
    const-string v2, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    move v1, v4

    :goto_3a
    if-eqz v1, :cond_43

    if-eq v1, v5, :cond_43

    if-eq v1, v4, :cond_43

    if-eq v1, v3, :cond_43

    goto :goto_50

    .line 177
    :cond_43
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    .line 178
    .local v1, "pkgName":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/location/GnssVisibilityControl$1;->this$0:Lcom/android/server/location/GnssVisibilityControl;

    invoke-static {v2, v1, v0}, Lcom/android/server/location/GnssVisibilityControl;->access$000(Lcom/android/server/location/GnssVisibilityControl;Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    .end local v1  # "pkgName":Ljava/lang/String;
    :goto_50
    return-void

    nop

    :sswitch_data_52
    .sparse-switch
        -0x304ed112 -> :sswitch_31
        0xa480416 -> :sswitch_27
        0x1f50b9c2 -> :sswitch_1d
        0x5c1076e2 -> :sswitch_13
    .end sparse-switch
.end method
