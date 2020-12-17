.class Lcom/meizu/settings/security/FlymeGuestModeSettings$6;
.super Ljava/lang/Object;
.source "FlymeGuestModeSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/security/FlymeGuestModeSettings;->showEnrollFingerprintDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/security/FlymeGuestModeSettings;


# direct methods
.method constructor <init>(Lcom/meizu/settings/security/FlymeGuestModeSettings;)V
    .registers 2

    .line 483
    iput-object p1, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings$6;->this$0:Lcom/meizu/settings/security/FlymeGuestModeSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 2

    .line 486
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings$6;->this$0:Lcom/meizu/settings/security/FlymeGuestModeSettings;

    invoke-static {p0}, Lcom/meizu/settings/security/FlymeGuestModeSettings;->access$1300(Lcom/meizu/settings/security/FlymeGuestModeSettings;)Lcom/meizu/common/preference/SwitchPreference;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/meizu/common/preference/SwitchPreference;->setChecked(Z)V

    return-void
.end method
