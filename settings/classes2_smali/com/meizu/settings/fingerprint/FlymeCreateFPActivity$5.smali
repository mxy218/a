.class Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$5;
.super Ljava/lang/Object;
.source "FlymeCreateFPActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->showEnrolledFailedDialog(Ljava/lang/String;)V
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

    .line 658
    iput-object p1, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$5;->this$0:Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 2

    .line 661
    iget-object p0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$5;->this$0:Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;

    invoke-static {p0}, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->access$3000(Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;)V

    return-void
.end method
