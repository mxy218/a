.class Lcom/android/server/hips/server/UsbInstallManager$4;
.super Ljava/lang/Object;
.source "UsbInstallManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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


# direct methods
.method constructor <init>(Lcom/android/server/hips/server/UsbInstallManager;)V
    .registers 2
    .param p1, "this$0"  # Lcom/android/server/hips/server/UsbInstallManager;

    .line 289
    iput-object p1, p0, Lcom/android/server/hips/server/UsbInstallManager$4;->this$0:Lcom/android/server/hips/server/UsbInstallManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 4
    .param p1, "dialog"  # Landroid/content/DialogInterface;

    .line 293
    iget-object v0, p0, Lcom/android/server/hips/server/UsbInstallManager$4;->this$0:Lcom/android/server/hips/server/UsbInstallManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/hips/server/UsbInstallManager;->access$502(Lcom/android/server/hips/server/UsbInstallManager;Z)Z

    .line 294
    iget-object v0, p0, Lcom/android/server/hips/server/UsbInstallManager$4;->this$0:Lcom/android/server/hips/server/UsbInstallManager;

    invoke-static {v0, v1}, Lcom/android/server/hips/server/UsbInstallManager;->access$202(Lcom/android/server/hips/server/UsbInstallManager;I)I

    .line 295
    return-void
.end method
