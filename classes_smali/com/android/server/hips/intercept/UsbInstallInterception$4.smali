.class Lcom/android/server/hips/intercept/UsbInstallInterception$4;
.super Ljava/lang/Object;
.source "UsbInstallInterception.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/hips/intercept/UsbInstallInterception;->showDialog(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/hips/intercept/UsbInstallInterception;


# direct methods
.method constructor <init>(Lcom/android/server/hips/intercept/UsbInstallInterception;)V
    .registers 2
    .param p1, "this$0"  # Lcom/android/server/hips/intercept/UsbInstallInterception;

    .line 522
    iput-object p1, p0, Lcom/android/server/hips/intercept/UsbInstallInterception$4;->this$0:Lcom/android/server/hips/intercept/UsbInstallInterception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 4
    .param p1, "dialog"  # Landroid/content/DialogInterface;

    .line 526
    iget-object v0, p0, Lcom/android/server/hips/intercept/UsbInstallInterception$4;->this$0:Lcom/android/server/hips/intercept/UsbInstallInterception;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/hips/intercept/UsbInstallInterception;->access$502(Lcom/android/server/hips/intercept/UsbInstallInterception;Z)Z

    .line 527
    return-void
.end method
