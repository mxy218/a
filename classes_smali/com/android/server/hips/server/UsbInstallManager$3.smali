.class Lcom/android/server/hips/server/UsbInstallManager$3;
.super Ljava/lang/Object;
.source "UsbInstallManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/hips/server/UsbInstallManager;->showDialog(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/hips/server/UsbInstallManager;

.field final synthetic val$apkName:Ljava/lang/String;

.field final synthetic val$pkgName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/hips/server/UsbInstallManager;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "this$0"  # Lcom/android/server/hips/server/UsbInstallManager;

    .line 280
    iput-object p1, p0, Lcom/android/server/hips/server/UsbInstallManager$3;->this$0:Lcom/android/server/hips/server/UsbInstallManager;

    iput-object p2, p0, Lcom/android/server/hips/server/UsbInstallManager$3;->val$pkgName:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/hips/server/UsbInstallManager$3;->val$apkName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 8
    .param p1, "dialog"  # Landroid/content/DialogInterface;
    .param p2, "which"  # I

    .line 284
    iget-object v0, p0, Lcom/android/server/hips/server/UsbInstallManager$3;->this$0:Lcom/android/server/hips/server/UsbInstallManager;

    iget-object v1, p0, Lcom/android/server/hips/server/UsbInstallManager$3;->val$pkgName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/hips/server/UsbInstallManager$3;->val$apkName:Ljava/lang/String;

    const/4 v3, 0x1

    const/4 v4, -0x1

    invoke-virtual {v0, v3, v1, v2, v4}, Lcom/android/server/hips/server/UsbInstallManager;->setUsbInstallItemState(ILjava/lang/String;Ljava/lang/String;I)V

    .line 286
    return-void
.end method
