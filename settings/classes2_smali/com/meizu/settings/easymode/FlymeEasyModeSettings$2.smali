.class Lcom/meizu/settings/easymode/FlymeEasyModeSettings$2;
.super Ljava/lang/Object;
.source "FlymeEasyModeSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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

    .line 121
    iput-object p1, p0, Lcom/meizu/settings/easymode/FlymeEasyModeSettings$2;->this$0:Lcom/meizu/settings/easymode/FlymeEasyModeSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 3

    .line 125
    iget-object v0, p0, Lcom/meizu/settings/easymode/FlymeEasyModeSettings$2;->this$0:Lcom/meizu/settings/easymode/FlymeEasyModeSettings;

    invoke-static {v0}, Lcom/meizu/settings/easymode/FlymeEasyModeSettings;->access$100(Lcom/meizu/settings/easymode/FlymeEasyModeSettings;)Landroid/app/AlertDialog;

    move-result-object v0

    if-ne p1, v0, :cond_12

    .line 126
    iget-object p0, p0, Lcom/meizu/settings/easymode/FlymeEasyModeSettings$2;->this$0:Lcom/meizu/settings/easymode/FlymeEasyModeSettings;

    invoke-static {p0}, Lcom/meizu/settings/easymode/FlymeEasyModeSettings;->access$000(Lcom/meizu/settings/easymode/FlymeEasyModeSettings;)Lcom/meizu/common/preference/SwitchPreference;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/meizu/common/preference/SwitchPreference;->setChecked(Z)V

    :cond_12
    return-void
.end method
