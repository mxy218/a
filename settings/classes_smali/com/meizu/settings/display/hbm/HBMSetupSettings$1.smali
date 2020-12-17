.class Lcom/meizu/settings/display/hbm/HBMSetupSettings$1;
.super Ljava/lang/Object;
.source "HBMSetupSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/display/hbm/HBMSetupSettings;->showWarningDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/display/hbm/HBMSetupSettings;


# direct methods
.method constructor <init>(Lcom/meizu/settings/display/hbm/HBMSetupSettings;)V
    .registers 2

    .line 76
    iput-object p1, p0, Lcom/meizu/settings/display/hbm/HBMSetupSettings$1;->this$0:Lcom/meizu/settings/display/hbm/HBMSetupSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 3

    .line 80
    iget-object v0, p0, Lcom/meizu/settings/display/hbm/HBMSetupSettings$1;->this$0:Lcom/meizu/settings/display/hbm/HBMSetupSettings;

    invoke-static {v0}, Lcom/meizu/settings/display/hbm/HBMSetupSettings;->access$000(Lcom/meizu/settings/display/hbm/HBMSetupSettings;)Landroid/content/DialogInterface;

    move-result-object v0

    if-ne p1, v0, :cond_12

    .line 81
    iget-object p0, p0, Lcom/meizu/settings/display/hbm/HBMSetupSettings$1;->this$0:Lcom/meizu/settings/display/hbm/HBMSetupSettings;

    invoke-static {p0}, Lcom/meizu/settings/display/hbm/HBMSetupSettings;->access$100(Lcom/meizu/settings/display/hbm/HBMSetupSettings;)Lcom/meizu/common/preference/SwitchPreference;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/meizu/common/preference/SwitchPreference;->setChecked(Z)V

    :cond_12
    return-void
.end method
