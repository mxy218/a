.class Lcom/meizu/settings/security/FlymeScreenPasscodeSettings$1;
.super Ljava/lang/Object;
.source "FlymeScreenPasscodeSettings.java"

# interfaces
.implements Lcom/meizu/settings/fingerprint/FlymeIFingerPrint$OnDeleteFingerpirntResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/security/FlymeScreenPasscodeSettings;->removeFingerprints(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/security/FlymeScreenPasscodeSettings;

.field final synthetic val$disableLockScreen:Z


# direct methods
.method constructor <init>(Lcom/meizu/settings/security/FlymeScreenPasscodeSettings;Z)V
    .registers 3

    .line 262
    iput-object p1, p0, Lcom/meizu/settings/security/FlymeScreenPasscodeSettings$1;->this$0:Lcom/meizu/settings/security/FlymeScreenPasscodeSettings;

    iput-boolean p2, p0, Lcom/meizu/settings/security/FlymeScreenPasscodeSettings$1;->val$disableLockScreen:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeleteComplete(Z)V
    .registers 2

    .line 265
    iget-object p1, p0, Lcom/meizu/settings/security/FlymeScreenPasscodeSettings$1;->this$0:Lcom/meizu/settings/security/FlymeScreenPasscodeSettings;

    iget-boolean p0, p0, Lcom/meizu/settings/security/FlymeScreenPasscodeSettings$1;->val$disableLockScreen:Z

    invoke-static {p1, p0}, Lcom/meizu/settings/security/FlymeScreenPasscodeSettings;->access$000(Lcom/meizu/settings/security/FlymeScreenPasscodeSettings;Z)V

    return-void
.end method
