.class Lcom/android/server/hips/intercept/UsbInstallInterception$2;
.super Ljava/lang/Object;
.source "UsbInstallInterception.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

.field final synthetic val$apkName:Ljava/lang/String;

.field final synthetic val$pkgName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/hips/intercept/UsbInstallInterception;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "this$0"  # Lcom/android/server/hips/intercept/UsbInstallInterception;

    .line 502
    iput-object p1, p0, Lcom/android/server/hips/intercept/UsbInstallInterception$2;->this$0:Lcom/android/server/hips/intercept/UsbInstallInterception;

    iput-object p2, p0, Lcom/android/server/hips/intercept/UsbInstallInterception$2;->val$pkgName:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/hips/intercept/UsbInstallInterception$2;->val$apkName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .param p1, "dialog"  # Landroid/content/DialogInterface;
    .param p2, "which"  # I

    .line 506
    iget-object v0, p0, Lcom/android/server/hips/intercept/UsbInstallInterception$2;->this$0:Lcom/android/server/hips/intercept/UsbInstallInterception;

    iget-object v1, p0, Lcom/android/server/hips/intercept/UsbInstallInterception$2;->val$pkgName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/hips/intercept/UsbInstallInterception$2;->val$apkName:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1, v2, v3}, Lcom/android/server/hips/intercept/UsbInstallInterception;->setUsbInstallItemState(ILjava/lang/String;Ljava/lang/String;I)V

    .line 508
    return-void
.end method
