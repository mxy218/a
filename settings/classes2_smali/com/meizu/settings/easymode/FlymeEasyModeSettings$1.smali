.class Lcom/meizu/settings/easymode/FlymeEasyModeSettings$1;
.super Landroid/telephony/PhoneStateListener;
.source "FlymeEasyModeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/easymode/FlymeEasyModeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/easymode/FlymeEasyModeSettings;


# direct methods
.method constructor <init>(Lcom/meizu/settings/easymode/FlymeEasyModeSettings;)V
    .registers 2

    .line 83
    iput-object p1, p0, Lcom/meizu/settings/easymode/FlymeEasyModeSettings$1;->this$0:Lcom/meizu/settings/easymode/FlymeEasyModeSettings;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .registers 3

    .line 87
    invoke-super {p0, p1, p2}, Landroid/telephony/PhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V

    .line 88
    iget-object p0, p0, Lcom/meizu/settings/easymode/FlymeEasyModeSettings$1;->this$0:Lcom/meizu/settings/easymode/FlymeEasyModeSettings;

    invoke-static {p0}, Lcom/meizu/settings/easymode/FlymeEasyModeSettings;->access$000(Lcom/meizu/settings/easymode/FlymeEasyModeSettings;)Lcom/meizu/common/preference/SwitchPreference;

    move-result-object p0

    if-nez p1, :cond_d

    const/4 p1, 0x1

    goto :goto_e

    :cond_d
    const/4 p1, 0x0

    :goto_e
    invoke-virtual {p0, p1}, Landroid/preference/TwoStatePreference;->setEnabled(Z)V

    return-void
.end method
