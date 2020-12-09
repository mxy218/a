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

    .line 164
    iput-object p1, p0, Lcom/android/server/location/GnssVisibilityControl$1;->this$0:Lcom/android/server/location/GnssVisibilityControl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8

    .line 167
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 168
    if-nez p1, :cond_7

    .line 169
    return-void

    .line 172
    :cond_7
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    sparse-switch v1, :sswitch_data_52

    :cond_12
    goto :goto_3a

    :sswitch_13
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    const/4 v0, 0x0

    goto :goto_3a

    :sswitch_1d
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    move v0, v4

    goto :goto_3a

    :sswitch_27
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    move v0, v2

    goto :goto_3a

    :sswitch_31
    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    move v0, v3

    :goto_3a
    if-eqz v0, :cond_43

    if-eq v0, v4, :cond_43

    if-eq v0, v3, :cond_43

    if-eq v0, v2, :cond_43

    goto :goto_50

    .line 177
    :cond_43
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object p2

    .line 178
    iget-object v0, p0, Lcom/android/server/location/GnssVisibilityControl$1;->this$0:Lcom/android/server/location/GnssVisibilityControl;

    invoke-static {v0, p2, p1}, Lcom/android/server/location/GnssVisibilityControl;->access$000(Lcom/android/server/location/GnssVisibilityControl;Ljava/lang/String;Ljava/lang/String;)V

    .line 181
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
