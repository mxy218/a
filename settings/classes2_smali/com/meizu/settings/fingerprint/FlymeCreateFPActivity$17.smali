.class Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$17;
.super Ljava/lang/Object;
.source "FlymeCreateFPActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->showEnrolledUnderGlassFpTipsDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;


# direct methods
.method constructor <init>(Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;)V
    .registers 2

    .line 1039
    iput-object p1, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$17;->this$0:Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 3

    .line 1042
    iget-object p1, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$17;->this$0:Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;

    invoke-static {p1}, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->access$200(Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;)Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;

    move-result-object p1

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;->setFODIconVisiable(Z)V

    .line 1043
    iget-object p0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$17;->this$0:Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->access$3602(Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    return-void
.end method
