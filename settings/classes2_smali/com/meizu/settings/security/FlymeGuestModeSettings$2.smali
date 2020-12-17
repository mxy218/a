.class Lcom/meizu/settings/security/FlymeGuestModeSettings$2;
.super Ljava/lang/Object;
.source "FlymeGuestModeSettings.java"

# interfaces
.implements Lcom/meizu/settings/widget/ProgressDialogPreference$OnDialogStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/security/FlymeGuestModeSettings;->initClearGuestDataPreference()V
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

    .line 268
    iput-object p1, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings$2;->this$0:Lcom/meizu/settings/security/FlymeGuestModeSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDialogCanceled()V
    .registers 1

    return-void
.end method

.method public onDialogDismissed(Z)V
    .registers 2

    .line 275
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings$2;->this$0:Lcom/meizu/settings/security/FlymeGuestModeSettings;

    if-eqz p1, :cond_7

    const-string p1, "0"

    goto :goto_9

    :cond_7
    const-string p1, "1"

    :goto_9
    invoke-static {p0, p1}, Lcom/meizu/settings/security/FlymeGuestModeSettings;->access$800(Lcom/meizu/settings/security/FlymeGuestModeSettings;Ljava/lang/String;)V

    return-void
.end method

.method public onDialogShowed()V
    .registers 1

    return-void
.end method
