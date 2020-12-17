.class Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$16;
.super Ljava/lang/Object;
.source "FlymeCreateFPActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

    .line 1031
    iput-object p1, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$16;->this$0:Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    .line 1035
    iget-object p1, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$16;->this$0:Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "can_show_enroll_fod_tips_dlg"

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1036
    iget-object p0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$16;->this$0:Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->access$3602(Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    return-void
.end method
