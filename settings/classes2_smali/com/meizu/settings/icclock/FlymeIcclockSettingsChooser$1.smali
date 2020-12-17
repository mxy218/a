.class Lcom/meizu/settings/icclock/FlymeIcclockSettingsChooser$1;
.super Landroid/content/BroadcastReceiver;
.source "FlymeIcclockSettingsChooser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/icclock/FlymeIcclockSettingsChooser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/icclock/FlymeIcclockSettingsChooser;


# direct methods
.method constructor <init>(Lcom/meizu/settings/icclock/FlymeIcclockSettingsChooser;)V
    .registers 2

    .line 60
    iput-object p1, p0, Lcom/meizu/settings/icclock/FlymeIcclockSettingsChooser$1;->this$0:Lcom/meizu/settings/icclock/FlymeIcclockSettingsChooser;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 64
    invoke-static {}, Lcom/meizu/settings/icclock/FlymeIcclockSettingsChooser;->access$000()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSimInfoChangeReceicer  = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.ACTION_SUBINFO_CONTENT_CHANGE"

    .line 66
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    goto :goto_52

    :cond_29
    const-string v0, "android.intent.action.SIM_STATE_CHANGED"

    .line 68
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_49

    const-string p1, "ss"

    .line 69
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "ABSENT"

    .line 70
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_52

    .line 71
    iget-object p0, p0, Lcom/meizu/settings/icclock/FlymeIcclockSettingsChooser$1;->this$0:Lcom/meizu/settings/icclock/FlymeIcclockSettingsChooser;

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_52

    .line 74
    :cond_49
    invoke-static {}, Lcom/meizu/settings/icclock/FlymeIcclockSettingsChooser;->access$000()Ljava/lang/String;

    move-result-object p0

    const-string p1, "not handler broadcast"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_52
    :goto_52
    return-void
.end method
