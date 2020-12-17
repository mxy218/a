.class Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$12;
.super Ljava/lang/Object;
.source "FlymeFingerprintManagementFragment.java"

# interfaces
.implements Lcom/meizu/settings/fingerprint/FlymeIFingerPrint$OnDeleteFingerpirntResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->createOnDeleteFingerpirntResult()Lcom/meizu/settings/fingerprint/FlymeIFingerPrint$OnDeleteFingerpirntResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;


# direct methods
.method constructor <init>(Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;)V
    .registers 2

    .line 702
    iput-object p1, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$12;->this$0:Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeleteComplete(Z)V
    .registers 4

    .line 706
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$12;->this$0:Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;

    invoke-static {v0}, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;->access$600(Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$12$1;

    invoke-direct {v1, p0, p1}, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$12$1;-><init>(Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment$12;Z)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
